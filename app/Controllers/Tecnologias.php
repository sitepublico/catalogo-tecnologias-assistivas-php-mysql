<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use CodeIgniter\HTTP\ResponseInterface;
use CodeIgniter\Database\Query;
use App\Models\TecnologiaModel;
use App\Models\TaxonomiaModel;

class Tecnologias extends BaseController
{
    public function index( $slug = Null )
    {
        // Conectando ao banco de dados
        $db = \Config\Database::connect();
        
        $dados['categoria_atual'] = Null; // Define categoria atual padrão

        // Inicia busca selecionando a view e definindo campos
        $builder = $db->table('vw_busca')->select('titulo, slug, imagem, descricao, categoria_titulo, categoria_slug, custo_slug, requer_internet_slug, etapas_slugs');

        // Se tem SLUG, é página de Categoria
        if( $slug )
        {
            // filtra categoria e define ordem
            $builder->where('categoria_slug', $slug)->orderBy('titulo ASC');
            $builder = $builder->get();
            $dados['tecnologias'] = $builder->getResultArray();

            $dados['categoria_atual'] = $slug;

        }
        // É página inicial de Tecnologias
        else
        {
            // define ordem e limite
            $builder->orderBy('RAND()')->limit(9);
            $builder = $builder->get();
            $dados['tecnologias'] = $builder->getResultArray();        
        }

        // Lista categorias de Tecnologias para menu lateral
        $model = new TaxonomiaModel();
        $dados['categorias'] = $model->categorias();

        // Define o resumo das etapas de ensino
        foreach ($dados['tecnologias'] as $chave => $tecnologia)
        {
            $dados['tecnologias'][$chave]['etapas_resumo'] = $model->classificar_etapas($tecnologia['etapas_slugs']);
        }

        // Retorna valores para a view
        return view('tecnologias/index', $dados);
    }

    public function busca()
    {

        // Conectando ao banco de dados
        $db = \Config\Database::connect();
        
        $dados['categoria_atual'] = Null; // Define categoria atual padrão

        // Inicia busca selecionando a view e definindo campos
        $builder = $db->table('vw_busca')->select('titulo, slug, imagem, descricao, categoria_titulo, custo_slug, requer_internet_slug, etapas_slugs');

        if( !$this->request->getPost('busca') )
        {
            return redirect()->to('/tecnologias');
        }
        
        // Capturando os parâmetros GET
        $busca = $this->request->getPost('busca');

        // Adicionando os buscas dinamicamente
        if (!empty($busca['palavrachave']))
        {
            $palavraChave = $busca['palavrachave'];
            $builder->groupStart()
                ->like('titulo', $palavraChave)
                ->orLike('descricao', $palavraChave)
                ->orLike('orientacao', $palavraChave)
                ->orLike('dicas', $palavraChave)
                ->groupEnd();
        }

        if (!empty($busca['categoria']))
        {
            if ($busca['categoria'] != 'todos')
            {
                $builder->where('categoria_slug', $busca['categoria']);
            }
        }

        if (!empty($busca['etapa']))
        {
            if ($busca['etapa'] != 'todos')
            {
                $builder->orLike('etapas_slugs', $busca['etapa']);
            }
        }

        if (!empty($busca['internet']))
        {
            if ($busca['internet'] != 'todos')
            {
                $builder->where('requer_internet_slug', $busca['internet']);
            }
        }

        if (!empty($busca['custo']))
        {
            if ($busca['custo'] != 'todos')
            {
                $builder->where('custo_slug', $busca['custo']);
            }
        }

        if (!empty($busca['plataforma']))
        {
            if ($busca['plataforma'] != 'todos')
            {
                if ($busca['plataforma'] == 'site')
                {
                    $builder->orLike('plataformas_slugs', 'site');
                    $builder->orLike('plataformas_slugs', 'youtube');
                }
                else
                {
                    $builder->orLike('plataformas_slugs', 'ios');
                    $builder->orLike('plataformas_slugs', 'android');
                }
            }
        }

        // Executando a query
        $builder = $builder->get();
        $dados['tecnologias'] = $builder->getResultArray();
        $dados['categoria_atual'] = 'busca';
        $dados['filtros'] = $busca;
        
        
        // Lista categorias de Tecnologias para menu lateral
        $model = new TaxonomiaModel();
        $dados['categorias'] = $model->categorias();

        // Define o resumo das etapas de ensino
        foreach ($dados['tecnologias'] as $chave => $tecnologia)
        {
            $dados['tecnologias'][$chave]['etapas_resumo'] = $model->classificar_etapas($tecnologia['etapas_slugs']);
        }

        // Retorna valores para a view
        return view('tecnologias/index', $dados);
    }

    public function ver( $slug = Null )
    {
        $dados['categoria_atual'] = Null; // Define categoria atual padrão

        // Conectando ao banco de dados
        $db = \Config\Database::connect();

        // Obtem dados da tecnologia
        $builder = $db->table('tecnologias t')
        ->select('t.*, cat.titulo AS categoria_titulo, cat.slug AS categoria_slug, cat.descricao AS categoria_descricao, cus.titulo AS custo_titulo, cus.slug AS custo_slug, cus.descricao AS custo_descricao, int.titulo AS requer_internet_titulo, int.slug AS requer_internet_slug, int.descricao AS requer_internet_descricao')
        ->join('taxonomias cat', 't.categoria_id = cat.id', 'left')
        ->join('taxonomias cus', 't.custo_id = cus.id', 'left')
        ->join('taxonomias int', 't.requer_internet_id = int.id', 'left')
        ->where('t.slug', $slug);
        $builder = $builder->get();
        $dados['tecnologia'] = $builder->getResultArray();
        $dados['tecnologia'] = isset($dados['tecnologia'][0]) ? $dados['tecnologia'][0] : Null;

        // Obtem os links das tecnologias
        $builder = $db->table('tecnologias_links t_l')
        ->select('t_l.*, cat.titulo AS plataforma, cat.slug AS plataforma_slug')
        ->join('taxonomias cat', 't_l.taxonomia_id = cat.id', 'left')
        ->where('t_l.tecnologia_id', $dados['tecnologia']['id']);
        $builder = $builder->get();
        $dados['links'] = $builder->getResultArray();
        
        // Obtem etapas recomendadas
        $builder = $db->table('tecnologias_etapas t_e')
        ->select('t_e.*, et.titulo AS etapa_titulo, et.slug AS etapa_slug')
        ->join('taxonomias et', 't_e.taxonomia_id = et.id', 'left')
        ->where('t_e.tecnologia_id', $dados['tecnologia']['id']);
        $builder = $builder->get();
        $dados['etapas'] = $builder->getResultArray();

        // Lista categorias de Tecnologias para menu lateral
        $model = new TaxonomiaModel();
        $dados['categorias'] = $model->categorias();

        // Contabiliza acesso para tecnologia
        $model = new TecnologiaModel();
        if ( $model->adiciona_acesso( $dados['tecnologia']['id'] ) )
        {
            // Se incrementou, atualiza valor
            ++$dados['tecnologia']['acessos'];
        }

        $dados['titulo_pagina'] = "Detalhe da Tecnologia";
        return view('tecnologias/ver', $dados);
    }

    public function redirecionar( $id )
    {
        $db = \Config\Database::connect();

        $builder = $db->table('tecnologias_links tl')
        ->select('tl.link')
        ->where('tl.id', $id);

        $builder = $builder->get();
        $link = $builder->getResultArray();

        // Verifica se o link foi encontrado
        if (!$link) {
            throw new PageNotFoundException("Link não encontrado");
        }

        // Atualiza o contador de acessos
        $builder = $db->table('tecnologias_links tl');
        $builder->set('redirecionamentos', 'redirecionamentos+1', FALSE);
        $builder->where('id', $id);
        $builder->update();

        // Redireciona o visitante para o URL de destino
        return redirect()->to($link[0]['link']);
    }

    public function create()
    {
        helper('form');
        return view('pessoas/create');
    }

    public function store()
    {
        helper('uuid');
        helper('form');
        $model = new TecnologiaModel();

        $data = $this->request->getPost();
        $data['uuid'] = uuid_create(); // Gerar UUID

        if ($model->insert($data)) {
            return redirect()->to('/pessoas');
        }

        return view('pessoas/create', ['errors' => $model->errors()]);
    }

    public function edit($id)
    {
        helper('form');
        $model = new TecnologiaModel();
        $data['pessoa'] = $model->find($id);

        return view('pessoas/edit', $data);
    }

    public function update($id)
    {
        helper('form');
        $model = new TecnologiaModel();
        $data = $this->request->getPost();

        if ($model->update($id, $data)) {
            return redirect()->to('/pessoas');
        }

        return view('pessoas/edit', ['errors' => $model->errors(), 'pessoa' => $model->find($id)]);
    }

    public function delete($id)
    {
        $model = new TecnologiaModel();
        $model->delete($id);

        return redirect()->to('/pessoas');
    }
}
