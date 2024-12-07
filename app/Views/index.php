<?= $this->include('layout/header') ?>
    <main class="container">

        <!-- destaque -->
        <section class="destaque row my-4 pt-4">
            <div class="col-12">
                <div class="row">
                    <div class="offset-md-2 col-md-8 text-center mb-4">
                        <!-- <h1 class="display-3">Tecnologias que Transformam o Ensino para Surdos</h1>
                        <p class="lead">Contribua para uma educação mais acessível e inclusiva!</p> -->
                        <h1 class="display-3 fw-bold lh-1 mb-4">Descubra Tecnologias para um Ensino Mais Inclusivo</h1>
                        <p class="lead">Encontre tecnologias assistivas que promovem a acessibilidade linguística para estudantes surdos em sala de aula, facilitando a comunicação e o aprendizado. Explore o catálogo, conheça os recursos e colabore sugerindo novas tecnologias!</p>
                    </div>
                </div>
            </div>
            <div class="offset-md-1 col-md-10">
                <div class="card card-body bg-light shadow border border-0 mb-5">
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

                        <div class="col-md-12">
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
                        </div>
                    </form>
                </div>
            </div>
        </section>

        <!-- tecnologias assistivas -->
        
        <section class="row g-3 tecnologias">

            <!-- barra lateral -->
            <aside class="col-md-3">
                <?= $this->include('layout/menu_lateral') ?>
            </aside>

            <!-- conteudo -->
            <div class="offset-md-1 col-md-8 order-first order-md-2">
                
                <!-- tecnologias assistivas -->
                <div class="row g-4">
                    <div class="col-12">
                        <h2 class="h3 fw-bold">Destaques</h2>
                    </div>
                    <?php foreach($tecnologias['destaques'] as $item): ?>

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

                    <div class="col-12">
                        <h2 class="h3 fw-bold mt-4">Mais Acessadas do Site</h2>
                    </div>
                    <?php foreach($tecnologias['top3'] as $item): ?>

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
                </div>
                

                <hr class="my-5 border-dark-subtle">

                <!-- recursos -->
                <div class="row g-3">
                    <div class="col-12">
                        <h2 class="h3 fw-bold">Recursos Pedagógicos</h2>
                    </div>
                    <?php foreach($recursos as $item): ?>
                        <article class="col-md-6">
                            <div class="card card-body border-0  position-relative">
                                <a href="<?= base_url('recursos/redirecionar/'. $item['id']) ?>" class="text-decoration-none link-dark stretched-link">
                                    <h5 class="card-title fw-bold m-0"><?= $item['titulo'] ?></h5>
                                </a>
                                <?php
                                    $lines=explode(". ", $item['descricao']);
                                    echo '<p class="my-2">'. $lines['0'] .'</p>' ;
                                ?>
                                <div class="card-footer border-0 p-0 bg-transparent">
                                    <?= '<span class="badge text-light-emphasis border border-dark-subtle text-uppercase">'. $item['categoria_titulo'] .'</span></li>' ?>
                                </div>
                            </div>
                        </article>
                    <?php endforeach; ?>
                </div>

            </div>
        </section>

    </main>
<?= $this->include('layout/footer') ?>