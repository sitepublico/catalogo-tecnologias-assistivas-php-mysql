<?php

namespace App\Models;

use CodeIgniter\Model;
use CodeIgniter\Database\Query;

class TecnologiaModel extends Model
{
    protected $table            = 'tecnologias';
    protected $primaryKey       = 'id';
    protected $returnType       = 'array';
    protected $allowedFields    = ['titulo', 'categoria_id', 'custo_id', 'requer_internet_id', 'autor', 'autor_contato', 'slug', 'imagem', 'descricao', 'orientacao', 'dicas', 'etapas_justificativa', 'indicado_por', 'acessos'];
    
    // Dates
    protected $useTimestamps = false;
    protected $dateFormat    = 'datetime';
    protected $createdField  = 'created_at';
    protected $updatedField  = 'updated_at';

    //protected $useSoftDeletes   = false;
    //protected $deletedField  = 'deleted_at';

    public function adiciona_acesso( $id )
    {
        $db = \Config\Database::connect();

        // Incrementa a coluna 'acessos' em 1
        $builder = $db->table('tecnologias');
        $builder->set('acessos', 'acessos+1', FALSE);
        $builder->where('id', $id);

        return $builder->update();
    }

}
