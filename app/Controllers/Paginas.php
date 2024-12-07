<?php

namespace App\Controllers;

use CodeIgniter\Controller;
use CodeIgniter\Database\Query;
use App\Models\TaxonomiaModel;

class Paginas extends BaseController
{
    public function index(): string
    {
        $dados['categoria_atual'] = Null; // Define categoria atual padrão

        // Conecta ao banco de dados
        $db = \Config\Database::connect();

        // TECNOLOGIAS ASSISTIVAS
        // Na mesma consulta:
        // - Busca categorias de TAs (para mostrar 1 de cada categoria)
        // - Busca Top3 mais acessados
        $query = $db->query(
            "(SELECT 
                titulo, 
                slug, 
                imagem, 
                descricao, 
                categoria_titulo, 
                custo_slug, 
                requer_internet_slug, 
                etapas_slugs, 
                acessos, 
                'top3' AS secao
            FROM 
                vw_busca
            ORDER BY 
                acessos DESC
            LIMIT 3)
            UNION
            (SELECT 
                titulo, 
                slug, 
                imagem, 
                descricao, 
                categoria_titulo, 
                custo_slug, 
                requer_internet_slug, 
                etapas_slugs, 
                acessos, 
                'destaques' AS secao
            FROM 
                vw_busca
            WHERE 
                destaque = 1
                AND slug NOT IN (
                    -- Subconsulta para pegar os slugs dos 3 itens mais acessados sem LIMIT dentro de IN
                    SELECT slug
                    FROM ( 
                        SELECT slug
                        FROM vw_busca
                        ORDER BY acessos DESC
                        LIMIT 3
                    ) AS top3_items
                )
            -- Variando os destaques conforme o dia da semana
            ORDER BY 
                CASE 
                    WHEN DAYOFWEEK(CURDATE()) = 1 THEN id -- Domingo: ordena pelo id
                    WHEN DAYOFWEEK(CURDATE()) = 2 THEN titulo  -- Segunda-feira: ordena pelo título
                    WHEN DAYOFWEEK(CURDATE()) = 3 THEN categoria_titulo -- Terça-feira: ordena por categoria
                    WHEN DAYOFWEEK(CURDATE()) = 4 THEN custo_slug  -- Quarta-feira: ordena por custo
                    WHEN DAYOFWEEK(CURDATE()) = 5 THEN requer_internet_slug -- Quinta-feira: ordena por requisito de internet
                    WHEN DAYOFWEEK(CURDATE()) = 6 THEN etapas_slugs -- Sexta-feira: ordena por etapas
                    ELSE acessos -- Sábado: ordena pelos mais acessados
                END 
            -- Mudando a direção da ordenação de acordo com o dia do mês (par ou ímpar)
            , CASE 
                WHEN DAY(CURDATE()) % 2 = 0 THEN 1 -- Dia par: ordem ASC
                ELSE -1                           -- Dia ímpar: ordem DESC
            END
            LIMIT 6)"
        );
        //$query = $query->get();
        $tecnologias = $query->getResultArray();

        // RECURSOS
        // Busca categorias de recursos (para mostrar 1 de cada categoria)
        $subquery = $db->table('recursos t2')
            ->select('MIN(t2.id)')
            ->groupBy('t2.taxonomia_id')
            ->getCompiledSelect();

        // Escolhe entre os recursos, sem repetir categoria
        $builder = $db->table('recursos t1')
            ->select('t1.id, t1.titulo, tax.slug, t1.descricao, tax.titulo AS categoria_titulo')
            ->join('taxonomias tax', 't1.taxonomia_id = tax.id')
            ->where("t1.id IN ($subquery)", null, false)
            ->orderBy('RAND()')
            ->limit(4);

        $query = $builder->get();
        $dados['recursos'] = $query->getResultArray();

        // Lista categorias de Tecnologias para menu lateral
        $model = new TaxonomiaModel();
        $dados['categorias'] = $model->categorias();

        // Define o resumo das etapas de ensino
        foreach ($tecnologias as $chave => $tecnologia)
        {
            $tecnologia['etapas_resumo'] = $model->classificar_etapas($tecnologia['etapas_slugs']);
            $dados['tecnologias'][ $tecnologia['secao'] ][$chave] = $tecnologia;
        }

        // Retorna valores para a view
        return view('index', $dados);
    }

    public function site( $slug = Null )
    {
        $dados['categoria_atual'] = Null; // Define categoria atual padrão

        // Lista categorias de Tecnologias para menu lateral
        $model = new TaxonomiaModel();
        $dados['categorias'] = $model->categorias();

        $dados['slug'] = $slug;

        // Retorna valores para a view
        return view('site', $dados);
    }

}

