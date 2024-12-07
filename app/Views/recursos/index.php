<?= $this->include('layout/header') ?>
    <main class="container">

        <!-- recursos -->

        <section class="row g-3 recursos">

            <!-- barra lateral -->
            <aside class="col-md-3">
                <?= $this->include('layout/menu_lateral') ?>
            </aside>

            <!-- conteudo -->
            <div class="offset-md-1 col-md-8 order-first order-md-2">
                
                <!-- recursos -->
                <div class="row g-3">
                    
                    <div class="col-12">
                        <h2 class="h3 fw-bold"><?= is_null($categoria_atual) ? 'Recursos' : $recursos[0]['categoria_titulo'] ?></h2>
                    </div>

                    <?php foreach($recursos as $item): ?>
                        <article class="col-md-6">
                            <div class="card card-body border-0 position-relative">
                                <a href="<?= base_url('recursos/redirecionar/'. $item['id']) ?>" class="text-decoration-none link-dark stretched-link">
                                    <h5 class="card-title fw-bold m-0"><?= $item['titulo'] ?></h5>
                                </a>
                                <?php
                                    $lines=explode(". ", $item['descricao']);
                                    echo '<p class="my-2">'. $lines['0'] .'</p>' ;
                                ?>
                                <div class="card-footer border-0 p-0 bg-transparent">
                                    <?= '<span class="badge text-light-emphasis border border-dark-subtle text-uppercase">'. $item['categoria_titulo'] .'</span>' ?>
                                </div>
                            </div>
                        </article>
                    <?php endforeach; ?>
                </div>

                <hr class="mt-5">
                <ul>
                    <li class="text-secondary fs-small">
                        Tem alguma correção (ou complemento) sobre o conteúdo desta página? <a class="text-danger" href="<?= base_url('contato/correcao/recurso/'. (is_null($categoria_atual) ? '0' : $item['categoria_id'])) ?>">Sugira uma correção!</a>
                    </li>
                    <li class="text-secondary fs-small">
                        Conhece algum recurso que não está no site? <a href="<?= base_url('contato/indicacao/recurso') ?>">Indique pra gente!</a>
                    </li>
                </ul>
            </div>
        </section>
        
    </main>
<?= $this->include('layout/footer') ?>