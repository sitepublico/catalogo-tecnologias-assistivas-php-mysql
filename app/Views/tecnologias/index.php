<?= $this->include('layout/header') ?>
    <main class="container">

        <!-- tecnologias assistivas -->
        
        <section class="row g-3 tecnologias">

            <!-- barra lateral -->
            <aside class="col-md-3">
                <?= $this->include('layout/menu_lateral') ?>
            </aside>

            <!-- conteudo -->
            <div class="offset-md-1 col-md-8 order-first order-md-2">
                
                <!-- tecnologias assistivas -->
                <div class="row g-3">
                    
                    <div class="col-12">
                        <?php 

                            $detalhes_categoria_atual = Null; // Se for categoria, vai receber a descrição da categoria.
                            if( $categoria_atual == 'busca' )
                            {

                                $resultados_para = Null;
                                echo '<h2 class="h3 fw-bold">Resultados da Busca</h2>';


                                // Mostra o que foi buscado
                                foreach ($filtros as $filtro => $opcao)
                                {

                                    if ( !empty($opcao) && $opcao != 'todos')
                                    {
                                        
                                        // se o filtro for 'categoria' ou 'etapa', busca titulo na taxonomia
                                        if ( $filtro == 'categoria' )
                                        {
                                            foreach($categorias['tecnologia'] as $categoria)
                                            {
                                                //echo ($categoria['slug'] == $opcao) ? $categoria['titulo'] : '';
                                                if ($categoria['slug'] == $opcao) 
                                                {
                                                    $resultados_para[] = 'categoria "'. $categoria['titulo'] .'"';
                                                }
                                            }
                                        }
                                        // se o filtro for 'categoria' ou 'etapa', busca titulo na taxonomia
                                        elseif ( $filtro == 'etapa' )
                                        {
                                            foreach($categorias['etapa'] as $categoria)
                                            {
                                                //echo ($categoria['slug'] == $opcao) ? $categoria['titulo'] : '';
                                                if ($categoria['slug'] == $opcao) 
                                                {
                                                    $resultados_para[] = $categoria['titulo'];
                                                }
                                            }
                                        }
                                        // senao, apenas trata a string
                                        else
                                        {
                                            switch ($filtro) 
                                            {
                                                case 'palavrachave':
                                                    $resultados_para[] = '"'. $opcao .'"';
                                                    break;
                                                case 'custo':
                                                    $resultados_para[] = ($opcao == 'gratis') ? 'Grátis' : ucfirst($opcao) ;
                                                    break;
                                                case 'internet':
                                                    $resultados_para[] = ($opcao == 'nao') ? 'Não requer internet' : 'Requer internet' ;
                                                    break;
                                                case 'plataforma':
                                                    $resultados_para[] = 'plataforma '. ucfirst($opcao);
                                                    break;
                                                default:
                                                    // echo $opcao;
                                                    break;
                                            }
                                        }
                                    }
                                }

                                echo (is_null($resultados_para)) ? '' : '<p class="text-secondary fst-italic"><small>Resultados para '.  rtrim(implode(", ",$resultados_para), ",") .'</small></p>';
                                    
                                
                                    //$filtros = array_values($filtros);
                                    //echo $filtros != 'todos' ? 'Resultados para <em>'. $filtros[0] .'</em>' : '';
                                
                                

                            }
                            elseif ( !is_null($categoria_atual) )
                            {
                                echo '<h2 class="h3 fw-bold">'. $tecnologias[0]['categoria_titulo'] .'</h2>';
                                foreach( $categorias['tecnologia'] as $categoria)
                                {
                                    if ($categoria['slug'] == $tecnologias[0]['categoria_slug'])
                                        $detalhes_categoria_atual = $categoria;
                                }
                            }
                            else
                            {
                                echo '<h2 class="h3 fw-bold">Tecnologias Assistivas</h2>';
                            }
                        ?>
                        
                    </div>


                    <?php if($tecnologias): ?>
                        <!-- se busca retornou tecnologias -->
                        <?php foreach($tecnologias as $item): ?>
                            <article class="col-md-4">
                                <div class="card card-body border-0 position-relative">
                                    <a href="<?= base_url('tecnologias/ver/'. $item['slug']) ?>" alt="<?= $item['titulo'] ?>" title="<?= $item['titulo'] ?>" class="stretched-link">
                                        <img src="<?= base_url('public/img/tas/'. $item['slug'] .'.jpg') ?>" alt="<?= $item['titulo'] ?>" class="img-fluid rounded mb-2">
                                    </a>
                                    <h5 class="card-title fw-bold m-0"><?= $item['titulo'] ?></h5>
                                    <p class="mb-2">
                                        <span class="badge text-body-emphasis border-0 text-uppercase"><i class="bi bi-coin"></i> <?= $item['custo_slug'] ?></span>
                                        <span class="badge text-body-emphasis border-0 text-uppercase"><i class="bi bi-wifi-2"></i> <?= $item['requer_internet_slug'] == 'nao' ? 'NÃO USA INTERNET' : 'USA INTERNET' ?></span>
                                    </p>                                
                                    <p class="mb-2">
                                        <?php
                                            $item['descricao'] = str_replace(",",".",$item['descricao']);
                                            $lines=explode(". ", $item['descricao']);
                                            echo $lines['0'] .".";
                                        ?>
                                    </p>
                                    <div class="card-footer border-0 p-0 bg-transparent">
                                        <?= '<span class="badge text-light-emphasis border border-dark-subtle text-uppercase">'. $item['etapas_resumo'] .'</span>' ?>
                                    </div>
                                </div>
                            </article>

                        <?php endforeach; ?>

                    <?php else: var_dump($filtros); ?>

                        <!-- busca retornou vazia -->
                         <article class="my-5">
                            <h5>Nenhum resultado encontrado!</h5>
                            <p class="lead">Sua busca não retornou resultados. Por favor, tente novamente!</p>
                         </article>

                    <?php endif; ?>
                </div>

                <!-- texto sobre a categoria (páginas de categorias) -->
                <?php if ($detalhes_categoria_atual): ?>
                    <hr class="my-5 border-dark-subtle">
                    <section>
                        <div class="row">
                            <div class="col-12">
                                <h2 class="h3 fw-bold">Sobre a categoria <?= $detalhes_categoria_atual['titulo'] ?></h2>
                                <p class="lead"><?= $detalhes_categoria_atual['descricao'] ?></p>
                            </div>
                        </div>
                    </section>
                <?php endif; ?>

            </div>
        </section>

        

    </main>
    <script>
        const tooltipTriggerList = document.querySelectorAll('[data-bs-toggle="tooltip"]')
        const tooltipList = [...tooltipTriggerList].map(tooltipTriggerEl => new bootstrap.Tooltip(tooltipTriggerEl))
    </script>
<?= $this->include('layout/footer') ?>