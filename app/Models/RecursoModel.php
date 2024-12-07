<?php

namespace App\Models;

use CodeIgniter\Model;

class RecursoModel extends Model
{
    protected $table            = 'recursos';
    protected $primaryKey       = 'id';
    protected $returnType       = 'array';
    protected $allowedFields    = ['titulo', 'plataforma_id', 'categoria_id', 'descricao', 'link'];
    
    // Dates
    protected $useTimestamps = false;
    protected $dateFormat    = 'datetime';
    protected $createdField  = 'created_at';
    protected $updatedField  = 'updated_at';

    public function categorias()
    {
        $db = \Config\Database::connect();

        // Lista categorias de Tecnologias para menu lateral
        $builder = $db->table('taxonomias tax')
        ->select('tax.titulo AS categoria_titulo, tax.slug, COUNT(t.id) AS quantidade_itens')
        ->join('tecnologias t', 't.categoria_id = tax.id', 'left')
        ->where('tax.tipo', 'recurso')
        ->groupBy('tax.id, tax.titulo');
        $query = $builder->get();
        return $query->getResultArray();
    }

    //protected $useSoftDeletes   = false;
    //protected $deletedField  = 'deleted_at';
}
