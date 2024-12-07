<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use CodeIgniter\HTTP\ResponseInterface;
use CodeIgniter\Database\Query;
use App\Models\RecursoModel;
use App\Models\TaxonomiaModel;


class Recursos extends BaseController
{
    public function index( $slug = Null )
    {
        // Conectando ao banco de dados
        $db = \Config\Database::connect();
        
        $dados['categoria_atual'] = Null; // Define categoria atual padrão
        
        // Monta busca
        $builder = $db->table('recursos r')
        ->select('r.*, cat.id AS categoria_id, cat.titulo AS categoria_titulo, cat.slug AS categoria_slug, cat.descricao AS categoria_descricao, pla.titulo AS plataforma_titulo, pla.slug AS plataforma_slug, pla.descricao AS plataforma_descricao')
        ->join('taxonomias cat', 'r.taxonomia_id = cat.id', 'left')
        ->join('taxonomias pla', 'r.plataforma_id = pla.id', 'left');
         
        // Se NÃO tem categoria ($slug)
        if (is_null($slug))
        {
            // lista aleatoriamente
            $builder->orderBy('RAND()')->limit(10);
        }
        else
        {
            // filtra pela categoria
            $builder->where('cat.slug', $slug);
            $dados['categoria_atual'] = $slug;
        }
        
        $builder = $builder->get();
        $dados['recursos'] = $builder->getResultArray();
        
        // Lista categorias para menu lateral
        $model = new TaxonomiaModel();
        $dados['categorias'] = $model->categorias();
        
        return view('recursos/index', $dados);
    }

    public function redirecionar( $id )
    {
        $db = \Config\Database::connect();

        $builder = $db->table('recursos r')
        ->select('r.link')
        ->where('r.id', $id);

        $builder = $builder->get();
        $link = $builder->getResultArray();

        // Verifica se o link foi encontrado
        if (!$link) {
            throw new PageNotFoundException("Link não encontrado");
        }

        // Atualiza o contador de acessos
        $builder = $db->table('recursos r');
        $builder->set('redirecionamentos', 'redirecionamentos+1', FALSE);
        $builder->where('id', $id);
        $builder->update();

        // Redireciona o visitante para o URL de destino
        return redirect()->to($link[0]['link']);
    }
}
