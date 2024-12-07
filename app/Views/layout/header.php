<?php
  // Define agente e dispositivo
  $request = \Config\Services::request();
  $agent = $request->getUserAgent();
  
  // Para navegação
  $uri = service('uri'); // Obtém a instância da URI atual
  $controller_atual = $uri->getSegment(1); // Obtém o primeiro segmento da URI, que geralmente é o nome do controller.
?>
<!-- https://glampinghub.com/ -->
<!-- https://www.earbetterwaxremoval.co.uk/book-online -->
<!-- 640 × 360 (nHD) -->
<!doctype html>
<html lang="pt-br">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Tecnologias Assistivas - <?= !empty($controller_atual) ? ucfirst($controller_atual) : 'Início' ?></title>

        <!-- Bootstrap -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

        <!-- Google Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Nunito:ital,wght@0,200..1000;1,200..1000&display=swap" rel="stylesheet">

        <style>
          body {
            font-family: "Nunito", sans-serif;
          }
          .list-group-item-action:focus, .list-group-item-action:hover {
              background-color: #dee2e6;
          }
          .card {
            background-color: #f8f9fa;
          }
          .card:hover {
            background-color: #dee2e6;
            border-color: #ccc;
          }
          .badge {
            font-size: 10px;
          }
          .list-group-item+.list-group-item.active:hover {
            background-color: #212529;
          }
        </style>
    
    </head>
    <body>

    <header id="topo" class="mb-5">
        <div class="text-bg-dark border-bottom">
            <nav class="navbar navbar-expand-sm bg-body-tertiary justify-content-end flex-grow-1 pe-3" aria-label="Barra de navegação superior">
                <div class="container <?= $agent->isMobile() ? 'pe-0' : '' ?>">
                    <a class="navbar-brand" href="<?= base_url() ?>">
                        <img src="<?= base_url('public/img/logo.png') ?>" alt="Tenologias Assisitvas para Surdos" class="img-fluid">
                    </a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsuperior" aria-controls="navbarsuperior" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarsuperior">
                      <ul class="navbar-nav justify-content-end flex-grow-1">
                        
                          <?php

                            // Inicio
                            if ( $agent->isMobile() )
                            {
                              echo '<li class="nav-item pt-3">';
                              echo '<a class="text-body text-decoration-none '. ($controller_atual == '' ? 'fw-bold active' : '' ) .'aria-current="page" href="'. base_url() .'">Início</a>';
                              echo '</li>';
                            }
                            else
                            {
                              echo '<li class="nav-item pt-2 pe-3">';
                              echo '<a class="'. ($controller_atual == '' ? 'link-offset-3 link-offset-3-hover active' : 'link-dark link-offset-3 link-offset-3-hover link-underline link-underline-opacity-0 link-underline-opacity-75-hover' ) .'aria-current="page" href="'. base_url() .'">Início</a>';
                              echo '</li>';
                            }

                            // Tecnologias
                            if ( $agent->isMobile() )
                            {
                              echo '<li class="nav-item pt-3">';
                              echo '<a class="text-body text-decoration-none '. ($controller_atual == 'tecnologias' ? 'fw-bold active' : '' ) .'aria-current="page" href="'. base_url('tecnologias/') .'">Tecnologias</a>';
                              echo '</li>';
                            }
                            else
                            {
                              echo '<li class="nav-item pt-2 pe-3">';
                              echo '<a class="'. ($controller_atual == 'tecnologias' ? 'link-offset-3 link-offset-3-hover active' : 'link-dark link-offset-3 link-offset-3-hover link-underline link-underline-opacity-0 link-underline-opacity-75-hover' ) .'aria-current="page" href="'. base_url('tecnologias/') .'">Tecnologias</a>';
                              echo '</li>';
                            }

                            // Recursos
                            if ( $agent->isMobile() )
                            {
                              echo '<li class="nav-item pt-3">';
                              echo '<a class="text-body text-decoration-none '. ($controller_atual == 'recursos' ? 'fw-bold active' : '' ) .'aria-current="page" href="'. base_url('recursos/') .'">Recursos</a>';
                              echo '</li>';
                            }
                            else
                            {
                              echo '<li class="nav-item pt-2 pe-3">';
                              echo '<a class="'. ($controller_atual == 'recursos' ? 'link-offset-3 link-offset-3-hover active' : 'link-dark link-offset-3 link-offset-3-hover link-underline link-underline-opacity-0 link-underline-opacity-75-hover' ) .'aria-current="page" href="'. base_url('recursos/') .'">Recursos</a>';
                              echo '</li>';
                            }
                          ?>

                        <li class="nav-item <?= $agent->isMobile() ? 'pt-3' : '' ?>">
                            <a class="btn <?= ($controller_atual == 'contato') ? 'btn-primary active' : 'btn-outline-primary' ?>" href="<?= base_url('contato/indicacao/tecnologia') ?>">Indicar Tecnologia</a>                           
                        </li>
                      </ul>
                        
                    </div>
                </div>
            </nav>
        </div>

        <!-- Formulário -->
        <?php if (current_url() !== base_url()): ?>
            <div class="px-3 py-2 border-bottom mb-3">
              <div class="container d-flex flex-wrap justify-content-center">

                <form class="row g-2 align-items-center" id="busca" method="POST" action="<?= base_url('tecnologias/busca') ?>">
                    <div class="col-md-4">
                        <div class="form-floating">
                            <input type="text" class="form-control" id="busca[palavrachave]" name="busca[palavrachave]" placeholder="Palavra chave">
                            <label for="busca[palavrachave]">Palavra chave</label>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-floating">
                            <select class="form-select" id="busca[categoria]" name="busca[categoria]" aria-label="Categoria">
                                <option value="" selected>Escolha...</option>
                                <?php 
                                    foreach( $categorias['tecnologia'] as $categoria):
                                        echo '<option value="'. $categoria['slug'] .'">'. $categoria['titulo'] .'</option>';
                                    endforeach;
                                ?>
                            </select>
                            <label for="busca[categoria]">Categoria</label>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-floating">
                            <select class="form-select" id="busca[etapa]" name="busca[etapa]" aria-label="Etapa">
                                <option value="" selected>Escolha...</option>
                                <?php 
                                    foreach( $categorias['etapa'] as $categoria):
                                        echo '<option value="'. $categoria['slug'] .'">'. $categoria['titulo'] .'</option>';
                                    endforeach;
                                ?>
                            </select>
                            <label for="busca[etapa]">Etapa</label>
                        </div>
                    </div>

                    <div class="col-md-2">
                        <?= csrf_field() ?>
                        <button type="submit" class="btn btn-primary py-3 w-100"><i class="bi bi-search"></i> Buscar</button>
                    </div>

                    <div class="col-md-1"></div>
                    <!-- <div class="col-md-9">
                        <p class="m-0 text-center">
                            <a data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
                                <small>Clique para mais opções de busca</small>
                            </a>
                        </p>
                        <div class="collapse" id="collapseExample">
                            <div class="card card-body bg-light">
                                <div class="row">
                                    <div class="col-md-4 pb-3">
                                        <p class="fw-bold text-light-emphasis">Custo</p>
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" value="gratis" name="busca[custo]" id="busca[custo][0]">
                                            <label class="form-check-label" for="busca[custo][0]">
                                                Grátis
                                            </label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" value="freemium" name="busca[custo]" id="busca[custo][1]">
                                            <label class="form-check-label" for="busca[custo][1]">
                                                Freemium
                                            </label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" value="pago" name="busca[custo]" id="busca[custo][2]">
                                            <label class="form-check-label" for="busca[custo][2]">
                                                Pago
                                            </label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" value="todos" name="busca[custo]" id="busca[custo][3]">
                                            <label class="form-check-label" for="busca[custo][3]">
                                                Todos
                                            </label>
                                        </div>
                                    </div>
                                    <div class="col-md-4 pb-3">
                                        <p class="fw-bold text-light-emphasis">Requer Internet?</p>
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" value="sim" name="busca[internet]" id="busca[internet][0]">
                                            <label class="form-check-label" for="busca[internet][0]">
                                                Sim
                                            </label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" value="nao" name="busca[internet]" id="busca[internet][1]">
                                            <label class="form-check-label" for="busca[internet][1]">
                                                Não
                                            </label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" value="todos" name="busca[internet]" id="busca[internet][2]">
                                            <label class="form-check-label" for="busca[internet][2]">
                                                Todos
                                            </label>
                                        </div>
                                    </div>
                                    <div class="col-md-4 pb-3">
                                        <p class="fw-bold text-light-emphasis">Plataforma</p>
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" value="aplicativo" name="busca[plataforma]" id="busca[plataforma][0]">
                                            <label class="form-check-label" for="busca[plataforma][0]">
                                                Aplicativo
                                            </label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" value="site" name="busca[plataforma]" id="busca[plataforma][1]">
                                            <label class="form-check-label" for="busca[plataforma][1]">
                                                Site
                                            </label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" value="todos" name="busca[plataforma]" id="busca[plataforma][2]">
                                            <label class="form-check-label" for="busca[plataforma][2]">
                                                Todos
                                            </label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div> -->
     
                </form>

              </div>
            </div>
        <?php endif; ?>
  </header>