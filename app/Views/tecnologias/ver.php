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
                <article>
                    <h3 class="display-5 mb-4"><?= $tecnologia['titulo'] ?></h3>
                    <div class="row w-100 text-secondary">
                        <div class="col-md-auto">
                            <a class="text-decoration-none" href="<?= base_url('tecnologias/'. $tecnologia['categoria_slug']) ?>"><i class="bi bi-bookmark"></i> <?= $tecnologia['categoria_titulo'] ?></a> <a  class="text-decoration-none"href="#" data-bs-toggle="popover" data-bs-title="O que significa isso?" data-bs-content="<?= $tecnologia['categoria_descricao'] ?>"><i class="bi bi-question-circle"></i></a>
                        </div>
                        <div class="col-md-auto">
                            <i class="bi bi-cash-coin"></i> <?= $tecnologia['custo_titulo'] ?> <a class="text-decoration-none" href="#" data-bs-toggle="popover" data-bs-title="O que significa isso?" data-bs-content="<?= $tecnologia['custo_descricao'] ?>"><i class="bi bi-question-circle"></i></a>
                        </div>
                        <div class="col-md-auto">
                            <i class="bi bi-wifi-2"></i> <?= $tecnologia['requer_internet_titulo'] ?> <a class="text-decoration-none" href="#" data-bs-toggle="popover" data-bs-title="O que significa isso?" data-bs-content="<?= $tecnologia['requer_internet_descricao'] ?>"><i class="bi bi-question-circle"></i></a>
                        </div>
                        <div class="col-md-auto">
                            <i class="bi bi-eye"></i> <?= $tecnologia['acessos'] ?> acessos
                        </div>
                    </div>
                    
                    <hr>
                    <figure>
                        <img src="<?= base_url('public/img/tas/'. $tecnologia['slug'] .'.jpg') ?>" alt="<?= $tecnologia['titulo'] ?>" class="img-fluid w-100 rounded">
                    </figure>
                    
                    <h3 class="fw-bold mt-4">Descrição</h3>
                    <p class="lead"><?= $tecnologia['descricao'] ?></p>

                    <h3 class="fw-bold mt-4">Orientação</h3>
                    <p class="lead"><?= $tecnologia['orientacao'] ?></p>
                    
                    <h3 class="fw-bold mt-4">Etapas</h3> 
                    <ul>
                        <?php foreach($etapas as $etapa): ?>
                            <li><?= $etapa['etapa_titulo'] ?></li>
                        <?php endforeach; ?>
                    </ul>

                    <button class="btn btn-sm btn-link" type="button" data-bs-toggle="collapse" data-bs-target="#collapse-etapas" aria-expanded="false" aria-controls="collapse-etapas">
                        Entenda a escolha das etapas
                    </button>
                    <div class="collapse" id="collapse-etapas">
                        <div class="card card-body">
                            <?= $tecnologia['etapas_justificativa'] ?>
                        </div>
                    </div>
                      
                    <h3 class="fw-bold mt-4">Dicas</h3>
                    <p class="lead"><?= $tecnologia['dicas'] ?></p>
                    
                    <h3 class="mt-4 fw-bold mt-4">Baixar</h3>
                    <ul class="list-inline">
                        <?php foreach($links as $link): ?>

                            <li class="list-inline-item me-2">
                                <a href="<?= base_url('tecnologias/redirecionar/'. $link['id']) ?>" class="btn btn-primary">
                                    <?php 
                                        switch ($link['plataforma_slug'])
                                        {
                                            case 'android':
                                                echo '<i class="bi bi-android2"></i> ';
                                                break;
                                            case 'iphone':
                                            case 'mac':
                                            case 'ios':
                                                echo '<i class="bi bi-apple"></i> ';
                                                break;
                                            
                                            case 'windows':
                                            case 'pc':
                                                echo '<i class="bi bi-windows"></i> ';
                                                break;

                                            case 'linux':
                                                echo '<i class="bi bi-laptop"></i> ';
                                                break;
                                            
                                            case 'youtube':
                                                echo '<i class="bi bi-youtube"></i> ';
                                                break;
                                            
                                            case 'site':
                                            case 'web':
                                                echo '<i class="bi bi-browser-chrome"></i> ';
                                                break;
                                            
                                            default:
                                                echo '<i class="bi bi-link-45deg"></i> ';
                                                break;
                                        }
                                    ?>
                                    <?= $link['plataforma'] ?>
                                </a>
                            </li>
                        <?php endforeach; ?>
                        <li class="py-5">
                            <p class="lead fw-bold">Compartilhe esta página!</p>
                            <div class="sharethis-inline-share-buttons"></div>
                        </li>
                    </ul>

                    <hr class="mt-5">
                    <ul>
                        <li class="text-secondary fs-small">
                            <i class="bi bi-robot"></i> Esta página possui texto gerado por inteligência artificial, e pode conter imprecisões. 
                        </li>
                        <li class="text-secondary fs-small">
                            Tem alguma correção (ou complemento) sobre este conteúdo? <a class="text-danger" href="<?= base_url('contato/correcao/tecnologia/'. $tecnologia['id']) ?>">Sugira uma correção!</a>
                        </li>
                        <li class="text-secondary fs-small">
                            Conhece alguma tecnologia assistiva que não está no site? <a href="<?= base_url('contato/indicacao/tecnologia') ?>">Indique pra gente!</a>
                        </li>
                    </ul>
                </article>

            </div>
        </section>
        
                
                





            </div>
        </section>
        
    </main>

    <script>
        const tooltipTriggerList = document.querySelectorAll('[data-bs-toggle="tooltip"]')
        const tooltipList = [...tooltipTriggerList].map(tooltipTriggerEl => new bootstrap.Tooltip(tooltipTriggerEl))

        const popoverTriggerList = document.querySelectorAll('[data-bs-toggle="popover"]')
        const popoverList = [...popoverTriggerList].map(popoverTriggerEl => new bootstrap.Popover(popoverTriggerEl))
    </script>
<?= $this->include('layout/footer') ?>