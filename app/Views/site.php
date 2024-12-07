<?= $this->include('layout/header') ?>
    <main class="container">

        <!-- conteudos diversos -->
        
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
                        <h2 class="h3 fw-bold">
                            <?php
                                // define o titulo, conforme o assunto
                                switch ($slug) {
                                case 'sobre':
                                    echo "Sobre este site";
                                break;
                                case 'sobre-as-tecnologias-assistivas':
                                    echo "Sobre as Tecnologias Assistivas";
                                break;
                                case 'termos':
                                    echo "Termos de Uso";
                                break;
                                case 'privacidade':
                                    echo "Termo de Privacidade";
                                break;
                                default:
                                    echo "Página não localizada!";
                                }
                            ?>
                        </h2>
                    </div>
                    
                    <article class="col-12">
                        <?php if ($slug == 'sobre'): ?>
                            
                            <p class="lead fw-bold"><strong>Obrigado pela sua visita!</strong></p>
                            <p class="lead">Nosso objetivo é trazer orientação sobre as tecnologias assistivas que facilitam a comunicação e o aprendizado para estudantes surdos. Além disso, também apresentamos alguns recursos que podem ser importantes para a capacitação e conscientização da comunidade escolar sobre acessibilidade linguística para surdos.</p>
                            <p class="lead">Todas as tecnologias e recursos foram cuidadosamente selecionadas para atender às diversas necessidades dos educadores e estudantes, promovendo uma educação mais inclusiva e eficaz.</p>

                            <div class="card card-body lead mb-4">
                                Os textos e orientações sobre as ferramentas foram geradas usando inteligência artificial e revisadas por humanos. Mesmo assim, podem conter informações imprecisas ou que podem ser enriquecidas pela experiência de quem já aplicou a ferramenta em casos reais. Caso encontre algum equívoco ou queira colaborar, no rodapé da página de cada tecnologia você encontra o link para sugerir correções ou melhorias.
                            </div>

                            <p class="lead"><strong>Conhece alguma tecnologia assistiva ou recurso que ainda não está listado no site? <a href="<?= base_url('contato/indicacao/tecnologia') ?>">Então compartilhe com a gente!</a></strong> Além disso, suas críticas e sugestões são sempre bem-vindas.</p>
                        
                        <?php elseif ($slug == 'sobre-as-tecnologias-assistivas'): ?>

                            <p class="lead">As tecnologias assistivas são ferramentas essenciais para promover a inclusão e acessibilidade de pessoas com deficiência. Elas abrangem uma ampla gama de dispositivos, recursos e serviços, ajudando a melhorar a autonomia e a participação social dessas pessoas. No campo da educação, essas tecnologias desempenham um papel fundamental, especialmente na educação de estudantes surdos, onde facilitam a comunicação e o aprendizado.</p>
                            <h2 class="h3 mt-4">O que são Tecnologias Assistivas?</h2>
                            <p class="lead">De acordo com Ferreira e Ranieri (2016), as <i>"Tecnologias Assistivas (TA) objetivam funcionalidade, independência, autonomia e qualidade de vida das pessoas com deficiência, por meio de recursos, estratégias, serviços e equipamentos"</i>. Esses recursos podem incluir desde adaptações físicas, como cadeiras de rodas e próteses, até sistemas digitais avançados, como tradutores automáticos de Língua de Sinais ou softwares que facilitam a comunicação. No contexto educacional, as tecnologias assistivas ajudam a adaptar currículos e metodologias de ensino para que todos os estudantes possam ter uma experiência educacional inclusiva e plena <a rel="noopener" target="_new"><span>(Ferreira &amp; Ranieri, 2016)</span></a>.</p>
                            <h2 class="h3 mt-4">Tecnologias Assistivas na Educação de Surdos</h2>
                            <p class="lead">No Brasil, a educação de surdos enfrenta desafios consideráveis, e as tecnologias assistivas têm um papel essencial para garantir que esses estudantes tenham acesso igualitário ao conhecimento. Ferramentas como vídeos em Libras (Língua Brasileira de Sinais), legendas automáticas e aplicativos educacionais adaptados são algumas das soluções tecnológicas que permitem a inclusão desses estudantes nas salas de aula. No modelo educacional bilíngue, que considera a Libras como a primeira língua e o português como segunda, as tecnologias assistivas são fundamentais para adaptar o conteúdo e permitir que os estudantes surdos interajam com o material de ensino de forma eficiente.</p>
                            <p class="lead">Um estudo conduzido por Nogueira e Cabello (2017) analisou o uso de tecnologias digitais no ensino de estudantes surdos. Eles observaram como os professores utilizam materiais digitais em Libras para facilitar o aprendizado da língua portuguesa escrita, permitindo que as crianças surdas tenham uma experiência educativa mais acessível e produtiva <a rel="noopener" target="_new"><span>(Nogueira &amp; Cabello, 2017)</span></a>.</p>
                            <p class="lead">Além disso, outros recursos, como jogos pedagógicos e atividades adaptadas, foram usados com sucesso no ensino de geografia, demonstrando que essas tecnologias podem não apenas auxiliar no aprendizado, mas também aumentar a motivação e o engajamento dos estudantes surdos <a rel="noopener" target="_new"><span>(Sousa &amp; Oliveira, 2019)</span></a>.</p>
                            <h2 class="h3 mt-4">Dificuldades e Desafios no Contexto Brasileiro</h2>
                            <p class="lead">Apesar dos avanços, a implementação de tecnologias assistivas na educação ainda enfrenta muitas barreiras no Brasil. Estudantes com deficiência, incluindo os surdos, muitas vezes enfrentam exclusão devido à falta de recursos adequados e à resistência cultural. Santos e Pessoa (2019) mostram que, no ensino superior, muitos estudantes com deficiência lidam com barreiras físicas e sociais, como a falta de adaptação dos ambientes e o preconceito de colegas e professores. Essas dificuldades impactam diretamente a inclusão e a permanência desses estudantes no ambiente educacional <a rel="noopener" target="_new"><span>(Santos &amp; Pessoa, 2019)</span></a>.</p>
                            <p class="lead">Além disso, embora as políticas públicas já reconheçam a Libras como língua oficial para a comunidade surda, a capacitação dos professores e a produção de materiais pedagógicos adaptados ainda são insuficientes. Isso ressalta a necessidade urgente de maior investimento em treinamento de educadores e na produção de recursos didáticos acessíveis.</p>
                            <h2 class="h3 mt-4">Conclusão</h2>
                            <p class="lead">As tecnologias assistivas têm um impacto transformador na educação de estudantes surdos, facilitando não apenas o aprendizado, mas também promovendo a inclusão social. No entanto, no Brasil, é preciso superar barreiras estruturais e culturais para que essas tecnologias sejam plenamente implementadas e usadas de forma eficaz. Ao capacitar professores e investir em mais recursos adaptados, podemos garantir que a educação seja verdadeiramente inclusiva, permitindo que todos os estudantes, independentemente de suas limitações, tenham acesso a uma educação de qualidade.</p>
                            <hr class="my-5">
                            <h3 class="h4 mt-4">Referências</h3>
                            <ul class="fs-small">
                                <li>FERREIRA, N.; RANIERI, L. P. O uso da tecnologia assistiva por professores de educação física. Revista Eletrônica de Educação, v. 10, p. 215-229, 2016. Disponível em: <a href="https://www.reveduc.ufscar.br/index.php/reveduc/article/view/1593" target="_blank">https://www.reveduc.ufscar.br/index.php/reveduc/article/view/1593</a>.</li>
                                <li>NOGUEIRA, A.; CABELLO, J. Considerações sobre educação de surdos e tecnologias a partir da análise das estratégias de ensino de um professor surdo. Texto Livre: Linguagem e Tecnologia, v. 10, p. 242-256, 2017. Disponível em: <a href="https://periodicos.ufmg.br/index.php/textolivre/article/view/16756" target="_blank">https://periodicos.ufmg.br/index.php/textolivre/article/view/16756</a>.</li>
                                <li>SOUSA, A. C. D. O.; OLIVEIRA, A. M. de. O ensino de Geografia na educação de surdos: estudo de caso no Instituto Cearense de Educação de Surdos - ICES. Revista Brasileira de Educação em Geografia, v. 9, 2019. Disponível em: <a href="https://www.revistaedugeo.com.br/revistaedugeo/article/view/506" target="_blank">https://www.revistaedugeo.com.br/revistaedugeo/article/view/506</a>.</li>
                                <li>SANTOS, I. S.; PESSOA, A. S. G. Fatores que dificultam a permanência de estudantes com deficiência no ensino superior. Revista de Ensino, Educação e Ciências Humanas, v. 20, p. 430-439, 2019. Disponível em: <a href="https://www.researchgate.net/publication/339225255_Fatores_que_Dificultam_a_Permanencia_de_Estudantes_com_Deficiencia_no_Ensino_Superior" target="_blank">https://www.researchgate.net/publication/339225255_Fatores_que_Dificultam_a_Permanencia_de_Estudantes_com_...</a>.</li>
                            </ul>
                        
                        <?php else: ?>

                            <p class="lead">Parece que a página que você está procurando não existe. 😕</p>
                            <p class="lead">Confira os menus acima para explorar nossas opções ou <a href="<?= base_url('/') ?>">clique aqui para retornar à página inicial</a>.</p>

                        <?php endif; ?>                            
                    </article>
                </div>
                   
            </div>
        </section>

    </main>
<?= $this->include('layout/footer') ?>