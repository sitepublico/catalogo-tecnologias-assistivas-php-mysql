<?php

namespace App\Models;

use CodeIgniter\Model;

// Model criado para carregar categorias e outros itens dinamicos do layout (principalmente os que se repetem)
class TaxonomiaModel extends Model
{
    public function categorias( $filtro = [] )
    {
        $db = \Config\Database::connect();

        // Lista categorias de Tecnologias e Recursos para menu lateral
        $builder = $db->table('taxonomias tax')
            ->select('tax.titulo, tax.slug, tax.tipo, tax.descricao')
            ->orderBy('tax.titulo ASC');
        
        // Se recebeu categorias de filtro, aplica na consulta
        if ( !empty($filtro) )
        {
            $builder->whereIn('tax.tipo', $tipos);
        }

        $query = $builder->get();
        $resultados = $query->getResultArray();
        
        // Organiza o resultado usando as categorias como chave
        $categorias = [];
        foreach( $resultados as $resultado )
        {
            $categorias[ $resultado['tipo'] ][] = $resultado;
        }

        return $categorias;
    }

    public function classificar_etapas( $etapas )
    {
        // Ordem fixa das etapas de ensino
        $ordem_etapas = [
            'educacao-infantil',
            'ensino-fundamental-anos-iniciais',
            'ensino-fundamental-anos-finais',
            'ensino-medio',
            'ensino-superior',
            'eja'
        ];

        // Separar a combinação fornecida em um array e remover espaços
        $combinacao_array = array_map('trim', explode(';', $etapas));

        // Verificar se todas as etapas fornecidas são válidas
        foreach ($combinacao_array as $etapa) {
            if (!in_array($etapa, $ordem_etapas)) {
                return 'Etapa desconhecida ou inválida: ' . $etapa;
            }
        }

        // Caso tenha apenas uma etapa
        if (count($combinacao_array) === 1) {
            switch ($combinacao_array[0]) {
                case 'educacao-infantil':
                    return 'Educação Infantil';
                case 'ensino-fundamental-anos-iniciais':
                    return 'Fundamental I';
                case 'ensino-fundamental-anos-finais':
                    return 'Fundamental II';
                case 'ensino-medio':
                    return 'Ensino Médio';
                case 'ensino-superior':
                    return 'Ensino Superior';
                case 'eja':
                    return 'EJA';
                default:
                    return $etapas;
            }
        }

        // Ordenar a combinação de acordo com a ordem predefinida
        usort($combinacao_array, function ($a, $b) use ($ordem_etapas) {
            return array_search($a, $ordem_etapas) - array_search($b, $ordem_etapas);
        });

        // Identificar o primeiro e o último item na combinação ordenada
        $primeira_etapa = $combinacao_array[0];
        $ultima_etapa = end($combinacao_array);

        // Definir classificações dinâmicas baseadas na sequência ordenada das etapas
        if ($primeira_etapa === 'educacao-infantil' && $ultima_etapa === 'ensino-superior') {
            return 'Até Ensino Superior';
        } elseif ($primeira_etapa === 'educacao-infantil' && $ultima_etapa === 'eja') {
            return 'Até Fundamental II e EJA';
        } elseif ($primeira_etapa === 'ensino-fundamental-anos-iniciais' && $ultima_etapa === 'eja') {
            return 'Fundamental I até EJA';
        } elseif ($primeira_etapa === 'ensino-fundamental-anos-iniciais' && $ultima_etapa === 'ensino-superior') {
            return 'Fundamental I até Superior';
        } elseif ($primeira_etapa === 'ensino-fundamental-anos-finais' && $ultima_etapa === 'eja') {
            return 'Fundamental II até EJA';
        } elseif ($primeira_etapa === 'ensino-fundamental-anos-finais' && $ultima_etapa === 'ensino-superior') {
            return 'Fundamental II até Superior';
        } elseif ($primeira_etapa === 'ensino-medio' && $ultima_etapa === 'ensino-superior') {
            return 'Médio e Superior';
        } elseif ($primeira_etapa === 'ensino-medio' && $ultima_etapa === 'eja') {
            return 'Médio, EJA e Superior';
        } elseif ($primeira_etapa === 'educacao-infantil' && $ultima_etapa === 'ensino-medio') {
            return 'Até Ensino Médio';
        } elseif (count($combinacao_array) === 2 && $primeira_etapa === 'ensino-fundamental-anos-iniciais' && $ultima_etapa === 'ensino-fundamental-anos-finais') {
            return 'Fundamental I e II';
        } 
        // Novo caso para "educacao-infantil" até "ensino-fundamental-anos-finais"
        elseif ($primeira_etapa === 'educacao-infantil' && $ultima_etapa === 'ensino-fundamental-anos-finais') {
            return 'Até Fundamental II';
        } 
        // Novo caso para "educacao-infantil" até "ensino-fundamental-anos-iniciais"
        elseif ($primeira_etapa === 'educacao-infantil' && $ultima_etapa === 'ensino-fundamental-anos-iniciais') {
            return 'Infantil e Fundamental I';
        }

        // Caso não se encaixe em uma das classificações padrões
        return $etapas;
    }


}
