<?= $this->include('layout/header') ?>
    <main class="container">

        <!-- contato -->
        <section class="row g-3 contato">

            <!-- barra lateral -->
            <aside class="col-md-3">
                <?= $this->include('layout/menu_lateral') ?>
            </aside>

            <!-- conteudo -->
            <div class="offset-md-1 col-md-8 order-first order-md-2">
                
                <div class="row g-4">
                    
                    <div class="col-12">
                        <h2 class="h3 fw-bold mb-4">
                            <?= $assunto_atual ?>
                        </h2>
                        <?php if (session()->has('captcha_error')): ?>
                            <div class="alert alert-danger my-4" role="alert">
                                O código informado (captcha) está incorreto. Tente novamente!
                            </div>
                        <?php endif; ?>
                        <?php if (session()->has('send_error')): ?>
                            <div class="alert alert-danger my-4" role="alert">
                                Erro ao enviar o e-mail. Por favor, tente novamente!
                            </div>
                        <?php endif; ?>

                        <div class="text-danger">
                            <?= session()->getFlashdata('error') ?>
                            <?= validation_list_errors() ?>
                        </div>

                    </div>
                </div>
                <div class="col-md-8">
                    <form action="/contato/enviar" method="POST">
                        <?= csrf_field() ?>

                        <?php 

                            if (isset($tecnologia)): ?>
                                <div class="alert alert-warning mb-4" role="alert">
                                    <p class="p-0 m-0 lead">Tecnologia: <a href="<?= base_url('tecnologias/ver/'. $tecnologia['slug']) ?>"><?= $tecnologia['titulo'] ?></a></p>
                                    <input type="hidden" name="tecnologia[id]" value="<?= $tecnologia['id'] ?>">
                                    <input type="hidden" name="tecnologia[titulo]" value="<?= $tecnologia['titulo'] ?>">
                                </div>
                        <?php                           
                            elseif(isset($recurso)): ?>
                                <div class="alert alert-warning" role="alert">
                                    <p>Recurso: <a href="<?= base_url('recursos/ver/'. $recurso['slug']) ?>"><?= $recurso['titulo'] ?></a></p>
                                    <input type="hidden" name="recurso[id]" value="<?= $recurso['id'] ?>">
                                </div>
                        <?php 
                            endif; ?>

                        <div class="mb-4">
                            <label for="nome" class="form-label">Seu nome</label>
                            <input type="text" class="form-control" id="nome" name="nome" value="<?= old('nome') ?>" >
                        </div>
                        <div class="mb-4">
                            <label for="email" class="form-label">Seu e-mail</label>
                            <input type="email" class="form-control" id="email" name="email" value="<?= old('email') ?>" >
                        </div>

                        <?php if ( $assunto_atual == 'Fale Conosco' ): // mostra select apenas se não tiver assunto já definido ?>
                            <div class="mb-4">
                                <label for="assunto">Qual motivo da mensagem?</label>
                                <select class="form-select" id="assunto" name="assunto" aria-label="assunto da mensagem" required>
                                    <?php
                                        echo '<option value="">Escolha um assunto</option>';
                                        foreach($assuntos as $opcao):
                                            echo '<option value="'. $opcao .'">'. $opcao .'</option>';
                                        endforeach;
                                    ?>
                                </select>
                            </div>
                        <?php else: // adiciona campo oculto com o assunto ?>
                            <input type="hidden" name="assunto" value="<?= $assunto_atual ?>">
                            <?php if ($assunto_atual == 'Indicar Tecnologia ou Recurso'): ?>
                                <div class="mb-4">
                                    <p class="fw-bold">Quero indicar um(a):</p>
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="indicacao_tipo" id="indicacao_tipo_tecnologia" value="tecnologia" <?php old('indicacao_tipo') == 'tecnologia' ? 'checked' : '' ?> >
                                        <label class="form-check-label" for="indicacao_tipo_tecnologia">Tecnologia <span class="text-secondary">(um site ou app para usar na comunicação com surdos)</span></label>
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="indicacao_tipo" id="indicacao_tipo_recurso" value="recurso" <?php old('indicacao_tipo') == 'recurso' ? 'checked' : '' ?> >
                                        <label class="form-check-label" for="indicacao_tipo_recurso">Recurso <span class="text-secondary">(um site ou app com conteúdo informativo)</span></label>
                                    </div>
                                </div>
                            <?php endif;?>
                        <?php endif; ?>

                        <div class="mb-4">
                            <label for="mensagem" class="form-label">Mensagem</label>
                            <textarea class="form-control" id="mensagem" name="mensagem" rows="3" required><?= old('mensagem') ?></textarea>
                        </div>

                        <div class="mb-4">
                            <label for="captcha">Quais caracteres aparecem na imagem abaixo?</label>
                            <p class="m-0"><img src="<?= $captcha ?>" alt="Captcha"></p>
                            <input type="text" class="form-control w-50 <?= (session()->has('captcha_msg')) ? 'is-invalid' : '' ?>" maxlength="4" name="captcha" required>
                        </div>

                        <div class="mb-4">
                            <button type="submit" class="btn btn-lg btn-success">Enviar Mensagem</button>
                        </div>

                    </form>

                </div>

            </div>

        </section>
        
    </main>

<?= $this->include('layout/footer') ?>