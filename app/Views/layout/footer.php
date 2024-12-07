
<p class="text-center pt-5 my-5">
  <a href="#topo" class="btn btn-light">voltar ao topo <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-up" viewBox="0 0 16 16">
  <path fill-rule="evenodd" d="M8 15a.5.5 0 0 0 .5-.5V2.707l3.146 3.147a.5.5 0 0 0 .708-.708l-4-4a.5.5 0 0 0-.708 0l-4 4a.5.5 0 1 0 .708.708L7.5 2.707V14.5a.5.5 0 0 0 .5.5"/>
</svg></a>
</p> 

<footer class="container pt-5 mt-5 border-top">
    <div class="row">
      
      <div class="col-md-5 mb-3">
        <form>
          <h5>Tecnologias Assistivas para Surdos em Sala de Aula</h5>
          <p class="lead">Uma coletânea de sites e aplicativos que ajudam a promover a acessibilidade linguística em sala de aula para estudantes surdos. <a href="<?= base_url('contato/indicacao/tecnologia') ?>">Indique tecnologias</a> e ajude a tornar este catálogo ainda melhor!</p>
        </form>
      </div>

      <div class="offset-md-1 col-6 col-md-2 mb-3">
        <h5>Tecnologias</h5>
        <ul class="nav flex-column">
          <?php foreach($categorias['tecnologia'] as $categoria): ?>
            <li class="nav-item mb-2"><a href="<?= base_url('tecnologias/'. $categoria['slug']) ?>" class="nav-link p-0 text-body-secondary"><?php echo $categoria['titulo'];?></a></li>
          <?php endforeach; ?>
        </ul>
      </div>

      <div class="col-6 col-md-2 mb-3">
        <h5>Recursos</h5>
        <ul class="nav flex-column">
          <?php foreach($categorias['recurso'] as $categoria): ?>
            <li class="nav-item mb-2"><a href="<?= base_url('recursos/'. $categoria['slug']) ?>" class="nav-link p-0 text-body-secondary"><?php echo $categoria['titulo'];?></a></li>
          <?php endforeach; ?>
        </ul>
      </div>

      <div class="col-6 col-md-2 mb-3">
        <h5>Institucional</h5>
        <ul class="nav flex-column">
          <li class="nav-item mb-2"><a href="<?= base_url('/') ?>" class="nav-link p-0 text-body-secondary">Início</a></li>
          <li class="nav-item mb-2"><a href="<?= base_url('site/sobre-as-tecnologias-assistivas') ?>" class="nav-link p-0 text-body-secondary">O que é Tecnologia Assistiva?</a></li>
          <li class="nav-item mb-2"><a href="<?= base_url('contato/indicacao/tecnologia') ?>" class="nav-link p-0 text-body-secondary">Sugira uma tecnologia</a></li>
          <li class="nav-item mb-2"><a href="<?= base_url('contato/indicacao/recurso') ?>" class="nav-link p-0 text-body-secondary">Sugira um recurso</a></li>
          <li class="nav-item mb-2"><a href="<?= base_url('site/sobre/') ?>" class="nav-link p-0 text-body-secondary">Sobre este site</a></li>
          <li class="nav-item mb-2"><a href="<?= base_url('contato/') ?>" class="nav-link p-0 text-body-secondary">Contato</a></li>
        </ul>
      </div>

    </div>

    <div class="row pt-4 mt-4 border-top fst-italic">
      <p class="col-md-8 text-secondary text-start text-italic"><small>Este produto educacional (catálogo de tecnologias assistivas) é fruto de pesquisa de Mestrado Profissional em Computação Aplicada.</small></p>
      <p class="col-md-4 text-secondary text-start text-md-end"><small>Brasil, <?= date('Y') ?></small></p>
    </div>
  </footer>

  <!-- vlibras -->
  <div vw class="enabled">
    <div vw-access-button class="active"></div>
    <div vw-plugin-wrapper>
      <div class="vw-plugin-top-wrapper"></div>
    </div>
  </div>
  <script src="https://vlibras.gov.br/app/vlibras-plugin.js"></script>
  <script>
    new window.VLibras.Widget('https://vlibras.gov.br/app');
  </script>

  <!-- sharethis -->
  <script type="text/javascript" src="https://platform-api.sharethis.com/js/sharethis.js#property=670a6ef7a6330b001a601796&product=inline-share-buttons&source=platform" async="async"></script>

  </body>
</html>