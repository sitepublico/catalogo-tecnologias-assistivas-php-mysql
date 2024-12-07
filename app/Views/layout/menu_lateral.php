<p class="ps-3 fw-bold">Tecnologias Assistivas</p>
<div class="list-group list-group-flush mb-3">
    <?php 
        foreach($categorias['tecnologia'] as $categoria):
            
            if ($categoria['slug'] == $categoria_atual):
                echo '<a class="list-group-item rounded-pill border-0 list-group-item-action active" aria-current="true" href="'. base_url('tecnologias/'. $categoria['slug']) .'">'. $categoria['titulo'] .'</a>';
                $categoria_atual = $categoria['titulo'];
            else:
                echo '<a class="list-group-item rounded-pill border-0 list-group-item-action" aria-current="true" href="'. base_url('tecnologias/'. $categoria['slug']) .'">'. $categoria['titulo'] .'</a>';
            endif;

        endforeach;
    ?>
</div>

<hr class="ps-3 my-4 border-dark-subtle">

<p class="ps-3 fw-bold">Recursos Pedagógicos</p>
<div class="list-group list-group-flush mb-3">
    <?php 
        foreach($categorias['recurso'] as $categoria): 
            
            if ($categoria['slug'] == $categoria_atual):
                echo '<a class="list-group-item rounded-pill border-0 list-group-item-action active" aria-current="true" href="'. base_url('recursos/'. $categoria['slug']) .'">'. $categoria['titulo'] .'</a>';
                $categoria_atual = $categoria['titulo'];
            else:
                echo '<a class="list-group-item rounded-pill border-0 list-group-item-action" aria-current="true" href="'. base_url('recursos/'. $categoria['slug']) .'">'. $categoria['titulo'] .'</a>';
            endif;

        endforeach; 
    ?>
</div>