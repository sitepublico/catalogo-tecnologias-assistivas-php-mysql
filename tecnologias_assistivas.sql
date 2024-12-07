-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Tempo de geração: 11/10/2024 às 17:52
-- Versão do servidor: 9.0.0
-- Versão do PHP: 8.2.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `tecnologias_assistivas`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `amostragem`
--

CREATE TABLE `amostragem` (
  `id` int NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `promtp` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `resposta` text,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estrutura para tabela `recursos`
--

CREATE TABLE `recursos` (
  `id` int NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `plataforma_id` int NOT NULL,
  `taxonomia_id` int NOT NULL,
  `descricao` text NOT NULL,
  `link` varchar(255) NOT NULL,
  `redirecionamentos` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Despejando dados para a tabela `recursos`
--

INSERT INTO `recursos` (`id`, `titulo`, `plataforma_id`, `taxonomia_id`, `descricao`, `link`, `redirecionamentos`, `created_at`, `updated_at`) VALUES
(1, 'LibraSol', 27, 22, 'Plataforma de apoio à educação de surdos, com foco em Libras.', 'https://www.librasol.com.br/', 0, '2024-08-24 19:29:37', '2024-08-24 19:29:37'),
(2, 'Site \'Amigo do Surdo\'', 27, 22, 'Portal com recursos e artigos voltados para a educação de surdos.', 'https://www.amigodosurdo.com/results?search=%22EDUCA%C3%87%C3%83O%22', 0, '2024-08-24 19:29:37', '2024-08-24 19:29:37'),
(3, 'Cursos para surdos', 27, 23, 'Plataforma de cursos para surdos, com foco em inclusão.', 'https://www.signaedu.com/index.html', 0, '2024-08-24 19:29:37', '2024-08-24 19:29:37'),
(4, 'ATIVIDADES EDUCATIVAS', 27, 24, 'Repositório de atividades educativas para diversas necessidades.', 'https://www.atividadeseducativas.com.br/', 1, '2024-08-24 19:29:37', '2024-10-06 16:49:30'),
(5, 'Educação em Libras', 27, 24, 'Blog sobre educação em Libras e materiais pedagógicos.', 'https://educacaoemlibras.blogspot.com/', 0, '2024-08-24 19:29:37', '2024-08-24 19:29:37'),
(6, 'Diversa', 27, 24, 'Materiais pedagógicos inclusivos para diversos públicos.', 'https://diversa.org.br/materiais-pedagogicos/', 0, '2024-08-24 19:29:37', '2024-08-24 19:29:37'),
(7, 'GIFS DE SINAIS', 27, 22, 'Repositório de GIFs com sinais em Libras para facilitar o aprendizado visual.', 'https://github.com/adelibras/gifs/tree/master', 0, '2024-08-24 19:29:37', '2024-08-24 19:29:37'),
(8, 'Portal de Tecnologia Assistiva', 27, 23, 'Portal de pranchas e atividades adaptadas para alunos com deficiência.', 'https://www.portalassistiva.com.br/pranchas/atividades.php?opcao=3&etapa=2&cod_categoria=10', 0, '2024-08-24 19:29:37', '2024-08-24 19:29:37'),
(9, 'Repositório Digital Huet', 27, 24, 'Repositório digital com materiais educativos para surdos.', 'http://repositorio.ines.gov.br/ilustra/', 0, '2024-08-24 19:29:37', '2024-08-24 19:29:37'),
(10, 'Biblioteca', 27, 24, 'Biblioteca digital com materiais em Libras e recursos acessíveis.', 'https://biblioteca.ines.gov.br/', 0, '2024-08-24 19:29:37', '2024-08-24 19:29:37'),
(11, 'Instituto Nacional de Educação de Surdos', 27, 21, 'Instituto com foco em educação para surdos, oferecendo cursos e materiais.', 'https://www.gov.br/ines/pt-br', 0, '2024-08-24 19:29:37', '2024-08-24 19:29:37'),
(12, 'Materiais Inclusivos', 27, 24, 'Repositório de materiais inclusivos, com foco em Libras.', 'http://www.librasgerais.com.br/materiais-inclusivos/downloads/', 0, '2024-08-24 19:29:37', '2024-08-24 19:29:37'),
(13, 'Libras Gerais', 27, 24, 'Portal com materiais didáticos e recursos em Libras.', 'http://www.librasgerais.com.br/principal/index.php', 0, '2024-08-24 19:29:37', '2024-08-24 19:29:37'),
(14, 'Saberes e práticas da inclusão', 27, 23, 'Guia prático para professores sobre inclusão de alunos surdos.', 'https://www.gov.br/mec/pt-br/media/publicacoes/semesp/alunossurdos.pdf/view', 0, '2024-08-24 19:29:37', '2024-08-24 19:29:37'),
(15, 'Blog Dania Pereira', 27, 22, 'Blog com artigos e recursos sobre educação em Libras.', 'https://danianepereira.blogspot.com/', 0, '2024-08-24 19:29:37', '2024-08-24 19:29:37'),
(16, 'Canal Mãos Aventureiras', 29, 22, 'Canal no YouTube com vídeos educativos em Libras.', 'https://www.youtube.com/c/M%C3%A3osAventureiras/videos', 0, '2024-08-24 19:29:37', '2024-08-24 19:29:37'),
(17, 'Educ', 27, 24, 'Plataforma de busca para materiais e recursos educacionais em Libras.', 'https://educ.see.ac.gov.br/busca?q=surdo%20ou%20libras%20libras%20OR%20libras', 0, '2024-08-24 19:29:37', '2024-08-24 19:29:37'),
(18, 'Clube de Libras', 27, 24, 'Repositório de materiais didáticos em Libras, voltado para o ensino.', 'https://clubedelibras.ufc.br/pt/recursos/materiais/', 0, '2024-08-24 19:29:37', '2024-08-24 19:29:37'),
(19, 'Materiais Didáticos em Libras', 27, 24, 'Materiais didáticos em Libras para apoio ao ensino.', 'https://cta.ifrs.edu.br/materiais-de-apoio/glossarios-e-materiais-didaticos-em-libras/', 0, '2024-08-24 19:29:37', '2024-08-24 19:29:37'),
(20, 'Canal Aprender com Libras', 29, 22, 'Canal no YouTube com aulas e recursos em Libras.', 'https://www.youtube.com/c/aprendercomlibras', 0, '2024-08-24 19:29:37', '2024-08-24 19:29:37'),
(21, 'Materiais sobre Libras', 27, 24, 'Materiais educativos sobre Libras para formação de professores.', 'http://www.escoladeformacao.sp.gov.br/portais/Default.aspx?tabid=1899', 0, '2024-08-24 19:29:37', '2024-08-24 19:29:37'),
(22, 'Centro Virtual da Cultura Surda', 27, 24, 'Portal sobre a cultura surda, com recursos e materiais educativos.', 'https://editora-arara-azul.com.br/centro-virtual-de-cultura-surda/', 0, '2024-08-24 19:29:37', '2024-08-24 19:29:37'),
(23, 'Canal Academia de Libras', 29, 22, 'Canal no YouTube com vídeos educativos em Libras para diversos temas.', 'https://www.youtube.com/c/AcademiadeLibras', 0, '2024-08-24 19:29:37', '2024-08-24 19:29:37'),
(24, 'Canal Libras L2', 29, 22, 'Canal no YouTube focado no ensino de Libras como segunda língua.', 'https://www.youtube.com/channel/UC0ZGOWQz1aVaKGH15sXVhug', 0, '2024-08-24 19:29:37', '2024-08-24 19:29:37'),
(25, 'Canal Se Liga Nas Mãos', 29, 22, 'Canal no YouTube com conteúdos variados sobre Libras e cultura surda.', 'https://www.youtube.com/c/SeLigaNasM%C3%A3os', 0, '2024-08-24 19:29:37', '2024-08-24 19:29:37'),
(26, 'Canal Carlos Cristian Libras', 29, 22, 'Canal no YouTube com vídeos de Libras para iniciantes e avançados.', 'https://www.youtube.com/c/CarlosCristianLibras', 0, '2024-08-24 19:29:37', '2024-08-24 19:29:37'),
(27, 'Canal Incluir Tecnologia', 29, 23, 'Canal no YouTube com foco em tecnologia assistiva e inclusão.', 'https://www.youtube.com/user/incluirtecnologia', 0, '2024-08-24 19:29:37', '2024-08-24 19:29:37'),
(28, 'Canal Viver de Libras', 29, 22, 'Canal no YouTube com conteúdos sobre Libras para o dia a dia.', 'https://www.youtube.com/channel/UChIqq799NHyK9-JNECUISZg', 0, '2024-08-24 19:29:37', '2024-08-24 19:29:37'),
(29, 'Dicionários e Glossários', 27, 22, 'Repositório de dicionários e glossários em Libras para diversas áreas, em PDF.', 'http://www.cchla.ufpb.br/extlibras/contents/paginas/dicionarios-e-glossarios', 0, '2024-08-24 19:29:37', '2024-08-24 19:29:37'),
(30, 'Vídeos: Sinalários/Contos/Poemas', 27, 22, 'Vídeos de sinalários, contos e poemas em Libras para apoio didático.', 'http://www.cchla.ufpb.br/extlibras/contents/paginas/videos', 0, '2024-08-24 19:29:37', '2024-08-24 19:29:37'),
(31, 'Materiais Diversos em PDF', 27, 24, 'Materiais diversos em PDF voltados para o ensino de Libras.', 'http://www.cchla.ufpb.br/extlibras/contents/paginas/pdfs', 0, '2024-08-24 19:29:37', '2024-08-24 19:29:37'),
(32, 'Cadernos de apoio e aprendizagem - Libras', 27, 24, 'Cadernos de apoio para aprendizagem de Libras, voltados para professores.', 'https://acervodigital.sme.prefeitura.sp.gov.br/palavra/lingua-brasileira-de-sinais-libras/', 0, '2024-08-24 19:29:37', '2024-08-24 19:29:37'),
(33, 'Portal de Libras', 27, 24, 'Portal online com recursos e materiais educativos em Libras.', 'https://app-hmg-libras.levantelab.com.br/', 0, '2024-08-24 19:29:37', '2024-08-24 19:29:37'),
(34, 'Materiais Pedagógicos', 27, 24, 'Materiais pedagógicos inclusivos para diversas disciplinas.', 'https://diversa.org.br/materiais-pedagogicos/', 0, '2024-08-24 19:29:37', '2024-08-24 19:29:37'),
(35, 'Materiais Pedagógicos para o Ensino de Libras', 27, 24, 'Materiais pedagógicos específicos para o ensino de Libras.', 'https://www.dialogosemeducacaoespecial.com.br/post/materididaticensidelibras', 0, '2024-08-24 19:29:37', '2024-08-24 19:29:37'),
(36, 'Jogos Online sobre Libras', 27, 22, 'Jogos online interativos para aprendizado de Libras.', 'https://cegi.unifesp.br/', 0, '2024-08-24 19:29:37', '2024-08-24 19:29:37'),
(37, 'Livros e apostilas gratuitos em Libras', 27, 24, 'Repositório de livros e apostilas gratuitas em Libras.', 'https://blog.surdoparasurdo.com.br/livros-e-apostilas-gratuitos-em-libras-pdf-496c7f798f03', 0, '2024-08-24 19:29:37', '2024-08-24 19:29:37'),
(38, 'EscolaWeb', 27, 24, 'Plataforma de busca para materiais educativos sobre Libras.', 'https://escolaweb.educacao.al.gov.br/busca?q=libras', 0, '2024-08-24 19:29:37', '2024-08-24 19:29:37'),
(39, 'Materiais Pedagógicos Diversos', 27, 24, 'Repositório de materiais pedagógicos em Libras para uso em sala de aula.', 'https://debasi.ines.gov.br/p%C3%A1gina-inicial', 0, '2024-08-24 19:29:37', '2024-08-24 19:29:37'),
(40, 'Manual de Libras para Ciências: A Célula e o Corpo Humano', 27, 22, 'Manual em Libras para o ensino de Ciências com foco na célula e corpo humano.', 'https://www.ufpi.br/arquivos_download/arquivos/EBOOK_-_MANUAL_DE_LIBRAS_PARA_CIENCIA-_A_C%C3%ABLULA_E_O_CORPO_HUMANO20200727155142.pdf', 0, '2024-08-24 19:29:37', '2024-08-24 19:29:37'),
(41, 'Curso de Libras', 27, 21, 'Curso online de Libras oferecido pela USP, com conteúdo didático estruturado.', 'https://edisciplinas.usp.br/course/view.php?id=5603', 0, '2024-08-24 19:29:37', '2024-08-24 19:29:37'),
(42, 'Corpus de Libras', 27, 22, 'Corpus digital da Língua Brasileira de Sinais, desenvolvido pela UFSC.', 'https://corpuslibras.ufsc.br/', 0, '2024-08-24 19:29:37', '2024-08-24 19:29:37'),
(43, 'Formações Letras-Libras', 27, 21, 'Formações e cursos na área de Letras-Libras, oferecidos pela UFCA.', 'https://ava.ufca.edu.br/course/index.php?categoryid=61', 1, '2024-08-24 19:29:37', '2024-10-06 16:49:24'),
(44, 'Canal Libras & Trilhas', 29, 22, 'Canal no YouTube com vídeos sobre Libras e educação.', 'https://www.youtube.com/@programalibrasetrilhas', 0, '2024-08-24 19:29:37', '2024-08-24 19:29:37'),
(45, 'Libras & Trilhas', 27, 24, 'Portal de recursos e materiais educativos para o ensino de Libras.', 'https://librasetrilhas.ufam.edu.br/', 0, '2024-08-24 19:29:37', '2024-08-24 19:29:37'),
(46, 'Glossário de Libras (vídeo)', 27, 24, 'Glossário de Libras em formato de vídeo, com foco em termos específicos.', 'https://casgoiania.com.br/index.php/glossarios/', 0, '2024-08-24 19:29:37', '2024-08-24 19:29:37'),
(47, 'Curso: Introdução à Libras', 27, 21, 'Curso introdutório de Libras oferecido pela Escola Virtual do Governo.', 'https://www.escolavirtual.gov.br/curso/11', 0, '2024-08-24 19:29:37', '2024-08-24 19:29:37'),
(48, 'Curso de Libras', 27, 21, 'Curso de Libras oferecido pela UEMA, com foco em ensino básico.', 'https://eskadauema.com/course/view.php?id=58', 0, '2024-08-24 19:29:37', '2024-08-24 19:29:37'),
(49, 'Curso de Libras', 27, 21, 'Curso de Libras oferecido pelo SESC, com recursos didáticos.', 'https://ead.sesc.digital/cursos/course-v1:sescsaopaulo+c017+2023_libras/sobre', 0, '2024-08-24 19:29:37', '2024-08-24 19:29:37'),
(50, 'Curso de Libras', 27, 21, 'Curso de Libras oferecido pelo IFRS, com conteúdo online.', 'https://moodle.ifrs.edu.br/course/index.php?categoryid=81', 0, '2024-08-24 19:29:37', '2024-08-24 19:29:37'),
(51, 'VideoAulas de Libras', 27, 22, 'Plataforma de videoaulas sobre Libras, oferecida pela USP.', 'https://eaulas.usp.br/portal/course.action?course=6085', 0, '2024-08-24 19:29:37', '2024-08-24 19:29:37'),
(52, 'Cursos de Libras', 27, 21, 'Cursos de Libras disponíveis no portal do IFSUL.', 'https://mundi.ifsul.edu.br/portal/', 0, '2024-08-24 19:29:37', '2024-08-24 19:29:37'),
(53, 'Curso de Tecnologia Assistiva', 27, 23, 'Curso sobre tecnologia assistiva, oferecido pelo IFSUL.', 'https://mundi.ifsul.edu.br/portal/tecnologia-assistiva.php', 0, '2024-08-24 19:29:37', '2024-08-24 19:29:37'),
(54, 'Cursos de Libras', 27, 21, 'Cursos de Libras oferecidos pelo IFMS, com enfoque acessível.', 'https://cursoslivres.ifms.edu.br/course/search.php?areaids=core_course-course&q=libras', 0, '2024-08-24 19:29:37', '2024-08-24 19:29:37'),
(55, 'Cursos de Acessibilidade com Softwares Microsoft', 27, 21, 'Cursos de acessibilidade utilizando softwares da Microsoft.', 'https://learn.microsoft.com/pt-br/training/educator-center/topics/accessibility', 0, '2024-08-24 19:29:37', '2024-08-24 19:29:37'),
(56, 'Recursos de Acessibilidade do Google', 27, 20, 'Recursos de acessibilidade do Google para educação inclusiva.', 'https://edu.google.com/intl/ALL_br/why-google/accessibility/', 0, '2024-08-24 19:29:37', '2024-08-24 19:29:37'),
(57, 'LITERATURA ACESSÍVEL', 27, 24, 'Portal de literatura acessível, com foco em materiais para surdos.', 'https://literaturaacessivel.com.br/', 0, '2024-08-24 19:29:37', '2024-08-24 19:29:37'),
(58, 'StorySign', 25, 20, 'App que traduz livros infantis para a Língua de Sinais, facilitando a leitura para crianças surdas.', 'https://play.google.com/store/apps/details?id=com.storysign.storysign', 0, '2024-08-24 19:29:37', '2024-08-24 19:29:37'),
(59, 'Apps de Acessibilidade Linguística', 27, 20, 'Lista de aplicativos de acessibilidade linguística, com foco em comunicação para surdos.', 'https://diariopcd.com.br/2024/05/25/especialista-escreve-sobre-dicas-de-aplicativos-para-surdos/', 0, '2024-08-24 19:29:37', '2024-08-24 19:29:37'),
(60, 'Amplificador de Som para Android', 25, 20, 'Amplificador de som para Android, destinado a pessoas com baixa audição.', 'https://play.google.com/store/apps/details?id=com.google.android.accessibility.soundamplifier', 0, '2024-08-24 19:29:37', '2024-08-24 19:29:37'),
(61, 'Lista de recursos educativos online', 27, 24, 'Lista de recursos educativos online, com foco em materiais acessíveis para educação.', 'https://crticloures1.wixsite.com/crticloures/sites-educativos', 0, '2024-08-24 19:29:37', '2024-08-24 19:29:37'),
(62, 'DudaLibras', 27, 22, 'Jogo educativo que ensina Libras de forma interativa e lúdica.', 'https://www.atendelibras.com.br/game', 0, '2024-08-24 19:29:37', '2024-08-24 19:29:37'),
(63, 'Librário: Libras para todos', 25, 22, 'App para aprendizado de Libras, com atividades interativas para todos os níveis.', 'https://play.google.com/store/apps/details?id=com.ludicside.librario&hl=pt_BR', 0, '2024-08-24 19:29:37', '2024-08-24 19:29:37'),
(64, 'LibrasLab', 27, 22, 'Plataforma online para aprendizado de Libras com recursos didáticos.', 'https://app.libraslab.com.br/', 0, '2024-08-24 19:29:37', '2024-08-24 19:29:37'),
(65, 'Glossário de Libras UFSC', 27, 22, 'Glossário de Libras desenvolvido pela UFSC, com termos acadêmicos e específicos. Aparentemente não vem sendo atualizado.', 'https://www.glossario.libras.ufsc.br/', 0, '2024-08-24 19:29:37', '2024-08-24 19:29:37'),
(66, 'Libras', 25, 22, 'App que ensina Libras através de jogos e atividades interativas.', 'https://play.google.com/store/apps/details?id=com.gamenimando.Libras', 0, '2024-08-24 19:29:37', '2024-08-24 19:29:37'),
(67, 'ForcaBRAS', 25, 22, 'Jogo de forca em Libras, que ajuda no aprendizado do alfabeto e sinais.', 'https://play.google.com/store/apps/details?id=org.godotengine.libras&hl=pt_BR', 0, '2024-08-24 19:29:37', '2024-08-24 19:29:37'),
(68, 'VideoMail', 27, 20, 'Plataforma de videomail que facilita a comunicação em Libras.', 'https://videomail.io/', 0, '2024-08-24 19:29:37', '2024-08-24 19:29:37'),
(69, 'Signas - Aprenda Libras!', 25, 22, 'App para aprender Libras com diversas atividades e exercícios.', 'https://play.google.com/store/apps/details?id=com.AlApps.Signas', 0, '2024-08-24 19:29:37', '2024-08-24 19:29:37'),
(70, 'Alfabeto LIBRAS', 26, 22, 'App que ensina o alfabeto em Libras de forma interativa.', 'https://apps.apple.com/br/app/alfabeto-libras/id1195602484', 0, '2024-08-24 19:29:37', '2024-08-24 19:29:37'),
(71, 'Extensões de Acessibilidade para Google Chrome', 27, 20, 'Catálogo de extensões para o navegador Google Chrome que aprimoram a acessibilidade à sites e apps online.', 'https://chromewebstore.google.com/category/extensions/make_chrome_yours/accessibility', 0, '2024-09-14 18:17:21', '2024-09-14 18:17:21');

-- --------------------------------------------------------

--
-- Estrutura para tabela `redirecionamentos`
--

CREATE TABLE `redirecionamentos` (
  `id` int NOT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `link_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estrutura para tabela `taxonomias`
--

CREATE TABLE `taxonomias` (
  `id` int NOT NULL,
  `titulo` varchar(34) NOT NULL,
  `slug` varchar(32) NOT NULL,
  `tipo` varchar(10) NOT NULL,
  `descricao` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Despejando dados para a tabela `taxonomias`
--

INSERT INTO `taxonomias` (`id`, `titulo`, `slug`, `tipo`, `descricao`, `created_at`, `updated_at`) VALUES
(1, 'Comunicação Assistiva', 'comunicacao-assistiva', 'tecnologia', 'As tecnologias de Comunicação Assistiva são fundamentais para alunos que têm dificuldades de fala ou são não-verbais, utilizando símbolos e textos para facilitar a comunicação. É essencial implementar essas ferramentas em salas de aula com alunos que possuem limitações severas de comunicação, sempre adaptando conforme as necessidades específicas de cada um. A personalização das pranchas de comunicação é um cuidado necessário para garantir a eficácia do uso. Essas tecnologias devem ser introduzidas na Educação Infantil, com adaptações contínuas no Ensino Fundamental - Anos Iniciais e Anos Finais à medida que os alunos crescem e desenvolvem novas habilidades.', '2024-08-24 17:57:45', '2024-08-24 17:57:45'),
(2, 'Libras: Aprendizagem', 'libras-aprendizagem', 'tecnologia', 'Os aplicativos de Libras: Aprendizagem são voltados para o ensino estruturado de Libras e auxiliam significativamente no processo de ensino em sala de aula. Eles são especialmente úteis como complementos ao ensino de Libras, sobretudo em atividades práticas. É importante que o material didático esteja sempre alinhado ao currículo oficial. A introdução dessas ferramentas é recomendada desde a Educação Infantil, seguindo para o Ensino Fundamental - Anos Iniciais e Anos Finais, para garantir uma progressão consistente no aprendizado de Libras ao longo dos anos escolares.', '2024-08-24 17:57:45', '2024-08-24 17:57:45'),
(3, 'Libras: Dicionários e Glossários', 'libras-dicionarios-glossarios', 'tecnologia', 'As ferramentas de Libras: Dicionários e Glossários desempenham um papel vital no aprendizado e aprimoramento do vocabulário em Libras para estudantes e professores. Elas são utilizadas para consultas rápidas durante as aulas e como material de apoio no aprendizado de novos sinais. É fundamental que os glossários estejam atualizados e adequados ao nível de conhecimento dos alunos. Essas tecnologias são recomendadas desde o Ensino Fundamental - Anos Iniciais, passando pelos Anos Finais, Ensino Médio e EJA, pois são importantes para todas as fases do aprendizado de Libras, do básico ao avançado.', '2024-08-24 17:57:45', '2024-08-24 17:57:45'),
(4, 'Libras: Tradução e Interpretação', 'libras-traducao-interpretacao', 'tecnologia', 'Na categoria Libras: Tradução e Interpretação, os aplicativos que traduzem texto em Libras e vice-versa são ferramentas que facilitam a comunicação entre surdos e ouvintes que não dominam Libras. Essas ferramentas são especialmente úteis em aulas com materiais textuais, ajudando na compreensão dos conteúdos. No entanto, é essencial confirmar a precisão das traduções e não depender exclusivamente dessas ferramentas em contextos complexos, onde um intérprete humano pode ser necessário. A recomendação de uso dessas tecnologias é para alunos do Ensino Fundamental - Anos Finais, Ensino Médio, Ensino Superior e EJA, uma vez que a tradução precisa de um bom entendimento do contexto, sendo mais adequada para alunos mais avançados.', '2024-08-24 17:57:45', '2024-08-24 17:57:45'),
(5, 'Outros', 'outros', 'tecnologia', 'Na categoria Outros, estão incluídas tecnologias assistivas que não se enquadram diretamente nas categorias mencionadas, mas que oferecem suporte em situações específicas, como emergências de comunicação. Essas ferramentas devem ser testadas em diferentes contextos para garantir sua eficácia antes de serem implementadas em sala de aula. A flexibilidade dessas tecnologias permite seu uso desde a Educação Infantil, passando pelo Ensino Fundamental - Anos Iniciais e Anos Finais, adaptando-se às diversas necessidades dos alunos ao longo do aprendizado.', '2024-08-24 17:57:45', '2024-08-24 17:57:45'),
(6, 'Transcrição de Fala', 'transcricao-de-fala', 'tecnologia', 'As tecnologias de Transcrição de Fala são ferramentas essenciais para a inclusão de surdos e deficientes auditivos em ambientes educacionais, pois convertem fala em texto em tempo real. Essas ferramentas são particularmente úteis em aulas expositivas, palestras e ambientes onde o áudio é crucial para a compreensão. No entanto, é importante garantir que a precisão das transcrições seja verificada, especialmente em ambientes com ruído. Essas tecnologias são recomendadas a partir do Ensino Fundamental - Anos Finais, pois a transcrição em tempo real requer que os alunos já possuam um nível avançado de leitura. No Ensino Médio, Ensino Superior e EJA, elas continuam sendo eficazes, proporcionando acessibilidade em aulas mais complexas e discussões acadêmicas.', '2024-08-24 17:57:45', '2024-08-24 17:57:45'),
(7, 'Videoconferência', 'videoconferencia', 'tecnologia', 'No contexto de Videoconferência, plataformas como Zoom, Microsoft Teams e Google Meet, que oferecem legendas automáticas, são essenciais para garantir a acessibilidade em aulas online ou híbridas. É crucial garantir que a ferramenta escolhida seja compatível com os dispositivos dos alunos e que todos tenham acesso adequado à internet. Essas tecnologias são mais indicadas para o Ensino Fundamental - Anos Finais, Ensino Médio, Ensino Superior e EJA, onde os alunos já têm habilidades de leitura e escrita consolidadas e podem se beneficiar plenamente dos recursos de acessibilidade.', '2024-08-24 17:57:45', '2024-08-24 17:57:45'),
(8, 'Educação Infantil', 'educacao-infantil', 'etapa', 'Na Educação Infantil, as crianças ainda estão desenvolvendo habilidades básicas de comunicação, e muitas delas podem não saber ler ou escrever. Nessa fase, é crucial o uso de tecnologias assistivas que utilizem símbolos, imagens e sons para facilitar a comunicação. Ferramentas de Comunicação Assistiva que oferecem comunicação pictográfica ou áudio são ideais. O uso de aplicativos com imagens grandes e coloridas que sejam intuitivos e interativos pode ajudar no desenvolvimento dessas habilidades. No entanto, é importante manter a simplicidade e evitar sobrecarregar os alunos com muitas opções. A supervisão constante é fundamental para garantir o uso correto da tecnologia.', '2024-08-24 17:57:45', '2024-08-24 17:57:45'),
(9, 'Ensino Fundamental - Anos Iniciais', 'ensino-fundamental-anos-iniciais', 'etapa', 'No Ensino Fundamental - Anos Iniciais, as crianças começam a desenvolver habilidades de leitura e escrita, mas ainda necessitam de suporte visual e auditivo. As tecnologias assistivas devem continuar a integrar imagens com textos e sons para apoiar a comunicação e o aprendizado de novas habilidades linguísticas. Ferramentas de Comunicação Assistiva são importantes para a criação de pranchas personalizadas e aplicativos de Libras: Aprendizagem podem ajudar no desenvolvimento de sinais. É essencial acompanhar o progresso dos alunos e utilizar os recursos visuais para reforçar a aprendizagem, garantindo que a tecnologia complemente suas habilidades linguísticas', '2024-08-24 17:57:45', '2024-08-24 17:57:45'),
(10, 'Ensino Fundamental - Anos Finais', 'ensino-fundamental-anos-finais', 'etapa', 'No Ensino Fundamental - Anos Finais, os alunos já possuem habilidades de leitura e escrita mais desenvolvidas, permitindo o uso de tecnologias que exigem maior autonomia e oferecem suporte para tarefas mais complexas. Ferramentas de Transcrição de Fala e de Libras: Tradução e Interpretação são altamente recomendadas para acompanhar aulas e atividades interativas. Nessa fase, é importante incentivar a independência dos alunos, mas também garantir que eles utilizem as ferramentas de maneira eficaz. O treinamento adequado no uso dessas tecnologias é essencial para maximizar seus benefícios.', '2024-08-24 17:57:45', '2024-08-24 17:57:45'),
(11, 'Ensino Médio', 'ensino-medio', 'etapa', 'No Ensino Médio, os alunos já têm maior domínio da linguagem escrita e possivelmente de Libras, e precisam de tecnologias que auxiliem na integração com o ambiente escolar e digital. Ferramentas de Videoconferência e Transcrição de Fala que oferecem legendagem automática e acessibilidade são fundamentais para garantir que os alunos possam participar ativamente das aulas, tanto presenciais quanto remotas. É importante garantir que as tecnologias estejam integradas ao currículo e que os alunos tenham uma conexão estável e conhecimento dos recursos de acessibilidade disponíveis.', '2024-08-24 17:57:45', '2024-08-24 17:57:45'),
(12, 'Ensino Superior', 'ensino-superior', 'etapa', 'No Ensino Superior, os alunos necessitam de ferramentas que permitam uma participação ativa em discussões acadêmicas e atividades complexas, como pesquisas e apresentações. Ferramentas de Transcrição de Fala e Videoconferência são essenciais para garantir a acessibilidade em aulas e seminários. O uso autônomo dessas tecnologias é esperado, mas o suporte contínuo e o treinamento são importantes para que os alunos consigam maximizar os benefícios e acompanhar conteúdos acadêmicos complexos.', '2024-08-24 17:57:45', '2024-08-24 17:57:45'),
(13, 'EJA', 'eja', 'etapa', 'Na Educação de Jovens e Adultos (EJA), os alunos podem ter variados níveis de alfabetização e familiaridade com tecnologia, tornando crucial o uso de ferramentas que ofereçam suporte adaptável. Ferramentas de Comunicação Assistiva e Transcrição de Fala devem ser ajustadas para diferentes níveis de alfabetização, permitindo uma adaptação ao contexto de vida dos alunos. É importante considerar as limitações tecnológicas e fornecer suporte adicional, garantindo que todos os alunos consigam utilizar as ferramentas de maneira eficiente e possam integrar-se ao ambiente digital.', '2024-08-24 17:57:45', '2024-08-24 17:57:45'),
(14, 'Grátis', 'gratis', 'custo', 'Recurso de acesso livre e gratuito.', '2024-08-24 17:57:45', '2024-08-24 17:57:45'),
(15, 'Pago', 'pago', 'custo', 'Recurso pago.', '2024-08-24 17:57:45', '2024-08-24 17:57:45'),
(16, 'Freemium', 'freemium', 'custo', 'Algumas funcionalidades são liberadas, mas podem conter limitações. Consulte o site oficial do site/aplicativo para mais informações.', '2024-08-24 17:57:45', '2024-08-24 17:57:45'),
(17, 'Sim', 'sim', 'internet', 'Necessário conexão com a internet para uso das funcionalidades.', '2024-08-24 17:57:45', '2024-08-24 17:57:45'),
(18, 'Não', 'nao', 'internet', 'Não é necessário ter conexão com a internet para uso das funcionalidades.', '2024-08-24 17:57:45', '2024-08-24 17:57:45'),
(19, 'Parcialmente', 'parcialmente', 'internet', 'Algumas funcionalidades podem ser usadas sem internet, ou requer internet para download prévio do conteúdo que será usado offline. Consulte o site oficial do site/aplicativo para mais informações.', '2024-08-24 17:57:45', '2024-08-24 17:57:45'),
(20, 'Acessibilidade', 'acessibilidade', 'recurso', 'Esta lista abrange uma variedade de ferramentas e recursos que promovem a acessibilidade para pessoas surdas. Ela inclui aplicativos, plataformas e funcionalidades que melhoram a comunicação, a interação e o acesso ao conteúdo educacional. Esses recursos são essenciais para garantir que alunos surdos possam participar plenamente das atividades escolares e desenvolver habilidades linguísticas e acadêmicas.', '2024-08-24 17:57:45', '2024-08-24 20:27:59'),
(21, 'Curso de Libras', 'curso-de-libras', 'recurso', 'Algumas opções de formação em Língua Brasileira de Sinais (Libras). Os cursos variam desde níveis introdutórios até formações mais avançadas e especializadas, oferecidos por universidades, institutos e outras organizações. Esses cursos são fundamentais para professores, estudantes e profissionais que buscam aprender ou aprimorar suas habilidades em Libras, promovendo a inclusão e o ensino acessível.', '2024-08-24 17:57:45', '2024-08-24 20:28:02'),
(22, 'Educação em Libras', 'educacao-em-libras', 'recurso', 'Lista de itens focados no ensino da Libras e em recursos educativos para apoiar o aprendizado da Língua de Sinais. Inclui plataformas, vídeos, jogos e manuais que facilitam o ensino e a aprendizagem da Libras em diversos contextos educacionais. Esses recursos são essenciais para integrar a Libras no currículo escolar e auxiliar tanto alunos surdos quanto ouvintes a se comunicarem de forma inclusiva.', '2024-08-24 17:57:45', '2024-08-24 20:28:06'),
(23, 'Formação de Professores', 'formacao-de-professores', 'recurso', 'Lista de recursos e cursos voltados para a formação de professores em práticas inclusivas e no uso de tecnologia assistiva. Esses materiais visam capacitar os educadores para trabalhar de forma mais eficaz com alunos surdos, garantindo que eles tenham acesso equitativo à educação. A formação continuada dos professores é crucial para criar ambientes de aprendizagem inclusivos e acessíveis.', '2024-08-24 17:57:45', '2024-08-24 20:28:10'),
(24, 'Materiais Pedagógicos', 'materiais-pedagogicos', 'recurso', 'Uma coleção de recursos didáticos adaptados para o ensino de surdos. Inclui atividades, cadernos de apoio, manuais, jogos e plataformas digitais que são projetados para atender às necessidades específicas dos alunos surdos. Esses materiais são essenciais para o desenvolvimento de práticas pedagógicas que respeitem as particularidades dos alunos e promovam uma educação inclusiva e de qualidade.', '2024-08-24 17:57:45', '2024-08-24 20:28:13'),
(25, 'Android', 'android', 'plataforma', NULL, '2024-08-24 19:22:36', '2024-08-24 19:22:36'),
(26, 'iOS', 'ios', 'plataforma', NULL, '2024-08-24 19:22:36', '2024-08-24 19:22:36'),
(27, 'Site', 'site', 'plataforma', NULL, '2024-08-24 19:22:36', '2024-08-24 19:22:36'),
(28, 'Windows', 'windows', 'plataforma', NULL, '2024-08-24 19:22:36', '2024-08-24 19:22:36'),
(29, 'Youtube', 'youtube', 'plataforma', NULL, '2024-08-24 19:22:36', '2024-08-24 19:22:36'),
(30, 'MacOS', 'mac', 'plataforma', NULL, '2024-08-29 14:30:50', '2024-08-29 14:30:50'),
(31, 'Linux', 'linux', 'plataforma', NULL, '2024-08-29 14:30:50', '2024-08-29 14:30:50'),
(32, 'SmartWatch', 'smartwatch', 'plataforma', NULL, '2024-08-29 14:31:26', '2024-08-29 14:31:26'),
(33, 'TV', 'tv', 'plataforma', NULL, '2024-08-29 14:31:26', '2024-08-29 14:31:26');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tecnologias`
--

CREATE TABLE `tecnologias` (
  `id` int NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `categoria_id` int NOT NULL,
  `custo_id` int DEFAULT NULL,
  `requer_internet_id` int DEFAULT NULL,
  `autor` varchar(255) DEFAULT NULL,
  `autor_contato` varchar(255) DEFAULT NULL,
  `slug` varchar(155) DEFAULT NULL,
  `imagem` varchar(155) DEFAULT NULL,
  `descricao` text NOT NULL,
  `orientacao` text,
  `dicas` text,
  `etapas_justificativa` text,
  `indicado_por` text,
  `acessos` int DEFAULT '0',
  `destaque` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Despejando dados para a tabela `tecnologias`
--

INSERT INTO `tecnologias` (`id`, `titulo`, `categoria_id`, `custo_id`, `requer_internet_id`, `autor`, `autor_contato`, `slug`, `imagem`, `descricao`, `orientacao`, `dicas`, `etapas_justificativa`, `indicado_por`, `acessos`, `destaque`, `created_at`, `updated_at`) VALUES
(1, 'Transcrição Instantânea', 6, 14, 19, 'Google', '', 'transcricao-instantanea', 'transcricao-instantanea.jpg', 'A Transcrição Instantânea é uma tecnologia assistiva que utiliza smartphones ou tablets Android para transcrever falas e sons em tempo real, tornando as conversas e sons mais acessíveis para pessoas surdas ou com perda auditiva. Em contextos educacionais, essa tecnologia pode ser usada em salas de aula para facilitar a comunicação e o acompanhamento de conteúdo, permitindo que estudantes surdos sigam as aulas em tempo real, sem depender exclusivamente de intérpretes de Libras.', 'Para obter o máximo da ferramenta, é importante garantir que o dispositivo esteja configurado corretamente e que o microfone capte o som de maneira clara. Utilize microfones externos para melhorar a qualidade do áudio. Evite depender exclusivamente da transcrição em ambientes barulhentos, pois a qualidade da transcrição pode ser prejudicada. Além disso, recomenda-se revisar o texto transcrito para corrigir possíveis erros.', 'Utilize a transcrição instantânea em atividades de leitura e escrita para apoiar estudantes surdos na compreensão do conteúdo. É recomendada em atividades que envolvam discussões em grupo, apresentações orais ou explicações do professor. No entanto, evite seu uso exclusivo em aulas de ciências, onde a visualização de demonstrações práticas é essencial, pois a transcrição pode não capturar completamente o contexto visual.', 'A tecnologia é mais adequada para alunos que já possuem habilidades de leitura, o que normalmente ocorre a partir do Ensino Fundamental. Nos anos iniciais, pode ser utilizada para auxiliar no desenvolvimento da leitura e escrita, enquanto nos anos finais e no Ensino Médio, pode apoiar na compreensão de conteúdos mais complexos. A tecnologia pode não ser adequada para Educação Infantil, onde a oralidade e a visualização são mais importantes, e para estudantes de EJA, dependendo de suas habilidades de leitura.', NULL, 0, 1, '2024-08-24 18:42:54', '2024-09-14 15:48:23'),
(2, 'Speech To Text | Voice To Text', 6, 16, 17, 'STCodesApp', 'https://stcodesapp.web.app/', 'speech-to-text-voice-to-text', 'speech-to-text-voice-to-text.jpg', 'O Speech To Text é um aplicativo online que converte fala em texto em tempo real, oferecendo suporte para mais de 30 idiomas. Como tecnologia assistiva, pode ser usado por pessoas surdas para acompanhar falas em sala de aula, permitindo que elas acompanhem as explicações em tempo real por meio de transcrições automáticas. O aplicativo também permite salvar o texto transcrito como arquivo de texto ou PDF.', 'Para obter o máximo da ferramenta, é importante garantir um ambiente silencioso, pois ruídos podem interferir na qualidade da transcrição. Fale de maneira clara e pausada para aumentar a precisão do reconhecimento de fala. Como o aplicativo requer conexão à internet, é necessário assegurar uma conexão estável durante o uso. Em ambientes educacionais, é aconselhável revisar as transcrições para corrigir possíveis erros de reconhecimento.', 'O aplicativo é útil em atividades que envolvam palestras, discussões ou apresentações orais, onde a transcrição em tempo real pode auxiliar na compreensão do conteúdo. Contudo, não é recomendado em atividades que envolvam terminologias técnicas complexas ou em situações com muitos ruídos, como em laboratórios de ciências. A revisão do texto transcrito é fundamental para garantir a precisão das informações.', 'A tecnologia é mais adequada para estudantes que já possuem habilidades de leitura e interpretação de textos, normalmente a partir dos anos finais do Ensino Fundamental. No Ensino Médio e Superior, pode ser uma ferramenta valiosa para acompanhamento de aulas expositivas. Para a EJA, depende do nível de letramento dos estudantes.', NULL, 14, 1, '2024-08-24 18:42:54', '2024-09-14 15:49:19'),
(3, 'Transcreva ao vivo', 6, 15, 19, 'Evgeniy Labunchak', '', 'transcreva-ao-vivo', 'transcreva-ao-vivo.jpg', 'O \'Transcreva ao vivo\' é um aplicativo de voz para texto para dispositivos iOS, projetado para transcrever falas em tempo real. Com suporte para mais de 60 idiomas, o aplicativo pode ser usado como tecnologia assistiva para pessoas surdas ou com deficiência auditiva em sala de aula, permitindo a legendagem ao vivo e a criação de notas a partir de falas. O aplicativo oferece suporte offline para mais de 10 idiomas e permite salvar e compartilhar transcrições.', 'Para obter o máximo da ferramenta, utilize um fone de ouvido Bluetooth para melhorar a precisão em ambientes barulhentos. Certifique-se de configurar o idioma correto para a transcrição e ajuste o tamanho do texto para facilitar a leitura. Como o aplicativo tem compras internas, verifique a necessidade de uma assinatura para usar todos os recursos. Em sala de aula, revise as transcrições para garantir a precisão do conteúdo.', 'O aplicativo é indicado para atividades em sala de aula que envolvam palestras e discussões, onde a transcrição ao vivo pode ajudar a acompanhar o conteúdo. Não é recomendado para atividades que exijam muita interação visual ou demonstrações práticas, como aulas de ciências. A funcionalidade offline pode ser útil em áreas com acesso limitado à internet.', 'A tecnologia é mais adequada para estudantes que já possuem habilidades de leitura e interpretação de textos, normalmente a partir dos anos finais do Ensino Fundamental. No Ensino Médio e Superior, pode ser uma ferramenta valiosa para acompanhar aulas expositivas. Para a EJA, depende do nível de letramento dos estudantes.', NULL, 0, 0, '2024-08-24 18:42:54', '2024-09-14 15:48:23'),
(4, 'SENAI Libras', 3, 14, 19, 'Senai Nacional', 'https://senai-libras.senai.br/', 'senai-libras', 'senai-libras.jpg', 'O SENAI LIBRAS é um aplicativo que funciona como glossário de termos técnicos acessíveis em formato 3D. Com milhares de vocábulos, o app foi desenvolvido para apoiar docentes, alunos e profissionais do SENAI na tradução de termos técnicos da língua portuguesa para Libras. A tecnologia é uma ferramenta importante para otimizar os processos de comunicação em ambientes educacionais, especialmente em cursos de educação profissional, facilitando o acesso de pessoas com deficiência auditiva/surdas ao conteúdo técnico.', 'Para maximizar o uso da ferramenta, é importante que o usuário explore as diferentes áreas técnicas disponíveis no aplicativo. Ao utilizar o app em sala de aula, é recomendado verificar previamente se o termo técnico específico está disponível no glossário. Evite depender exclusivamente do app, complementando-o com outros recursos de Libras e garantindo a disponibilidade de uma boa conexão à internet, já que algumas funcionalidades podem não estar disponíveis offline.', 'O aplicativo é indicado para uso em cursos técnicos e profissionalizantes, onde há uma necessidade constante de tradução de termos específicos. Pode ser utilizado durante aulas práticas e teóricas para facilitar a compreensão de conceitos técnicos. No entanto, não é recomendado como único recurso em áreas ainda não cobertas pelo app, como a saúde, ou em contextos onde a Libras do cotidiano é suficiente.', 'A tecnologia é especialmente útil em cursos técnicos e profissionalizantes, que são mais comuns a partir do Ensino Médio e na EJA. No Ensino Superior, também pode ser aplicada em cursos que exigem a compreensão de termos técnicos específicos. Não é recomendada para a Educação Infantil e os primeiros anos do Ensino Fundamental, onde o foco está no aprendizado básico da Libras.', NULL, 0, 0, '2024-08-24 18:42:54', '2024-09-14 15:48:23'),
(5, 'Spread The Sign', 3, 16, 19, 'Europeiskt Teckenspråkcenter', 'http://www.signlanguage.eu/en/', 'spread-the-sign', 'spread-the-sign.jpg', 'O \'Spread The Sign\' é o maior dicionário de línguas gestuais do mundo, com mais de 200.000 gestos em diversas línguas de sinais, incluindo a Libras. O aplicativo possibilita a tradução de palavras para diferentes línguas de sinais através de vídeos, tornando-se uma importante ferramenta de acessibilidade para pessoas surdas. É especialmente útil em contextos educacionais, permitindo que estudantes surdos aprendam ou comparem gestos em diversas línguas de sinais, enriquecendo sua compreensão cultural e linguística.', 'Para obter o máximo da ferramenta, é recomendável que os usuários explorem as diversas línguas de sinais disponíveis no aplicativo e aproveitem a funcionalidade de tradução de palavras para diferentes contextos. No entanto, é importante estar ciente de que o aplicativo pode não incluir todos os regionalismos da Libras, e revisar os vídeos várias vezes pode ser necessário. Uma conexão estável à internet é fundamental, pois o app não oferece suporte completo offline.', 'O aplicativo é recomendado para uso em aulas de idiomas ou em atividades de inclusão, onde a comparação entre diferentes línguas de sinais pode enriquecer o aprendizado. Pode ser particularmente útil em atividades que incentivam a pesquisa e a descoberta de novos gestos. No entanto, deve-se evitar confiar exclusivamente no aplicativo em regiões com variações significativas de Libras ou em contextos onde o aplicativo não oferece cobertura completa.', 'A tecnologia é mais adequada para alunos que já possuem habilidades básicas de Libras e estão interessados em expandir seu conhecimento em outras línguas de sinais. No Ensino Médio e Superior, o aplicativo pode complementar cursos de tradução e interpretação. Para a EJA, pode ser uma ferramenta de apoio, dependendo do nível de letramento em Libras.', NULL, 1, 1, '2024-08-24 18:42:54', '2024-09-18 01:04:37'),
(6, 'Dicionário da Língua Brasileira de Sinais V3 - 2011', 3, 14, 19, 'Instituto Nacional de Educação de Surdos - INES', 'https://www.gov.br/ines/pt-br', 'dicionario-da-lingua-brasileira-de-sinais-2011', 'dicionario-da-lingua-brasileira-de-sinais-2011.jpg', 'O \'Dicionário da Língua Brasileira de Sinais V3 - 2011\' é um dicionário bilíngue, Português x Libras e Libras x Português, que oferece 8.000 sinais em vídeos animados. Criado por especialistas, o dicionário serve como uma ferramenta de apoio à educação de alunos surdos e como referência para pais, professores e a comunidade em geral. Disponível online através do site do INES, o dicionário é pioneiro na apresentação da Libras em formato virtual, facilitando a visualização dos sinais e sua aplicabilidade em contextos reais.', 'Para maximizar o uso da ferramenta, é recomendado que os usuários explorem as diferentes funcionalidades de busca por palavra, assunto, letra do alfabeto e configuração de mão. Em sala de aula, é importante utilizar o dicionário como complemento a outras atividades educativas, garantindo que os estudantes compreendam o contexto de uso dos sinais apresentados. O uso offline pode ser limitado, portanto, certifique-se de ter acesso à internet para aproveitar todos os recursos disponíveis.', 'O dicionário é indicado para atividades de aprendizagem de Libras e para o ensino de novos vocábulos em sala de aula. Pode ser utilizado para exercícios de tradução e compreensão de frases em Libras. No entanto, não é recomendado como única fonte de aprendizado, especialmente para áreas que requerem uma abordagem prática da língua de sinais. Complementar com atividades interativas pode melhorar a absorção do conteúdo.', 'O dicionário é mais adequado para estudantes que já possuem conhecimentos básicos de Libras e desejam expandir seu vocabulário. Nos anos finais do Ensino Fundamental e no Ensino Médio, pode ser utilizado para introduzir novos sinais e contextos de uso. No Ensino Superior e na EJA, é uma ferramenta de apoio para cursos que envolvem a tradução e interpretação de Libras.', NULL, 0, 0, '2024-08-24 18:42:54', '2024-09-14 15:48:23'),
(7, 'ACESSIBILIDADE NA CÂMARA: Dicionário de Libras', 3, 14, 17, 'Câmara dos Deputados', '', 'acessibilidade-na-camara-dicionario-de-libras', 'acessibilidade-na-camara-dicionario-de-libras.jpg', 'O \'ACESSIBILIDADE NA CÂMARA: Dicionário de Libras\' é um dicionário de termos político-legislativos em Libras, disponível no site da Câmara dos Deputados. Com mais de 1.200 sinais em vídeos animados, o dicionário visa facilitar o entendimento da comunidade surda sobre o papel do Legislativo e as atividades dos deputados, sendo uma ferramenta de educação político-legislativa e de cidadania. O projeto é fruto de uma parceria entre a Câmara, a UFPB e o MPOG, e é parte do projeto Suíte VLibras, que amplia o acesso a conteúdos digitais para Libras.', 'Para maximizar o uso da ferramenta, é recomendado que os usuários explorem as diferentes funcionalidades de busca por palavra, assunto, letra do alfabeto e configuração de mão. Em sala de aula, é importante utilizar o dicionário como complemento a outras atividades educativas, garantindo que os estudantes compreendam o contexto de uso dos sinais apresentados. O uso offline pode ser limitado, portanto, certifique-se de ter acesso à internet para aproveitar todos os recursos disponíveis.', 'O dicionário é indicado para atividades de aprendizagem de Libras e para o ensino de novos vocábulos em sala de aula. Pode ser utilizado para exercícios de tradução e compreensão de frases em Libras. No entanto, não é recomendado como única fonte de aprendizado, especialmente para áreas que requerem uma abordagem prática da língua de sinais. Complementar com atividades interativas pode melhorar a absorção do conteúdo.', 'O dicionário é mais adequado para estudantes que já possuem conhecimentos básicos de Libras e desejam expandir seu vocabulário. Nos anos finais do Ensino Fundamental e no Ensino Médio, pode ser utilizado para introduzir novos sinais e contextos de uso. No Ensino Superior e na EJA, é uma ferramenta de apoio para cursos que envolvem a tradução e interpretação de Libras.', NULL, 1, 0, '2024-08-24 18:42:54', '2024-10-11 14:14:43'),
(8, 'Sinalário em Libras', 2, 14, 17, 'Bilingua Consultoria', '', 'sinalario-em-libras', 'sinalario-em-libras.jpg', 'O \'Sinalário em Libras\' é um aplicativo que lista palavras em Língua Portuguesa e mostra o sinal correspondente em Libras através de vídeos. O objetivo é promover a comunicação entre surdos e ouvintes, utilizando processos de gamificação e métricas de ensino baseadas na BNCC (Base Nacional Comum Curricular). A tecnologia busca resolver a dificuldade de comunicação e aquisição linguística do aluno surdo de forma atraente, simples e divertida.', 'Para obter o máximo da ferramenta, é recomendável utilizar o aplicativo em ambientes com boa conexão à internet, pois a lentidão relatada por alguns usuários pode prejudicar a experiência. Em sala de aula, o sinalário pode ser usado como um complemento no ensino de Libras, auxiliando na memorização dos sinais. Evite depender exclusivamente do aplicativo para o ensino, combinando-o com outras metodologias e recursos educativos.', 'O aplicativo é indicado para atividades que envolvam a introdução de novos vocábulos em Libras, podendo ser utilizado em dinâmicas de grupo ou como recurso de reforço em atividades de memorização. No entanto, não é recomendado para atividades que exigem rapidez na consulta de sinais devido à lentidão reportada por alguns usuários.', 'A tecnologia é adequada para alunos em processo de aquisição linguística e que estão começando a aprender Libras. Nos anos iniciais e finais do Ensino Fundamental, o sinalário pode ajudar na introdução e reforço de vocabulário básico. Em níveis mais avançados, outras ferramentas mais complexas podem ser necessárias.', NULL, 0, 1, '2024-08-24 18:42:54', '2024-09-14 15:48:23'),
(9, 'Quiz de Libras', 2, 14, 18, 'Al Apps', '', 'quiz-de-libras', 'quiz-de-libras.jpg', 'O \'Quiz de Libras\' é um aplicativo educativo que auxilia no aprendizado do alfabeto e dos números em Libras (Língua Brasileira de Sinais). O app oferece quizzes com questões de múltipla escolha e verdadeiro ou falso para testar o conhecimento do usuário. Além disso, há um módulo de aprendizado onde são mostrados todos os sinais, permitindo ao usuário fixar melhor o conteúdo. A tecnologia é útil para auxiliar a escrita e leitura em Libras, especialmente para iniciantes.', 'Para obter o máximo da ferramenta, é recomendado que os usuários explorem o módulo de aprendizado antes de iniciar os quizzes, garantindo uma base sólida de conhecimento. Em sala de aula, o aplicativo pode ser usado como complemento em atividades de alfabetização e reforço de números. Como o aplicativo é voltado para iniciantes, é importante que seja utilizado em conjunto com outros recursos de ensino de Libras para uma compreensão mais ampla da língua.', 'O aplicativo é indicado para atividades lúdicas e interativas que envolvam a introdução do alfabeto e números em Libras. Pode ser utilizado em dinâmicas de grupo ou como ferramenta de reforço em atividades individuais. No entanto, deve-se evitar seu uso exclusivo em etapas mais avançadas de aprendizado, pois o conteúdo pode ser limitado para essas fases.', 'A tecnologia é adequada para alunos que estão em fase inicial de aprendizado de Libras, focando na introdução de vocabulário básico como letras e números. Nas etapas iniciais do Ensino Fundamental, o aplicativo pode ser um recurso valioso para reforçar o aprendizado de forma lúdica e interativa.', NULL, 1, 0, '2024-08-24 18:42:54', '2024-10-11 13:53:34'),
(10, 'Libras Para Todos', 2, 14, 17, 'WEBMATTE SOLUÇÕES WEB', '', 'libras-para-todos', 'libras-para-todos.jpg', 'O \'Libras Para Todos\' é um aplicativo que oferece acesso a mais de 5.700 palavras em Libras, além de permitir o aprendizado do alfabeto manual e dos números em Libras. O aplicativo também inclui um teclado de escrita em Libras, proporcionando uma experiência interativa para os usuários que desejam treinar seus conhecimentos. A ferramenta é útil para auxiliar a comunicação e o aprendizado de Libras, especialmente em contextos educacionais.', 'Para obter o máximo da ferramenta, é recomendável explorar as diferentes funcionalidades do aplicativo, como o dicionário e o teclado de Libras. Em sala de aula, o app pode ser usado como um recurso complementar para o ensino de novos sinais e para reforçar o vocabulário já aprendido. No entanto, é importante combinar o uso do aplicativo com atividades práticas e interativas para garantir uma aprendizagem mais completa.', 'O aplicativo é indicado para atividades de introdução e reforço de vocabulário em Libras, podendo ser utilizado em dinâmicas de grupo ou como ferramenta de estudo individual. No entanto, deve-se evitar seu uso exclusivo para o aprendizado de frases completas, pois o app foca mais em palavras isoladas e sinais básicos. É recomendado combinar o uso do app com outras ferramentas e metodologias.', 'A tecnologia é adequada para alunos em diferentes etapas do aprendizado de Libras, desde os anos iniciais do Ensino Fundamental até o Ensino Médio e EJA, especialmente para introdução e reforço de vocabulário básico. O teclado de Libras pode ser útil para praticar a escrita e leitura em Libras, especialmente em etapas mais avançadas.', NULL, 44, 0, '2024-08-24 18:42:54', '2024-09-23 16:22:46'),
(11, 'LibrasTI', 3, 14, 18, 'PET-SI/UFRRJ', '', 'librasti', 'librasti.jpg', 'O \'LibrasTI\' é um aplicativo desenvolvido pelo PET-SI/UFRRJ em parceria com o NAPNE do IFSC, com o objetivo de promover a inclusão de surdos no campo tecnológico. O aplicativo oferece um glossário de termos técnicos da área de tecnologia da informação em Libras, através de vídeos que mostram os sinais correspondentes. Voltado para a plataforma Android, o LibrasTI é totalmente gratuito e pode ser utilizado offline, o que permite seu uso em qualquer lugar. A ferramenta é destinada a alunos, professores e profissionais da área de TI.', 'Para obter o máximo da ferramenta, é recomendável que os usuários explorem as diferentes categorias de termos disponíveis no glossário e utilizem o aplicativo como um recurso complementar ao ensino de tecnologia da informação. Em sala de aula, o LibrasTI pode ser usado para introduzir e reforçar vocabulário técnico em Libras, sendo especialmente útil em cursos de informática e disciplinas relacionadas. Como o app é offline, certifique-se de ter baixado todo o conteúdo necessário antes de utilizá-lo.', 'O aplicativo é indicado para atividades que envolvem o ensino de termos técnicos em tecnologia da informação, podendo ser utilizado em dinâmicas de grupo ou como recurso de estudo individual. No entanto, deve-se evitar seu uso exclusivo em áreas onde o vocabulário técnico é mais extenso ou complexo, complementando com outras ferramentas e recursos de Libras.', 'A tecnologia é adequada para alunos que estão em etapas mais avançadas de aprendizado e que já possuem um conhecimento básico de Libras. O LibrasTI é especialmente útil em cursos técnicos e de graduação na área de tecnologia da informação, onde há uma necessidade constante de compreender e utilizar termos técnicos em Libras.', NULL, 0, 0, '2024-08-24 18:42:54', '2024-09-14 15:48:23'),
(12, 'Dicionário de Sinais da Área de Tecnologia', 3, 14, 17, 'FESAI', '', 'dicionario-de-sinais-da-area-de-tecnologia', 'dicionario-de-sinais-da-area-de-tecnologia.jpg', 'O \'Dicionário de Sinais da Área de Tecnologia\' é um site que oferece cerca de 100 sinais específicos relacionados à tecnologia e informática em Libras. Criado para atender às necessidades de profissionais surdos, tradutores e intérpretes de Libras, bem como estudantes de áreas tecnológicas, o dicionário visa facilitar a tradução e interpretação de termos técnicos, promovendo a inclusão e o desenvolvimento profissional de pessoas surdas. O site também serve como um recurso de consulta para profissionais da área.', 'Para obter o máximo da ferramenta, é recomendável que os usuários explorem os sinais disponíveis no site antes de utilizá-los em contextos educacionais ou profissionais. Em sala de aula, o dicionário pode ser utilizado como um recurso de apoio ao ensino de tecnologia, especialmente em disciplinas de informática. Como o site é uma ferramenta de consulta, é importante complementar seu uso com outras metodologias e recursos para garantir uma compreensão mais ampla dos conceitos.', 'O dicionário é indicado para atividades que envolvam o ensino de tecnologia e informática em Libras, podendo ser utilizado em aulas práticas e teóricas para facilitar a compreensão de termos técnicos. No entanto, deve-se evitar o uso exclusivo do dicionário, complementando com outras ferramentas educativas que abordem diferentes aspectos da área tecnológica.', 'A tecnologia é mais adequada para alunos que já possuem conhecimentos básicos de Libras e que estão em processo de aprofundamento em áreas tecnológicas. Nos anos finais do Ensino Fundamental e no Ensino Médio, o dicionário pode ser utilizado para introduzir e reforçar termos técnicos. No Ensino Superior e na EJA, é uma ferramenta de apoio para cursos que envolvem informática e tecnologia.', NULL, 0, 0, '2024-08-24 18:42:54', '2024-09-14 15:48:23'),
(13, 'Dicionário da Língua Brasileira de Sinais', 6, 15, 19, 'Instituto Nacional de Educação de Surdos - INES', 'https://www.gov.br/ines/pt-br', 'dicionario-da-lingua-brasileira-de-sinais', 'dicionario-da-lingua-brasileira-de-sinais.jpg', 'O \'Dicionário da Língua Brasileira de Sinais V3 - 2011\' é um dicionário bilíngue, Português x Libras e Libras x Português, que oferece 8.000 sinais em vídeos animados. Criado por especialistas, o dicionário serve como uma ferramenta de apoio à educação de alunos surdos e como referência para pais, professores e a comunidade em geral. Disponível online através do site do INES, o dicionário é pioneiro na apresentação da Libras em formato virtual, facilitando a visualização dos sinais e sua aplicabilidade em contextos reais.', 'Para maximizar o uso da ferramenta, é recomendado que os usuários explorem as diferentes funcionalidades de busca por palavra, assunto, letra do alfabeto e configuração de mão. Em sala de aula, é importante utilizar o dicionário como complemento a outras atividades educativas, garantindo que os estudantes compreendam o contexto de uso dos sinais apresentados. O uso offline pode ser limitado, portanto, certifique-se de ter acesso à internet para aproveitar todos os recursos disponíveis.', 'O dicionário é indicado para atividades de aprendizagem de Libras e para o ensino de novos vocábulos em sala de aula. Pode ser utilizado para exercícios de tradução e compreensão de frases em Libras. No entanto, não é recomendado como única fonte de aprendizado, especialmente para áreas que requerem uma abordagem prática da língua de sinais. Complementar com atividades interativas pode melhorar a absorção do conteúdo.', 'O dicionário é mais adequado para estudantes que já possuem conhecimentos básicos de Libras e desejam expandir seu vocabulário. Nos anos finais do Ensino Fundamental e no Ensino Médio, pode ser utilizado para introduzir novos sinais e contextos de uso. No Ensino Superior e na EJA, é uma ferramenta de apoio para cursos que envolvem a tradução e interpretação de Libras.', NULL, 1, 1, '2024-08-24 18:42:54', '2024-09-15 15:38:52'),
(14, 'Ava: Transcriptions & Captions', 6, 16, 17, 'Ava Accessibility', '', 'ava', 'ava.jpg', 'O \'Ava: Transcriptions & Captions\' é um aplicativo que utiliza legendas ao vivo para transcrever voz em texto em tempo real, proporcionando acessibilidade para pessoas surdas ou com perda auditiva. O aplicativo pode ser utilizado em diversas situações, como salas de aula, reuniões de negócios, consultas médicas e eventos. Ava oferece transcrições de áudio em tempo real, com uma taxa de erro de aproximadamente 5 em cada 100 palavras. Com o recurso Ava Scribe, a precisão pode chegar a 1 erro em cada 100 palavras.', 'Para obter o máximo da ferramenta, é recomendável que os usuários explorem os recursos de personalização de vocabulário e correção de palavras, para melhorar a precisão das transcrições. Em ambientes educacionais, Ava pode ser utilizado para transcrever aulas e palestras, garantindo que os alunos surdos não percam informações importantes. No entanto, é importante garantir que o microfone esteja posicionado corretamente e que o ambiente seja silencioso para melhorar a qualidade da transcrição.', 'O aplicativo é indicado para aulas expositivas, conferências e situações onde a compreensão auditiva é essencial. Pode ser utilizado para acompanhar podcasts, vídeos ao vivo e conversas em grupo. No entanto, deve-se evitar o uso exclusivo de Ava em ambientes com muito ruído, onde a precisão da transcrição pode ser comprometida. Além disso, é importante complementar o uso do aplicativo com outras formas de comunicação, como materiais visuais.', 'A tecnologia é adequada para alunos que já possuem habilidades de leitura e podem acompanhar transcrições em tempo real. Nos anos finais do Ensino Fundamental e no Ensino Médio, o aplicativo pode ser utilizado para apoiar a compreensão de conteúdos mais complexos. No Ensino Superior e na EJA, é uma ferramenta valiosa para acompanhamento de aulas e palestras.', NULL, 3, 1, '2024-08-24 18:42:54', '2024-09-23 15:47:17'),
(15, 'Live Transcribe', 6, 14, 18, 'Mighty Fine Apps LLC', 'https://www.livetranscribe.app/', 'live-transcribe', 'live-transcribe.jpg', 'O \'Live Transcribe\' é um aplicativo de legendagem ao vivo que transcreve a fala em texto em tempo real, oferecendo suporte em mais de 70 idiomas. Desenvolvido para ser simples e fácil de usar, é uma ferramenta essencial para pessoas surdas ou com perda auditiva, permitindo a comunicação em diversos contextos, como salas de aula, consultas médicas e reuniões. O aplicativo também oferece suporte offline para 9 idiomas, tornando-o útil em locais sem acesso à internet.', 'Para maximizar o uso do Live Transcribe, é importante garantir que o microfone esteja posicionado adequadamente e que o ambiente seja silencioso para aumentar a precisão da transcrição. Utilize o recurso de personalização de texto para ajustar o tamanho e o layout da transcrição conforme necessário. Em sala de aula, o aplicativo pode ser uma excelente ferramenta para acompanhar palestras e aulas expositivas, garantindo que os estudantes surdos tenham acesso completo às informações.', 'O aplicativo é recomendado para atividades como palestras, discussões em grupo e qualquer situação onde a compreensão auditiva seja crucial. Também pode ser usado para acompanhar vídeos e conversas ao vivo. No entanto, em ambientes ruidosos, é importante complementar o uso do aplicativo com outros recursos, como materiais visuais, para garantir a compreensão total.', 'A tecnologia é mais adequada para alunos que possuem habilidades de leitura e conseguem acompanhar transcrições em tempo real. Nas etapas mais avançadas, como Ensino Médio e Superior, o Live Transcribe pode ser uma ferramenta valiosa para garantir que os alunos não percam informações importantes durante as aulas.', NULL, 0, 1, '2024-08-24 18:42:54', '2024-09-14 15:48:23'),
(16, 'Microsoft Translate', 6, 14, 18, 'Microsoft', '', 'microsoft-translate', 'microsoft-translate.jpg', 'O \'Microsoft Translate\' é um aplicativo de tradução pessoal gratuito que suporta mais de 70 idiomas, permitindo a tradução de texto, voz, conversas, fotos e capturas de tela. Pode ser utilizado para transcrever fala em texto e transformar texto em voz, tornando-se uma ferramenta útil para pessoas surdas em diferentes contextos, como sala de aula, reuniões e viagens. O aplicativo também permite o download de idiomas para uso offline, o que amplia sua utilidade em locais sem conexão à internet.', 'Para obter o máximo da ferramenta, recomenda-se explorar os recursos de tradução de voz e texto e testar a funcionalidade de transcrição para garantir sua precisão. Em ambientes educacionais, o Microsoft Translate pode ser utilizado para apoiar a compreensão de conteúdo falado, especialmente em aulas com discussões ou apresentações. É importante estar ciente das limitações do aplicativo, como possíveis erros de tradução e a necessidade de conexão estável para o uso de algumas funcionalidades.', 'O aplicativo é indicado para atividades que envolvam a tradução de conversas ou a transcrição de aulas, podendo ser útil em dinâmicas de grupo e apresentações. No entanto, deve-se evitar confiar exclusivamente no Microsoft Translate em situações que exigem alta precisão, como traduções técnicas ou em idiomas menos comuns, complementando com outras ferramentas ou recursos quando necessário.', 'A tecnologia é mais adequada para alunos que possuem habilidades de leitura e que podem se beneficiar da tradução e transcrição de conteúdos em diferentes idiomas. No Ensino Médio e Superior, o Microsoft Translate pode ser uma ferramenta valiosa para acompanhar aulas e conferências em idiomas estrangeiros. Para a EJA, depende do nível de letramento e das necessidades linguísticas dos estudantes.', NULL, 1, 1, '2024-08-24 18:42:54', '2024-10-06 16:22:23'),
(17, 'Tradutor de Conversas', 6, 16, 17, 'idealappcenter', '', 'tradutor-de-conversas', 'tradutor-de-conversas.jpg', 'O \'Tradutor de Conversas\' é um aplicativo que oferece tradução instantânea de voz e texto, facilitando a comunicação em ambientes multilíngues, como viagens, reuniões de negócios e conversas diárias. Com funcionalidades como tradução por voz, interpretação, cópia e compartilhamento, o app é útil para pessoas surdas que precisam de suporte na comunicação em diferentes contextos. A função de transcrição de fala em texto também é uma possibilidade, tornando o aplicativo versátil em diversas situações.', 'Para maximizar o uso da ferramenta, recomenda-se testar as funcionalidades de tradução de voz e texto em diferentes ambientes para garantir a precisão. O aplicativo pode ser utilizado em sala de aula para transcrever e traduzir diálogos, especialmente em aulas de idiomas ou em discussões multilíngues. É importante estar ciente de possíveis atrasos na tradução, especialmente em sessões prolongadas, e adaptar o uso conforme necessário.', 'O aplicativo é indicado para atividades que envolvam tradução e transcrição em tempo real, como apresentações e discussões em grupo. Pode ser utilizado para facilitar a comunicação entre alunos e professores em contextos multilíngues. No entanto, deve-se evitar confiar exclusivamente no aplicativo para traduções complexas ou em situações que exigem alta precisão, complementando com outras ferramentas.', 'A tecnologia é mais adequada para alunos que já possuem habilidades de leitura e que podem se beneficiar da tradução e transcrição de conteúdos falados. No Ensino Médio e Superior, o Tradutor de Conversas pode ser uma ferramenta útil para acompanhar discussões e aulas em diferentes idiomas. Para a EJA, depende do nível de letramento e das necessidades linguísticas dos estudantes.', NULL, 6, 1, '2024-08-24 18:42:54', '2024-10-06 16:47:13'),
(18, 'Shazam', 5, 14, 17, 'Apple', '', 'shazam', 'shazam.jpg', 'O \'Shazam\' é um aplicativo que identifica músicas que estão tocando ao redor ou em outros aplicativos, mesmo quando se utiliza fones de ouvido. Ele permite que pessoas surdas conheçam a música que está tocando no ambiente, descobrindo o nome da faixa, a letra e outros detalhes como o artista e a data de lançamento. O app também fornece letras sincronizadas com a música, permitindo uma experiência mais imersiva e acessível.', 'Para obter o máximo da ferramenta como tecnologia assistiva, é recomendável que os usuários explorem a função de letras sincronizadas, que permite acompanhar a letra da música enquanto ela toca. Isso pode ser útil em ambientes educacionais para trabalhar a compreensão de textos e o conhecimento cultural associado à música. Certifique-se de que o ambiente esteja silencioso ou que a música esteja em volume adequado para que o aplicativo identifique corretamente a faixa.', 'O aplicativo pode ser utilizado em atividades que envolvam o estudo de letras de músicas e a exploração de gêneros musicais. Pode ser uma ferramenta útil em aulas de língua portuguesa, literatura ou artes, onde a música é utilizada como recurso pedagógico. No entanto, deve-se evitar seu uso em ambientes muito ruidosos, onde a precisão do aplicativo pode ser comprometida.', 'A tecnologia é adequada para alunos que possuem habilidades de leitura e que podem se beneficiar da exploração de músicas e letras. No Ensino Fundamental - Anos Finais e no Ensino Médio, o Shazam pode ser utilizado para apoiar atividades de análise de letras e estudos culturais. No Ensino Superior, pode ser integrado a disciplinas de música, cultura ou estudos de mídia.', NULL, 0, 0, '2024-08-24 18:42:54', '2024-09-14 15:48:23'),
(19, 'Hand Talk Tradutor para Libras', 4, 16, 18, 'HandTalk', 'handtalk.me', 'hand-talk', 'hand-talk.jpg', 'O \'Hand Talk Tradutor para Libras\' é um aplicativo que utiliza personagens virtuais, como Hugo e Maya, para traduzir texto e voz em Língua Brasileira de Sinais (Libras) e Língua de Sinais Americana (ASL). O app, premiado pela ONU, permite que os usuários aprendam e pratiquem Libras de forma divertida e eficiente, seja para se comunicar com surdos, reforçar o vocabulário ou desenvolver novas habilidades linguísticas. O aplicativo também oferece um dicionário de sinais e vídeos educativos.', 'Para maximizar o uso do Hand Talk como tecnologia assistiva, recomenda-se utilizar a função de tradução de texto e voz para Libras em situações cotidianas e educacionais. O app pode ser integrado em sala de aula como um recurso complementar para facilitar a comunicação entre surdos e ouvintes. No entanto, é importante ajustar a velocidade de tradução e revisar as traduções para garantir a precisão, especialmente em conteúdos mais complexos.', 'O aplicativo é indicado para atividades que envolvam a prática de Libras, como exercícios de tradução e compreensão de sinais. Pode ser utilizado para reforçar o aprendizado de vocabulário e facilitar a comunicação em sala de aula. No entanto, deve-se complementar o uso do app com outros recursos de ensino de Libras, pois o Hand Talk pode apresentar limitações em termos de variações de sinais regionais e interpretações mais avançadas.', 'A tecnologia é acessível para diferentes faixas etárias e etapas de ensino, podendo ser utilizada desde a Educação Infantil para introdução de Libras até o Ensino Médio e EJA, onde pode ser empregada para reforço de vocabulário e comunicação. A simplicidade e a abordagem lúdica do aplicativo o tornam adequado para crianças e iniciantes em Libras.', NULL, 1, 1, '2024-08-24 18:42:54', '2024-09-18 23:50:11'),
(20, 'Virginia ajuda deficientes', 1, 14, 19, 'Cisano', '', 'virginia', 'virginia.jpg', 'O \'Virginia ajuda deficientes\' é um aplicativo que transforma tablets ou smartphones em comunicadores, permitindo que pessoas com dificuldades na fala, como indivíduos com deficiência congênita, adquirida ou temporária, possam se comunicar. Através da síntese vocal do dispositivo, o usuário pode fazer pedidos e comunicar necessidades. O app é especialmente útil para pessoas sem cordas vocais ou que estão internadas e não conseguem se comunicar verbalmente.', 'Para obter o máximo da ferramenta como tecnologia assistiva, recomenda-se configurar o dispositivo com o mecanismo de síntese de fala mais adequado, como o Google TTS. O aplicativo pode ser utilizado em sala de aula para ajudar alunos com dificuldades de comunicação a expressarem suas necessidades. É importante testar o app em diferentes cenários para garantir que a comunicação seja clara e eficaz, e considerar o uso de figuras ou símbolos para complementar a comunicação.', 'O aplicativo é indicado para atividades que envolvam a necessidade de comunicação básica e expressiva, como pedir ajuda, água ou comida. Pode ser utilizado em contextos educacionais para facilitar a interação entre o aluno e o professor. No entanto, deve-se evitar confiar exclusivamente no aplicativo em situações mais complexas, complementando com outros recursos de comunicação assistiva.', 'A tecnologia é acessível para diferentes faixas etárias e pode ser utilizada para facilitar a comunicação de alunos com dificuldades de fala, desde a Educação Infantil até a EJA. O aplicativo pode ser especialmente útil para alunos com deficiências que afetam a fala e a comunicação.', NULL, 1, 0, '2024-08-24 18:42:54', '2024-09-18 23:52:47'),
(21, 'TurboScribe', 6, 16, 17, 'TurboScribe', 'https://turboscribe.ai/pt/', 'turboscribe', 'turboscribe.jpg', 'TurboScribe é um serviço de transcrição por IA que converte áudio e vídeo em texto com alta precisão (99,8%) em mais de 98 idiomas. Ele oferece transcrição ilimitada de arquivos de áudio e vídeo, sendo útil para surdos ou deficientes auditivos ao transcrever conteúdo falado em texto. O plano gratuito permite 3 transcrições diárias, cada uma com até 30 minutos.', 'Para obter o máximo da ferramenta, sempre certifique-se de usar áudio claro e limpo para melhorar a precisão das transcrições. Use o recurso de reconhecimento de locutores para identificar diferentes vozes em reuniões ou aulas. Lembre-se de que o plano gratuito tem limitações de tempo e quantidade de transcrições, então planeje seu uso de acordo.', 'Utilize o TurboScribe para transcrever palestras, aulas e reuniões, tornando o conteúdo acessível para alunos surdos. Recomenda-se utilizar a ferramenta em situações de aprendizagem onde o conteúdo verbal é essencial. Pode ser útil em estudos de grupo, permitindo que os alunos revisem as transcrições posteriormente.', 'A capacidade de transcrever áudio e vídeo em texto com alta precisão torna o TurboScribe uma ferramenta valiosa em diversas etapas de ensino, especialmente onde há grande ênfase no conteúdo falado.', NULL, 0, 0, '2024-08-24 18:42:54', '2024-09-14 15:48:23'),
(22, 'Fireflies: AI notetaker', 6, 15, 17, 'Fireflies.ai', 'https://fireflies.ai/', 'fireflies', 'fireflies.jpg', 'O \'Fireflies: AI notetaker\' é uma ferramenta de transcrição e anotação automática para reuniões e conversas de voz. Ele permite gravar e transcrever automaticamente reuniões em vários aplicativos de videoconferência, como Google Meet, Zoom e Microsoft Teams, e oferece funcionalidades de análise, pesquisa e colaboração. É uma solução poderosa para auxiliar pessoas surdas, permitindo que acompanhem e revisem reuniões e aulas através de transcrições precisas e rápidas.', 'Para obter o máximo da ferramenta como tecnologia assistiva, recomenda-se integrar o Fireflies com os aplicativos de videoconferência utilizados nas aulas. Certifique-se de que o AI notetaker esteja configurado para capturar todas as reuniões relevantes e revisar as transcrições para corrigir possíveis erros. O uso do Fireflies em sala de aula pode ajudar a garantir que alunos surdos tenham acesso completo ao conteúdo discutido em tempo real.', 'O aplicativo é indicado para situações como reuniões de grupo, aulas online e palestras, onde a transcrição precisa e rápida é essencial. No entanto, é importante estar ciente de que o aplicativo pode exigir ajustes em suas configurações para evitar capturar conversas indesejadas ou reuniões irrelevantes. Complementar o uso com outras formas de anotações pode ser útil para garantir a completude das informações.', 'A tecnologia é mais adequada para estudantes que já possuem habilidades de leitura e podem se beneficiar das transcrições automáticas de reuniões e aulas. No Ensino Médio e Superior, o Fireflies pode ser uma ferramenta valiosa para garantir que os alunos não percam informações importantes durante as aulas e conferências.', NULL, 2, 0, '2024-08-24 18:42:54', '2024-10-06 16:20:07'),
(23, 'SpeechNotes', 6, 16, 19, 'SpeechNotes', 'https://speechnotes.co/', 'speechnotes', 'speechnotes.jpg', 'O \'SpeechNotes\' é um bloco de notas com conversor de fala em texto, projetado para transformar ditados em texto de forma contínua e eficiente. Com comandos de voz, o aplicativo é útil para quem precisa transcrever falas ou reuniões de forma prática, sem a necessidade de fazer login. Ele suporta múltiplos idiomas e funciona melhor quando conectado à internet, embora também opere offline com resultados limitados. É uma ferramenta assistiva útil para surdos, pois permite que o conteúdo falado seja convertido em texto.', 'Para maximizar o uso do SpeechNotes como tecnologia assistiva, recomenda-se utilizá-lo em situações de ditado ou em reuniões, onde a fala precisa ser convertida rapidamente em texto. É importante revisar as transcrições para corrigir possíveis erros, especialmente ao utilizar o aplicativo em português, onde algumas palavras podem não ser reconhecidas corretamente. O uso de um microfone de qualidade pode melhorar a precisão do reconhecimento de fala.', 'O aplicativo é indicado para transcrever discursos, reuniões ou mesmo aulas em tempo real. No entanto, deve-se estar ciente das limitações, como a dificuldade de reconhecer certos comandos de voz e a necessidade de corrigir pontuações. O uso do aplicativo deve ser complementado com revisões manuais para garantir a precisão.', 'A tecnologia é mais adequada para estudantes que já possuem habilidades de leitura e escrita, sendo útil para transcrever aulas e reuniões. O SpeechNotes pode ser uma ferramenta valiosa para garantir que os alunos não percam informações importantes durante as aulas e atividades educacionais.', NULL, 0, 1, '2024-08-24 18:42:54', '2024-09-14 15:48:23'),
(24, 'SymboTalk - AAC Talker', 1, 16, 18, 'Elad Elram', '', 'symbotalk', 'symbotalk.jpg', 'O \'SymboTalk - AAC Talker\' é um sistema de comunicação aumentativa e alternativa (AAC) que utiliza símbolos para facilitar a comunicação de pessoas que possuem dificuldades na fala, como autistas, pessoas com síndrome de Down, ELA, entre outros. Através de pranchas de comunicação personalizáveis, os usuários podem selecionar símbolos que são convertidos em fala. O site permite a criação de pranchas e símbolos próprios, além de oferecer uma biblioteca com mais de 60.000 imagens para escolher.', 'Para obter o máximo da ferramenta como tecnologia assistiva, é importante configurar os símbolos e pranchas de acordo com as necessidades individuais do usuário. Utilize as funções de personalização para adicionar imagens e gravar áudios específicos que facilitem a comunicação. Certifique-se de configurar o modo de acesso limitado para usuários que necessitam de assistência.', 'Recomenda-se o uso do SymboTalk em atividades de comunicação diárias e em sala de aula para facilitar a interação dos alunos com seus colegas e professores. É importante que os professores estejam familiarizados com a ferramenta para auxiliar os alunos durante o uso. A funcionalidade de subboards pode ser utilizada para organizar diferentes contextos de comunicação, como escola, casa e lazer.', 'A tecnologia é especialmente útil para crianças que estão desenvolvendo habilidades de comunicação, oferecendo suporte visual e auditivo para facilitar a interação. As pranchas de símbolos podem ser usadas para auxiliar na expressão de necessidades e sentimentos, promovendo a inclusão social e educacional.', NULL, 1, 0, '2024-08-24 18:42:54', '2024-09-19 01:45:06'),
(25, 'Expressia: Falar e Aprender', 1, 16, 19, 'Expressia', 'https://expressia.life/', 'expressia', 'expressia.jpg', 'O \"Expressia: Falar e Aprender\" é um aplicativo voltado para comunicação alternativa e atividades adaptadas. É ideal para pessoas que têm dificuldades de fala, como autistas, indivíduos com dislexia, TDAH, Alzheimer e outras necessidades especiais. Ele permite a criação de pranchas personalizadas com imagens, sons e voz, facilitando a comunicação e o aprendizado em sala de aula. O aplicativo também oferece uma biblioteca online de pranchas e atividades prontas para uso.', 'Para maximizar o uso do Expressia como ferramenta assistiva, personalize as pranchas e atividades de acordo com as necessidades específicas do aluno. É importante familiarizar-se com as funcionalidades do aplicativo, como adicionar imagens e sons, e verificar periodicamente a Central de Atividades para acessar novos recursos. Além disso, configure o aplicativo para restringir o acesso de crianças às ferramentas de edição para evitar alterações acidentais.', 'Recomenda-se o uso do Expressia em atividades que promovam a comunicação e o desenvolvimento cognitivo, como exercícios de nomeação, correspondência de figuras e formação de frases. O app é especialmente útil para atividades de estimulação cognitiva em alunos com autismo e outras dificuldades de aprendizagem. Porém, é importante adaptar o ritmo das atividades às capacidades de cada aluno e considerar o uso de materiais impressos, se necessário, para reforçar o aprendizado.', 'O Expressia é adequado para diferentes etapas de ensino devido à sua flexibilidade e personalização. Para crianças pequenas, ele pode ser usado para o desenvolvimento da comunicação básica. Para alunos mais velhos, o aplicativo oferece suporte na realização de atividades de aprendizado adaptadas às suas necessidades. Já na EJA, pode auxiliar na inclusão de adultos com dificuldades de comunicação.', NULL, 0, 0, '2024-08-24 18:42:54', '2024-09-14 15:48:23'),
(26, 'Mudo Que Fala', 1, 14, 18, 'Robson dos Santos Ribeiro', 'robson.holy@gmail.com', 'mudo-que-fala', 'mudo-que-fala.jpg', '\"Mudo Que Fala\" é um aplicativo desenvolvido para auxiliar pessoas que não podem falar, permitindo a conversão de texto em voz. Ele é útil para surdos que não dominam a Libras, mas são alfabetizados em português, e para aqueles que precisam de um suporte para a comunicação, como pessoas que passaram por cirurgias ou têm outras limitações temporárias ou permanentes na fala. O aplicativo oferece categorias de palavras pré-definidas e a possibilidade de adicionar novas palavras, com a reprodução do som correspondente.', 'Para obter o máximo proveito do aplicativo, personalize as palavras e categorias de acordo com as necessidades diárias do usuário. O aplicativo pode ser utilizado tanto em ambientes sociais quanto em contextos educativos. Certifique-se de configurar corretamente o idioma e as vozes disponíveis, considerando as preferências de gênero e estilo de voz do usuário. Além disso, aproveite a funcionalidade offline para garantir a comunicação mesmo sem conexão com a internet.', '\"Mudo Que Fala\" pode ser integrado em atividades pedagógicas que envolvam comunicação alternativa. É especialmente útil em situações onde os alunos precisam expressar suas necessidades, como em atividades de interação social ou em exercícios de leitura e escrita. O aplicativo também pode ser utilizado em sala de aula para ajudar na inclusão de alunos com deficiências de comunicação. No entanto, é importante que o professor monitore o uso do app para garantir que ele está sendo utilizado de forma eficiente.', 'O aplicativo é mais adequado para alunos que estão em processo de desenvolvimento da comunicação verbal ou que possuem limitações temporárias ou permanentes de fala. Nas etapas iniciais, ele pode ser utilizado para facilitar a comunicação e a interação com os colegas e professores, enquanto nas etapas mais avançadas ele pode ajudar na expressão de pensamentos e ideias complexas.', NULL, 0, 1, '2024-08-24 18:42:54', '2024-09-14 15:48:23');
INSERT INTO `tecnologias` (`id`, `titulo`, `categoria_id`, `custo_id`, `requer_internet_id`, `autor`, `autor_contato`, `slug`, `imagem`, `descricao`, `orientacao`, `dicas`, `etapas_justificativa`, `indicado_por`, `acessos`, `destaque`, `created_at`, `updated_at`) VALUES
(27, 'Rybená Tradutor Libras Voz', 4, 14, 17, 'Grupo ICTS', 'https://www.grupoicts.com.br/', 'rybena', 'rybena.jpg', '\"Rybená Tradutor Libras Voz\" é um aplicativo de tecnologia assistiva desenvolvido no Brasil que traduz textos do português para Libras e converte português escrito em voz falada. Ele é compatível com os principais navegadores e dispositivos móveis, proporcionando acessibilidade a pessoas com deficiência auditiva para entender textos na internet. Além disso, o aplicativo oferece recursos para aprendizado de Libras.', 'Para obter o máximo do aplicativo, é importante ajustá-lo conforme as necessidades específicas do usuário, como definir a velocidade da interpretação em Libras. No entanto, devido a relatos de travamentos e erros na tradução, é recomendado testar o app antes de utilizá-lo em situações críticas de comunicação. Certifique-se de sempre atualizar o aplicativo para evitar problemas técnicos.', 'O Rybená pode ser útil em atividades de introdução à Libras, especialmente para ouvintes que estão começando a aprender a língua. Pode ser usado para traduzir textos curtos em sala de aula, mas é importante monitorar o uso devido às limitações relatadas. É ideal para complementar outras ferramentas de ensino de Libras, mas não deve ser a única fonte de aprendizado.', 'O aplicativo é indicado para alunos que já possuem alguma familiaridade com a leitura em português e estão começando a aprender Libras. Pode ser uma ferramenta de apoio em salas de aula inclusivas, mas sua eficácia pode ser limitada nas etapas mais avançadas, devido às limitações técnicas e à necessidade de uma compreensão mais profunda da Libras.', NULL, 1, 0, '2024-08-24 18:42:54', '2024-09-14 15:58:44'),
(28, 'VLibras', 4, 14, 17, 'Serviços e Informações do Brasil', 'vlibras@lavid.ufpb.br', 'vlibras', 'vlibras.jpg', 'O VLibras é uma suíte de ferramentas de código aberto que traduz automaticamente conteúdos digitais em português para a Língua Brasileira de Sinais (LIBRAS). Desenvolvido pela UFPB com apoio de órgãos governamentais, o aplicativo auxilia na comunicação e na disseminação de Libras, sendo compatível com computadores, smartphones e tablets. Ele não substitui um intérprete humano, mas oferece uma maneira acessível de traduzir textos em ambientes digitais.', 'Para obter o máximo da ferramenta, é importante garantir uma boa conexão com a internet e evitar textos longos, devido a possíveis travamentos relatados por usuários. Também é útil ajustar a velocidade do avatar e utilizar a função de rotação 360º para uma melhor visualização dos sinais.', 'O VLibras pode ser integrado em atividades de leitura e interpretação de textos, ajudando alunos surdos a entenderem conteúdos em português. No entanto, é importante complementar o uso do aplicativo com o apoio de intérpretes de Libras e outras ferramentas pedagógicas, devido a limitações na tradução de frases complexas.', 'O VLibras é adequado para alunos que já possuem uma base em leitura e escrita em português e estão em processo de aprendizagem de Libras. Pode ser usado em etapas iniciais para facilitar a compreensão de textos em sala de aula, mas deve ser complementado com métodos mais avançados nas etapas posteriores.', NULL, 1, 0, '2024-08-24 20:25:59', '2024-10-06 16:20:13'),
(29, 'GitalkText', 6, 14, 17, '@gitalktext', 'https://www.instagram.com/gitalktext', 'gitalktext', 'gitalktext.jpg', 'O GitalkText é uma ferramenta online gratuita que transcreve automaticamente o áudio de vídeos e aulas ao vivo para texto. Pode ser utilizado em diversas plataformas, como YouTube, palestras e qualquer tipo de áudio reproduzido no computador. É especialmente útil para pessoas surdas, pois converte a fala em texto em tempo real, facilitando a compreensão do conteúdo.', 'Para obter o máximo da ferramenta, utilize fones de ouvido ou garanta um ambiente silencioso para que o áudio capturado seja o mais claro possível. Siga o manual de instruções para configurar corretamente a aplicação no Windows e verifique a qualidade do áudio antes de iniciar a transcrição.', 'O GitalkText é ideal para ser usado em aulas ao vivo ou em atividades onde o conteúdo é transmitido em áudio, como palestras e vídeos educacionais. Ele pode ser combinado com materiais de apoio em texto, permitindo que os alunos acompanhem e revisem o conteúdo transcrito posteriormente. Evite usá-lo como única fonte de informação, complementando com atividades visuais ou interativas.', 'GitalkText é mais adequado para alunos que já possuem habilidades de leitura e interpretação de textos. Por ser uma ferramenta de transcrição de áudio, ela se torna mais eficaz para estudantes em níveis de ensino onde o conteúdo auditivo é mais presente, como palestras e vídeos.', NULL, 0, 1, '2024-08-24 20:25:59', '2024-09-14 15:48:23'),
(30, 'Zapia - Assistente Pessoal IA', 1, 14, 17, 'BrainLogic AI SAS', '', 'zapia', 'zapia.jpg', 'Zapia é um assistente pessoal de inteligência artificial projetado para atender às necessidades do Brasil. Entre suas funcionalidades, estão a transcrição de áudios do WhatsApp, pesquisa de produtos e serviços locais, interpretação de fotos, comunicação por áudio, e suporte em diversas tarefas diárias. Ele pode ser uma ferramenta útil para pessoas surdas, oferecendo transcrições de áudio em texto e informações detalhadas sobre produtos e serviços.', 'Para utilizar Zapia como tecnologia assistiva, encaminhe áudios recebidos no WhatsApp para o número do Zapia e receba a transcrição em texto. Use o recurso de interpretação de imagens para entender melhor o conteúdo visual e utilize as consultas gerais para acessar informações sobre diversos tópicos.', 'Zapia pode ser útil em sala de aula para transcrever áudios de professores, aulas gravadas ou discussões em grupo. É recomendável utilizá-lo como suporte, especialmente em atividades onde o áudio é o principal meio de comunicação. Além disso, o assistente pode ajudar a encontrar recursos educacionais e serviços locais que atendam às necessidades dos alunos. Evite depender exclusivamente do Zapia; combine-o com outras ferramentas de acessibilidade.', 'Zapia é mais eficaz para alunos que já possuem habilidades de leitura e compreensão de texto. Por ser uma ferramenta baseada em inteligência artificial, é indicada para estudantes que lidam com conteúdo mais complexo e que podem se beneficiar de transcrições e informações adicionais.', NULL, 0, 0, '2024-08-24 20:25:59', '2024-09-14 15:48:23'),
(31, 'SpeakLiz: para pessoas com def', 1, 15, 19, 'Talov, Inc.', 'https://iosworlddeveloper.wixsite.com/talov', 'speakliz', 'speakliz.jpg', 'SpeakLiz é um aplicativo que utiliza Inteligência Artificial para auxiliar na comunicação de pessoas surdas. Ele oferece quatro principais funcionalidades: alerta de som ambiente, conversão de voz em texto, conversão de texto em voz, e tradução de linguagem de sinais (limitada à linguagem de sinais americana).', 'Para aproveitar ao máximo o SpeakLiz como tecnologia assistiva, é importante testar as funcionalidades em diferentes ambientes e ajustar as configurações conforme necessário. A função de alerta de som ambiente pode ser útil em sala de aula para notificar o aluno sobre sons importantes. Ao utilizar a conversão de voz em texto, garantir uma boa conexão à internet para melhor desempenho.', 'O aplicativo é recomendado para atividades de leitura e comunicação, especialmente em situações onde o aluno precisa de suporte para entender sons ao seu redor ou para interagir com outros. Não é recomendado para atividades que exijam um alto grau de precisão na interpretação da linguagem de sinais, devido às limitações relatadas pelos usuários.', 'O SpeakLiz pode ser adaptado para diferentes idades, mas é mais eficaz em contextos onde a comunicação básica e o suporte à leitura são necessários.', NULL, 0, 0, '2024-08-24 20:25:59', '2024-09-14 15:48:23'),
(32, 'Ararajuba', 1, 14, 17, 'CTA / IFRS', '', 'ararajuba', 'ararajuba.jpg', 'Ararajuba é uma ferramenta online gratuita desenvolvida pelo Centro Tecnológico de Acessibilidade (CTA) do IFRS. Ela oferece funcionalidades de fala para texto e texto para fala, possibilitando que o usuário dite um texto que é transcrito em tempo real ou digite um texto para que a ferramenta o leia em voz alta. Essa tecnologia pode ser especialmente útil para surdos em sala de aula ao proporcionar maior acessibilidade à comunicação escrita e falada.', 'Para otimizar o uso da Ararajuba como ferramenta assistiva, utilize-a em conjunto com atividades que demandem conversão de fala para texto ou vice-versa. Certifique-se de que os dispositivos utilizados tenham boa captação de áudio para a função de ditado. Evite ambientes muito ruidosos para garantir a precisão na transcrição do áudio para texto.', 'Recomenda-se o uso da Ararajuba em atividades de leitura e escrita, como redação ou ditado, além de momentos de estudo em grupo, onde os alunos podem colaborar utilizando a função de transcrição de voz. Evite utilizar a ferramenta em atividades que exijam uma leitura muito técnica, pois a interpretação do áudio pode não ser precisa.', 'A ferramenta é indicada para todas as etapas de ensino devido à sua simplicidade e funcionalidade, promovendo inclusão e acessibilidade em diversos níveis educacionais.', NULL, 1, 0, '2024-08-24 20:25:59', '2024-10-10 15:54:15'),
(33, 'Cboard', 1, 14, 18, 'Cboard org', 'https://www.cboard.io/', 'cboard', 'cboard.jpg', 'Cboard é um aplicativo web gratuito de Comunicação Aumentativa e Alternativa (CAA) voltado para crianças e adultos com problemas de fala e linguagem. Ele auxilia na comunicação utilizando símbolos e conversão de texto em fala. O aplicativo é acessível em várias plataformas, incluindo desktops, tablets e celulares, e pode ser personalizado para atender às necessidades específicas de cada usuário.', 'Para obter o máximo do Cboard como ferramenta assistiva, personalize as pranchas de comunicação de acordo com as necessidades dos alunos, adicionando símbolos relevantes. Utilize o suporte offline em dispositivos compatíveis para garantir acesso contínuo, mesmo sem internet. Revise periodicamente as pranchas para adaptar conforme o progresso do aluno.', 'O Cboard é recomendado para atividades de comunicação e expressão, especialmente em situações onde o aluno necessita se expressar visualmente. É útil em atividades de interação social, jogos educativos e construção de frases. Evite usá-lo em atividades que demandem uma comunicação mais rápida e fluida, onde o uso de símbolos possa ser limitado.', 'O Cboard é flexível e pode ser adaptado para diversas idades e níveis de educação, permitindo uma personalização que atende às necessidades específicas dos alunos em diferentes etapas.', NULL, 0, 0, '2024-08-24 20:25:59', '2024-09-14 15:48:23'),
(34, 'Dolphin', 1, 14, 17, 'CTA / IFRS', '', 'dolphin', 'dolphin.jpg', 'Dolphin é uma ferramenta de comunicação assistiva que permite converter textos escritos em fala e transcrever fala em texto. Voltada para facilitar a comunicação de pessoas com comprometimento na fala e/ou surdas, a ferramenta é simples de usar, gratuita e funciona diretamente no navegador.', 'Para obter o máximo da ferramenta, é importante utilizar a opção de conversão de texto para fala para facilitar a comunicação em sala de aula, especialmente em atividades que envolvam leitura e expressão oral. Utilize o recurso de transcrição de fala em ambientes onde a leitura do conteúdo é mais eficaz para o aluno surdo. Ajuste o volume e a clareza da fala para melhor compreensão.', 'Recomenda-se o uso do Dolphin em atividades que exijam comunicação escrita e oral, como apresentações de trabalhos ou leitura em voz alta. O recurso de transcrição de fala pode ser útil em situações de diálogos em grupo, permitindo que o aluno acompanhe a conversa por meio de texto. Não é ideal para atividades que demandem alta interatividade ou respostas rápidas em tempo real.', 'A flexibilidade da ferramenta permite a adaptação a diferentes níveis de ensino, auxiliando na inclusão e na participação ativa dos alunos com necessidades especiais.', NULL, 1, 1, '2024-08-24 20:25:59', '2024-09-21 15:37:54'),
(35, 'Plaphoons', 1, 14, 19, 'Jordi Lagares Roset', 'http://www.xtec.cat/~jlagares/', 'plaphoons', 'plaphoons.jpg', 'Plaphoons é uma ferramenta de comunicação assistiva voltada para pessoas com deficiências físicas, como paralisia cerebral, transtornos do espectro autista (TEA) e síndrome de Down. Além de ajudar na comunicação, também pode ser utilizada para o aprendizado de leitura e escrita, e no controle do computador para pessoas com dificuldades motoras. Plaphoons possui versões para Windows e Android, sendo especialmente útil em tablets.', 'Para obter o máximo da ferramenta, é importante personalizar os comunicadores de acordo com as necessidades individuais do usuário. No caso da versão Android, é recomendado evitar o uso de pictogramas muito grandes para não sobrecarregar o programa. A configuração adequada das opções de controle é essencial para usuários com dificuldades motoras.', 'Plaphoons pode ser utilizado em atividades de sala de aula que envolvem comunicação alternativa e aumentativa, auxiliando alunos com dificuldades motoras e de fala a interagir com os colegas e participar ativamente das atividades. Recomenda-se o uso em atividades que necessitem de suporte visual e comunicação facilitada. Não é ideal para atividades que demandam respostas rápidas e em tempo real, devido à necessidade de configuração e ajustes.', 'A tecnologia é flexível e pode ser adaptada para diferentes níveis de ensino, auxiliando na inclusão de alunos com necessidades especiais ao longo de sua trajetória educacional.', NULL, 0, 0, '2024-08-24 20:25:59', '2024-09-14 15:48:23'),
(36, 'Picto4Me', 1, 16, 19, 'Zoqui LTDA', '', 'picto4me', 'picto4me.jpg', 'Picto4Me é uma aplicação web que permite criar, executar, compartilhar e conversar através de pranchas de comunicação pictográficas. É projetado para ser simples e poderoso, permitindo que educadores e terapeutas criem tarefas para educação especial e terapia clínica. A ferramenta é integrada ao Google Drive, onde os projetos são armazenados, e oferece uma ampla gama de imagens, além de permitir a busca por pictogramas na web.', 'Para obter o máximo da ferramenta, é importante explorar as bibliotecas de imagens disponíveis e personalizar as pranchas de comunicação de acordo com as necessidades específicas de cada aluno. A integração com o Google Drive facilita o armazenamento e o compartilhamento dos projetos, garantindo que eles estejam acessíveis em diferentes dispositivos. Utilize a função de mensagens pictográficas e audíveis no Telegram para expandir a comunicação entre usuários.', 'O Picto4Me é especialmente útil para atividades que envolvem comunicação alternativa, como ajudar alunos não verbais a expressarem suas necessidades e sentimentos. Pode ser utilizado em atividades de sala de aula para criar histórias sociais, ajudar na compreensão de rotinas diárias, ou mesmo para ensinar novos conceitos por meio de representações visuais. Não é recomendado para atividades que exigem interação verbal direta.', 'A tecnologia é adaptável a diferentes níveis de ensino, sendo especialmente útil para alunos que apresentam dificuldades de comunicação, permitindo um ambiente de aprendizado mais inclusivo.', NULL, 0, 0, '2024-08-24 20:25:59', '2024-09-14 15:48:23'),
(37, 'Colibras', 3, 14, 17, 'UFRN', '', 'colibras', 'colibras.jpg', 'O COLibras é um dicionário colaborativo de Libras (Língua Brasileira de Sinais) desenvolvido pela Universidade Federal do Rio Grande do Norte (UFRN). Ele permite que usuários adicionem e acessem sinais de Libras, contribuindo para a expansão do vocabulário disponível. O site é gratuito e de fácil utilização, com a opção de pesquisar palavras e visualizar os sinais correspondentes por meio de imagens e vídeos.', 'Para maximizar o uso do COLibras como ferramenta assistiva, explore o dicionário regularmente para familiarizar-se com novos sinais. Incentive os alunos a utilizarem o site para aprimorar seu vocabulário em Libras. Caso você tenha conhecimento de novos sinais ou variações regionais, considere contribuir com o dicionário para ajudar na disseminação da língua.', 'Utilize o COLibras em atividades que envolvam o aprendizado e a prática de Libras, como traduções de textos ou apresentações em sala de aula. O site pode ser particularmente útil em dinâmicas de grupo, onde os alunos podem pesquisar sinais em tempo real. Evite depender exclusivamente do COLibras para ensino avançado de Libras, já que ele é um dicionário e pode não oferecer explicações aprofundadas sobre gramática e uso contextual.', 'O COLibras é mais indicado para etapas em que os alunos já possuem uma base em Libras e podem se beneficiar de um dicionário para expandir seu vocabulário e melhorar a comunicação.', NULL, 9, 1, '2024-08-24 20:25:59', '2024-09-21 18:17:33'),
(38, 'Transcrição da fala para texto', 1, 14, 18, 'Alexey Beschetnikov', '', 'transcricao-da-fala-para-texto', 'transcricao-da-fala-para-texto.jpg', 'Dolphin é uma ferramenta de comunicação assistiva que permite converter textos escritos em fala e transcrever fala em texto. Voltada para facilitar a comunicação de pessoas com comprometimento na fala e/ou surdas, a ferramenta é simples de usar, gratuita e funciona diretamente no navegador.', 'Para obter o máximo da ferramenta, é importante utilizar a opção de conversão de texto para fala para facilitar a comunicação em sala de aula, especialmente em atividades que envolvam leitura e expressão oral. Utilize o recurso de transcrição de fala em ambientes onde a leitura do conteúdo é mais eficaz para o aluno surdo. Ajuste o volume e a clareza da fala para melhor compreensão.', 'Recomenda-se o uso do Dolphin em atividades que exijam comunicação escrita e oral, como apresentações de trabalhos ou leitura em voz alta. O recurso de transcrição de fala pode ser útil em situações de diálogos em grupo, permitindo que o aluno acompanhe a conversa por meio de texto. Não é ideal para atividades que demandem alta interatividade ou respostas rápidas em tempo real.', 'A flexibilidade da ferramenta permite a adaptação a diferentes níveis de ensino, auxiliando na inclusão e na participação ativa dos alunos com necessidades especiais.', NULL, 1, 0, '2024-08-24 20:25:59', '2024-09-21 17:35:47'),
(39, 'Comunicação para surdos', 1, 14, 17, 'ryo muranaka', '', 'comunicacao-para-surdos', 'comunicacao-para-surdos.jpg', 'O aplicativo \"Comunicação para surdos\" é projetado para facilitar a comunicação entre surdos ou deficientes auditivos e outras pessoas. Ele converte fala em texto com um único botão, permitindo que palavras faladas sejam transcritas em tempo real. É usado em ambientes de saúde, como hospitais, além de suportar vários idiomas, e é ideal para situações onde a comunicação clara é essencial.', 'Para otimizar o uso como ferramenta assistiva, ajuste o tamanho do texto para melhorar a legibilidade. Utilize a função de gravação para salvar conversas importantes para referência futura. Em ambientes de saúde, o aplicativo pode ser usado para garantir que a comunicação com pacientes surdos seja clara e eficaz.', 'O aplicativo é recomendado para atividades que exigem comunicação direta, como atendimento individualizado, orientação escolar e explicações detalhadas. Não é ideal para situações que demandem comunicação em grupo ou respostas rápidas, como discussões em sala de aula. Utilize a função de histórico para rever conversas anteriores, o que pode ser útil para acompanhamento educacional.', 'A tecnologia oferece suporte adequado para diferentes etapas de aprendizado, auxiliando tanto na comunicação básica quanto em situações mais complexas que demandam acompanhamento e revisão de informações.', NULL, 1, 1, '2024-08-24 20:25:59', '2024-09-15 15:13:33'),
(40, 'Captify: Legendas ao Vivo', 6, 14, 17, 'Inquiry Health LLC', '', 'captify', 'captify.jpg', 'O Captify é um aplicativo que utiliza o microfone do telefone e inteligência artificial avançada para transformar o discurso em texto em tempo real, criando legendas ao vivo. A tecnologia é projetada para auxiliar pessoas surdas ou com deficiência auditiva, proporcionando uma experiência de comunicação mais inclusiva em diversas situações. O aplicativo é 100% gratuito, suporta 100 idiomas e funciona offline, garantindo acessibilidade em qualquer lugar. Além disso, o Captify prioriza a privacidade dos usuários.', 'Para maximizar o uso do Captify em sala de aula, posicione o microfone do telefone próximo ao orador para uma melhor captação de áudio. Use o aplicativo em ambientes com baixo ruído de fundo para garantir maior precisão nas transcrições. Explique aos alunos como usar o aplicativo em diferentes contextos, como durante apresentações ou debates.', 'Utilize o Captify durante aulas expositivas, apresentações de alunos ou palestras para que alunos surdos possam acompanhar as falas em tempo real. O aplicativo também pode ser útil em atividades em grupo, permitindo que todos os alunos acompanhem as discussões. Evite utilizar o Captify em atividades práticas ou dinâmicas onde o uso contínuo de texto pode ser uma distração.', 'O Captify é mais indicado para etapas onde a compreensão oral é essencial e a necessidade de acompanhamento em tempo real é maior, como em aulas expositivas e apresentações.', NULL, 5, 1, '2024-08-24 20:25:59', '2024-09-23 13:11:28'),
(41, 'Microsoft Teams', 7, 16, 19, 'Microsoft Corporation', '', 'microsoft-teams', 'microsoft-teams.jpg', 'O Microsoft Teams é uma plataforma de colaboração que integra chat, reuniões, chamadas e compartilhamento de arquivos. Para pessoas surdas ou com deficiência auditiva, oferece legendas em tempo real e transcrição automática, facilitando a participação em reuniões e atividades escolares. A versão gratuita permite reuniões de até 60 minutos com até 100 participantes e oferece 5 GB de armazenamento para arquivos compartilhados.', 'Para obter o máximo do Teams como ferramenta assistiva, ative as legendas em tempo real e utilize a função de transcrição automática durante reuniões e aulas. Isso permitirá que os alunos surdos acompanhem o conteúdo discutido. Certifique-se de que todos os participantes saibam usar essas funções e mantenham o áudio claro para melhor transcrição.', 'Use o Microsoft Teams para atividades colaborativas onde os alunos possam participar de discussões em grupo. As legendas em tempo real são úteis em aulas ao vivo ou reuniões escolares, enquanto a transcrição automática pode ser revisada posteriormente para reforço do conteúdo. Evite reuniões muito longas sem pausas para garantir que todos possam acompanhar.', 'A flexibilidade do Microsoft Teams e suas ferramentas de acessibilidade o tornam adequado para estudantes em etapas mais avançadas, onde a comunicação e colaboração são fundamentais para o sucesso acadêmico.', NULL, 0, 0, '2024-08-24 20:25:59', '2024-09-14 15:48:23'),
(42, 'Google Meet', 7, 16, 17, 'Google LLC', '', 'google-meet', 'google-meet.jpg', 'O Google Meet é uma plataforma de videoconferência que oferece legendas automáticas em tempo real, facilitando a participação de pessoas surdas ou com deficiência auditiva em reuniões e aulas. A versão gratuita permite reuniões de até 60 minutos com até 100 participantes, sendo ideal para uso em ambientes educacionais e profissionais.', 'Para obter o máximo do Google Meet como ferramenta assistiva, ative as legendas automáticas durante as reuniões. Certifique-se de que os participantes falem de forma clara para que a transcrição seja precisa. Utilize o compartilhamento de tela e outros recursos visuais para complementar as explicações.', 'Utilize o Google Meet para aulas ao vivo e discussões em grupo, aproveitando as legendas em tempo real para garantir que todos os alunos possam acompanhar o conteúdo. Evite falar muito rápido, pois isso pode comprometer a precisão das legendas. Reforce o conteúdo com materiais escritos para revisão posterior.', 'A flexibilidade e acessibilidade do Google Meet, combinadas com suas ferramentas de transcrição e legendas, tornam a plataforma adequada para alunos mais avançados, onde a comunicação eficaz é essencial.', NULL, 5, 1, '2024-08-24 20:25:59', '2024-09-21 18:07:44'),
(43, 'Zoom', 7, 16, 17, 'Zoom Video Communications', '', 'zoom', 'zoom.jpg', 'O Zoom é uma plataforma de videoconferência amplamente utilizada, que oferece recursos como chat, telefone e quadro branco. Possui legendas automáticas em tempo real, o que facilita a inclusão de pessoas surdas ou com deficiência auditiva em reuniões e aulas. A versão gratuita permite reuniões de até 40 minutos com até 100 participantes, sendo útil para pequenas reuniões e atividades educacionais.', 'Para otimizar o uso do Zoom como tecnologia assistiva, ative as legendas automáticas durante as reuniões. Reforce a comunicação visual com o uso de quadros brancos e compartilhamento de tela. Certifique-se de que o áudio seja claro e que todos os participantes falem devagar e pausadamente para melhor transcrição.', 'Utilize o Zoom para aulas virtuais e discussões em grupo. Incentive os alunos a fazer perguntas pelo chat para garantir que todas as dúvidas sejam respondidas de maneira acessível. Evite agendar reuniões longas na versão gratuita para não interromper a comunicação. Reforce o uso de recursos visuais como slides e imagens para complementar o conteúdo falado.', 'O Zoom oferece ferramentas que facilitam a comunicação em diferentes níveis de ensino, e as legendas automáticas garantem acessibilidade para alunos surdos ou com deficiência auditiva.', NULL, 0, 0, '2024-08-24 20:25:59', '2024-09-14 15:48:23'),
(44, 'Skype', 7, 16, 17, 'Microsoft Corporation', '', 'skype', 'skype.jpg', 'Skype é um serviço de comunicação que permite chamadas de vídeo e voz, mensagens instantâneas e compartilhamento de arquivos. Ele oferece legendas ao vivo e tradução de chamadas, facilitando a inclusão de surdos e pessoas com deficiência auditiva. A versão gratuita permite reuniões com até 100 participantes sem limite de tempo.', 'Para obter o máximo do Skype como ferramenta assistiva, sempre ative as legendas ao vivo durante chamadas e reuniões. Aproveite o recurso de tradução de chamadas para facilitar a comunicação com falantes de diferentes idiomas. Garanta que todos os participantes falem de forma clara e pausada para melhorar a qualidade das legendas.', 'Use o Skype para aulas online, reuniões de grupo e sessões de tutoria. Incentive os alunos a utilizar as mensagens instantâneas para tirar dúvidas e fazer perguntas durante as aulas. Reforce o uso de recursos visuais, como compartilhamento de tela, para complementar a comunicação falada. Evite sobrecarregar as reuniões com muitos participantes para garantir que as legendas sejam precisas e legíveis.', 'As ferramentas de acessibilidade do Skype, como legendas ao vivo e tradução de chamadas, tornam-no adequado para diversas etapas de ensino, garantindo que alunos surdos ou com deficiência auditiva possam participar de maneira inclusiva.', NULL, 0, 0, '2024-08-24 20:25:59', '2024-09-14 15:48:23'),
(45, 'LetMeTalk:Aplicação Grátis CAA', 1, 14, 18, 'AppNotize UG', 'http://letmetalk.info/', 'letmetalk', 'letmetalk.jpg', 'LetMeTalk é uma aplicação gratuita de Comunicação Alternativa e Aumentativa (CAA), projetada para apoiar a comunicação de pessoas com dificuldades de fala, incluindo surdos. O aplicativo permite alinhar imagens para formar frases significativas, utilizando uma base de dados com mais de 9000 imagens do ARASAAC. O LetMeTalk é totalmente funcional offline, o que o torna adequado para uso em diversos ambientes, como escolas e centros de saúde.', 'Para maximizar o uso como ferramenta assistiva, personalize as categorias e imagens de acordo com as necessidades específicas do usuário. Certifique-se de que o aplicativo esteja configurado corretamente antes de usá-lo em situações ao vivo, como em sala de aula. Treine o usuário para navegar pelas categorias e selecionar imagens para formar frases.', 'Utilize o LetMeTalk para facilitar a comunicação durante atividades de grupo, permitindo que os alunos participem ativamente das discussões. Reforce o aprendizado de novos conceitos associando imagens às palavras correspondentes. Evite sobrecarregar o aplicativo com muitas categorias de uma só vez; introduza novos conteúdos gradualmente para evitar confusão.', 'O LetMeTalk é adequado para diferentes níveis de ensino, mas seu uso é especialmente benéfico em etapas iniciais, onde a comunicação básica é fundamental para o desenvolvimento acadêmico e social.', NULL, 0, 0, '2024-08-24 20:25:59', '2024-09-14 15:48:23'),
(46, 'Matraquinha', 1, 14, 18, 'Matraquinha', 'https://www.matraquinha.com.br/', 'matraquinha', 'matraquinha.jpg', 'O Matraquinha é um aplicativo de comunicação alternativa, voltado principalmente para autistas, mas também útil para pessoas surdas. Ele permite que os usuários transmitam desejos, emoções e necessidades por meio de cartões que, ao serem clicados, reproduzem uma voz que expressa a mensagem. O aplicativo conta com mais de 250 cartões distribuídos em 9 seções e está disponível em múltiplos idiomas, incluindo Português do Brasil. Funciona tanto online quanto offline.', 'Para obter o máximo do Matraquinha, é recomendado que os usuários ou educadores personalizem os cartões com imagens e frases que sejam relevantes para o contexto escolar e cotidiano dos alunos. Além disso, monitore o uso do aplicativo para evitar cliques repetidos que possam sobrecarregar o áudio. Pratique a repetição das palavras ou frases mostradas pelo aplicativo para reforçar a aprendizagem.', 'Utilize o Matraquinha em atividades de rotina, como ensinar horários, necessidades básicas e comunicação de emoções. O aplicativo é ideal para introduzir novas palavras e conceitos de forma visual e auditiva. Evite usar o aplicativo em momentos que exigem maior concentração em atividades práticas, onde o uso de tecnologia pode distrair o aluno.', 'O Matraquinha é mais indicado para etapas iniciais da educação, onde a comunicação visual e auditiva é crucial para o desenvolvimento da linguagem e compreensão de rotinas.', NULL, 2, 1, '2024-08-24 20:25:59', '2024-10-11 14:11:57'),
(47, 'HelpTalk', 1, 14, 18, 'HelpTalk', 'https://www.helptalk.mobi/', 'helptalk', 'helptalk.jpg', 'O HelpTalk é um aplicativo desenvolvido para auxiliar pessoas incapazes de se comunicar de forma tradicional (oral ou escrita) em situações cotidianas, emergenciais ou em interações com profissionais de saúde e familiares. Ele permite a criação de perfis personalizados com ações pré-definidas que, ao serem selecionadas, são pronunciadas pelo dispositivo. O aplicativo também oferece suporte para múltiplos idiomas e inclui funcionalidades de emergência, como o envio de SMS com coordenadas.', 'Para maximizar o uso do HelpTalk como ferramenta assistiva, é importante configurar perfis personalizados de acordo com as necessidades específicas do usuário. Utilize o recurso de múltiplos idiomas quando necessário e familiarize-se com as funções de emergência. Teste o aplicativo em diferentes cenários para garantir que o usuário se sinta confortável ao usá-lo.', 'Utilize o HelpTalk em sala de aula para facilitar a comunicação de alunos que enfrentam desafios na fala ou na escrita. Crie perfis personalizados para atividades específicas ou rotinas diárias. Recomenda-se o uso em situações onde a comunicação rápida e eficaz é essencial, como em atividades de grupo ou durante emergências escolares.', 'A flexibilidade do HelpTalk, com perfis personalizáveis e suporte para múltiplos idiomas, o torna uma ferramenta eficaz para todas as etapas de ensino, ajudando a superar barreiras de comunicação em diferentes contextos educacionais.', NULL, 2, 1, '2024-08-24 20:25:59', '2024-10-10 15:22:25'),
(48, 'AsTeRICS Grid', 1, 14, 18, 'University of Applied Sciences Technikum Wien', 'https://www.asterics.eu/', 'asterics-grid', 'asterics-grid.jpg', 'O AsTeRICS Grid é uma ferramenta gratuita e de código aberto para Comunicação Aumentativa e Alternativa (CAA), que pode ser utilizada tanto online quanto offline. Ele permite a criação de tabelas de comunicação personalizáveis e oferece suporte para diferentes tipos de entrada, como toques, rastreamento ocular e até sensores musculares. A aplicação pode ser usada em dispositivos diversos, como PCs, tablets e smartphones, e é compatível com sistemas operacionais Windows, Linux, Android e iOS. Além de comunicação, o AsTeRICS Grid oferece controle de casa inteligente, reprodução de rádios online e vídeos do YouTube.', 'Para maximizar o uso do AsTeRICS Grid como ferramenta assistiva, é importante configurar as tabelas de comunicação de acordo com as necessidades individuais dos usuários. Prefira o uso offline para maior confiabilidade, especialmente em ambientes com acesso limitado à internet. Explore as funcionalidades de controle de casa inteligente e multimídia, que podem enriquecer a experiência do usuário.', 'Utilize o AsTeRICS Grid para facilitar a comunicação em sala de aula, especialmente para alunos com dificuldades de fala. Crie tabelas específicas para atividades escolares, como descrições de tarefas, interações com colegas e rotinas diárias. Recomenda-se o uso em atividades que envolvam comunicação intensa e que demandem adaptações específicas, como apresentações ou trabalhos em grupo.', 'O AsTeRICS Grid é altamente personalizável, o que permite adaptar a ferramenta para diferentes níveis de ensino e necessidades individuais, desde a educação básica até o ensino superior.', NULL, 2, 0, '2024-08-24 20:25:59', '2024-09-15 13:28:42'),
(49, 'LibrasQuim - Dicionário de Libras para Química', 3, 14, 17, 'IFPB', 'librasquim@gmail.com', 'librasquim', 'librasquim.jpg', 'O \"LibrasQuim - Dicionário de Libras para Química\" é uma ferramenta de acessibilidade linguística desenvolvida para apoiar alunos surdos, professores e intérpretes de Libras no ensino de química. Através de uma lista de termos comuns da química, o site oferece vídeos que mostram os sinais correspondentes aos termos, facilitando a compreensão e a comunicação dos conceitos químicos em sala de aula.', 'Para maximizar o uso da ferramenta, recomenda-se que o professor familiarize-se previamente com os sinais disponíveis no dicionário para incorporá-los de maneira eficaz em suas aulas. Evite utilizar termos ou conceitos que não estejam presentes na lista de sinais sem fornecer uma explicação adicional ou buscar alternativas de sinalização. O site requer conexão à internet, portanto, certifique-se de que a infraestrutura necessária esteja disponível.', 'Use o LibrasQuim durante explicações de conceitos-chave ou ao apresentar novos termos em química. É especialmente útil em aulas que abordam a tabela periódica ou reações químicas, onde a visualização dos sinais pode reforçar a compreensão dos alunos surdos. Recomenda-se também que seja utilizado em atividades práticas ou laboratoriais, onde a aplicação dos termos em sinais pode ser crucial para a compreensão e a segurança dos alunos.', 'A ferramenta é mais adequada para estudantes a partir do Ensino Fundamental - Anos Finais, que já possuem familiaridade com a leitura e começam a ter contato com a disciplina de química. No Ensino Médio e Ensino Superior, o uso do dicionário torna-se ainda mais relevante, dado o aprofundamento dos conteúdos químicos.', NULL, 0, 0, '2024-08-24 20:25:59', '2024-09-14 15:48:23');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tecnologias_etapas`
--

CREATE TABLE `tecnologias_etapas` (
  `id` int NOT NULL,
  `taxonomia_id` int NOT NULL,
  `tecnologia_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Despejando dados para a tabela `tecnologias_etapas`
--

INSERT INTO `tecnologias_etapas` (`id`, `taxonomia_id`, `tecnologia_id`) VALUES
(1, 10, 1),
(2, 11, 1),
(3, 12, 1),
(4, 13, 1),
(5, 10, 2),
(6, 11, 2),
(7, 12, 2),
(8, 13, 2),
(9, 10, 3),
(10, 11, 3),
(11, 12, 3),
(12, 13, 3),
(13, 11, 4),
(14, 12, 4),
(15, 13, 4),
(16, 10, 5),
(17, 11, 5),
(18, 12, 5),
(19, 13, 5),
(20, 10, 6),
(21, 11, 6),
(22, 12, 6),
(23, 13, 6),
(24, 10, 7),
(25, 11, 7),
(26, 12, 7),
(27, 13, 7),
(28, 9, 8),
(29, 10, 8),
(30, 8, 9),
(31, 9, 9),
(32, 10, 9),
(33, 9, 10),
(34, 10, 10),
(35, 11, 10),
(36, 13, 10),
(37, 11, 11),
(38, 12, 11),
(39, 13, 11),
(40, 10, 12),
(41, 11, 12),
(42, 12, 12),
(43, 13, 12),
(44, 10, 13),
(45, 11, 13),
(46, 12, 13),
(47, 13, 13),
(48, 10, 14),
(49, 11, 14),
(50, 12, 14),
(51, 13, 14),
(52, 10, 15),
(53, 11, 15),
(54, 12, 15),
(55, 13, 15),
(56, 10, 16),
(57, 11, 16),
(58, 12, 16),
(59, 13, 16),
(60, 10, 17),
(61, 11, 17),
(62, 12, 17),
(63, 13, 17),
(64, 10, 18),
(65, 11, 18),
(66, 12, 18),
(67, 13, 18),
(68, 8, 19),
(69, 9, 19),
(70, 10, 19),
(71, 11, 19),
(72, 13, 19),
(73, 8, 20),
(74, 9, 20),
(75, 10, 20),
(76, 11, 20),
(77, 13, 20),
(78, 10, 21),
(79, 11, 21),
(80, 12, 21),
(81, 13, 21),
(82, 10, 22),
(83, 11, 22),
(84, 12, 22),
(85, 13, 22),
(86, 10, 23),
(87, 11, 23),
(88, 12, 23),
(89, 13, 23),
(90, 8, 24),
(91, 9, 24),
(92, 8, 25),
(93, 9, 25),
(94, 10, 25),
(95, 11, 25),
(96, 12, 25),
(97, 13, 25),
(98, 8, 26),
(99, 9, 26),
(100, 10, 26),
(101, 9, 27),
(102, 10, 27),
(103, 9, 28),
(104, 10, 28),
(105, 10, 29),
(106, 11, 29),
(107, 12, 29),
(108, 13, 29),
(109, 10, 30),
(110, 11, 30),
(111, 12, 30),
(112, 13, 30),
(113, 8, 31),
(114, 9, 31),
(115, 10, 31),
(116, 11, 31),
(117, 13, 31),
(118, 8, 32),
(119, 9, 32),
(120, 10, 32),
(121, 11, 32),
(122, 12, 32),
(123, 13, 32),
(124, 8, 33),
(125, 9, 33),
(126, 10, 33),
(127, 11, 33),
(128, 13, 33),
(129, 8, 34),
(130, 9, 34),
(131, 10, 34),
(132, 11, 34),
(133, 8, 35),
(134, 9, 35),
(135, 10, 35),
(136, 11, 35),
(137, 8, 36),
(138, 9, 36),
(139, 10, 36),
(140, 11, 36),
(141, 8, 37),
(142, 9, 37),
(143, 10, 37),
(144, 11, 37),
(145, 12, 37),
(146, 13, 37),
(147, 8, 38),
(148, 9, 38),
(149, 10, 38),
(150, 11, 38),
(151, 8, 39),
(152, 9, 39),
(153, 10, 39),
(154, 11, 39),
(155, 8, 40),
(156, 9, 40),
(157, 10, 40),
(158, 11, 40),
(159, 12, 40),
(160, 13, 40),
(161, 10, 41),
(162, 11, 41),
(163, 12, 41),
(164, 13, 41),
(165, 10, 42),
(166, 11, 42),
(167, 12, 42),
(168, 13, 42),
(169, 10, 43),
(170, 11, 43),
(171, 12, 43),
(172, 13, 43),
(173, 10, 44),
(174, 11, 44),
(175, 12, 44),
(176, 13, 44),
(177, 8, 45),
(178, 9, 45),
(179, 10, 45),
(180, 8, 46),
(181, 9, 46),
(182, 10, 46),
(183, 11, 46),
(184, 8, 47),
(185, 9, 47),
(186, 10, 47),
(187, 11, 47),
(188, 12, 47),
(189, 13, 47),
(190, 8, 48),
(191, 9, 48),
(192, 10, 48),
(193, 11, 48),
(194, 12, 48),
(195, 13, 48),
(196, 10, 49),
(197, 11, 49),
(198, 12, 49);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tecnologias_links`
--

CREATE TABLE `tecnologias_links` (
  `id` int NOT NULL,
  `tecnologia_id` int NOT NULL,
  `taxonomia_id` int NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `redirecionamentos` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Despejando dados para a tabela `tecnologias_links`
--

INSERT INTO `tecnologias_links` (`id`, `tecnologia_id`, `taxonomia_id`, `link`, `redirecionamentos`) VALUES
(1, 1, 25, 'https://play.google.com/store/apps/details?id=com.google.audio.hearing.visualization.accessibility.scribe&hl=pt_BR', 0),
(2, 2, 25, 'https://play.google.com/store/apps/details?id=com.stcodesapp.speechtotext&hl=pt_BR', 0),
(3, 3, 26, 'https://apps.apple.com/br/app/transcreva-ao-vivo/id1625459616?platform=iphone', 0),
(4, 4, 25, 'https://play.google.com/store/apps/details?id=com.senailibras&hl=pt_BR', 0),
(5, 4, 26, 'https://apps.apple.com/br/app/senai-libras/id1480431650', 0),
(6, 5, 27, 'https://www.spreadthesign.com/pt.br/search/', 0),
(7, 5, 25, 'https://play.google.com/store/apps/details?id=com.spreadthesign.androidapp_paid&hl=pt_BR&gl=BR', 0),
(8, 6, 27, 'http://www.acessibilidadebrasil.org.br/libras_3/', 0),
(9, 7, 27, 'https://www2.camara.leg.br/a-camara/estruturaadm/gestao-na-camara-dos-deputados/responsabilidade-social-e-ambiental/acessibilidade/glossarios/dicionario-de-libras', 0),
(10, 8, 25, 'https://play.google.com/store/apps/details?id=com.bilingua.sinalario', 0),
(11, 9, 25, 'https://play.google.com/store/apps/details?id=com.AlApps.LibrasQuiz', 0),
(12, 10, 25, 'https://play.google.com/store/apps/details?id=br.com.andersonmatte.librasparatodos', 0),
(13, 11, 25, 'https://play.google.com/store/apps/details?id=br.ufrrj.petsi.librasti&hl=pt_BR', 0),
(14, 12, 27, 'https://www.fesai.com.br/', 0),
(15, 13, 27, 'https://www.ines.gov.br/dicionario-de-libras/', 0),
(16, 14, 25, 'https://play.google.com/store/apps/details?id=com.transcense.ava_beta', 0),
(17, 14, 26, 'https://apps.apple.com/us/app/ava-communicate-beyond-barriers/id1030067058', 0),
(18, 15, 26, 'https://apps.apple.com/us/app/live-transcribe/id1471473738', 0),
(19, 16, 25, 'https://play.google.com/store/apps/details?id=com.microsoft.translator', 0),
(20, 16, 26, 'https://itunes.apple.com/app/microsoft-translator/id1018949559', 0),
(21, 16, 28, 'https://www.microsoft.com/store/productId/9WZDNCRFJ3PG', 0),
(22, 17, 25, 'https://play.google.com/store/apps/details?id=com.translate.talkingtranslator', 1),
(23, 18, 25, 'https://play.google.com/store/apps/details?id=com.shazam.android', 0),
(24, 18, 26, 'https://itunes.apple.com/app/shazam/id284993459?mt=8&amp;at=11l3eE&amp;ct=5348615A-616D-3235-3830-44754D6D5973', 0),
(25, 19, 25, 'https://play.google.com/store/apps/details?id=br.com.handtalk&hl=pt_BR', 0),
(26, 19, 26, 'https://apps.apple.com/br/app/hand-talk-tradutor-para-libras/id659816995', 0),
(27, 20, 25, 'https://play.google.com/store/apps/details?id=app.virginia.firstrelease&hl=pt_BR', 0),
(28, 21, 27, 'https://turboscribe.ai/pt/free-tools', 0),
(29, 22, 25, 'https://play.google.com/store/apps/details?id=ai.fireflies.mobile&utm_source=landing', 0),
(30, 22, 26, 'https://apps.apple.com/us/app/fireflies-ai-notetaker/id6463164203?utm_source=landing', 0),
(31, 23, 27, 'https://speechnotes.co/dictate/', 0),
(32, 23, 25, 'https://play.google.com/store/apps/details?id=co.speechnotes.speechnotes', 0),
(33, 24, 27, 'https://www.symbotalkapp.com/home', 0),
(34, 25, 27, 'https://web.expressia.life/home', 0),
(35, 25, 25, 'https://play.google.com/store/apps/details?id=life.expressia&hl=pt_BR', 0),
(36, 26, 25, 'https://play.google.com/store/apps/details?id=com.mutespeak.robson.mutespeak3', 0),
(37, 27, 25, 'https://play.google.com/store/apps/details?id=br.com.icts.rybenatorandroid&hl=pt_BR', 0),
(38, 28, 25, 'https://play.google.com/store/apps/details?id=com.lavid.vlibrasdroid', 0),
(39, 28, 26, 'https://apps.apple.com/br/app/vlibras/id1039641615', 0),
(40, 29, 27, 'https://gitalktext.com/', 0),
(41, 30, 27, 'https://zapia.com/pt-br', 0),
(42, 30, 26, 'https://apps.apple.com/br/app/zapia-assistente-pessoal-ia/id6470821480', 0),
(43, 31, 25, 'https://play.google.com/store/apps/details?id=com.talovstudio.speakliz&hl=pt_BR', 0),
(44, 31, 26, 'https://apps.apple.com/us/app/speakliz-for-deaf-people/id1239857536', 0),
(45, 32, 27, 'https://cta-ifrs.bitbucket.io/ararajuba/', 0),
(46, 33, 27, 'https://app.cboard.io/board/root', 0),
(47, 33, 25, 'https://play.google.com/store/apps/details?id=com.unicef.cboard', 0),
(48, 33, 26, 'https://apps.apple.com/gb/app/aac-cboard-app/id6453683048', 0),
(49, 33, 28, 'https://apps.microsoft.com/store/detail/XP9M5KQV699FLR', 0),
(50, 34, 27, 'https://cta-ifrs.bitbucket.io/dolphin/', 0),
(51, 35, 25, 'https://play.google.com/store/apps/details?id=com.projectefressa.Plaphoons&hl=pt_BR', 0),
(52, 35, 28, 'https://projectefressa.blogspot.com/2016/01/plaphoons-download.html', 0),
(53, 36, 27, 'https://picto4.me/site', 0),
(54, 37, 27, 'https://colibras2020.web.app/', 0),
(55, 38, 26, 'https://apps.apple.com/br/app/transcri%C3%A7%C3%A3o-da-fala-para-texto/id1625460169', 0),
(56, 39, 26, 'https://apps.apple.com/br/app/comunica%C3%A7%C3%A3o-para-surdos/id1638036122?l=en-GB?l=en-GB', 0),
(57, 40, 26, 'https://apps.apple.com/br/app/captify-legendas-ao-vivo/id6449643108?platform=iphone', 0),
(58, 41, 28, 'https://www.microsoft.com/pt-br/microsoft-teams/', 0),
(59, 41, 25, 'https://play.google.com/store/apps/details?id=com.microsoft.teams&hl=pt_BR', 0),
(60, 41, 26, 'https://apps.apple.com/br/app/microsoft-teams/id1113153706', 0),
(61, 42, 27, 'https://workspace.google.com/products/meet/', 0),
(62, 42, 25, 'https://play.google.com/store/apps/details?id=com.google.android.apps.tachyon&hl=pt_BR', 0),
(63, 42, 25, 'https://apps.apple.com/us/app/google-meet/id1096918571', 0),
(64, 43, 27, 'https://www.zoom.com/pt/products/virtual-meetings/', 0),
(65, 43, 25, 'https://play.google.com/store/apps/details?id=us.zoom.videomeetings&hl=pt_BR', 0),
(66, 43, 26, 'https://apps.apple.com/us/app/zoom-workplace/id546505307', 0),
(67, 43, 28, 'https://zoom.us/download?os=win', 0),
(68, 44, 27, 'https://www.skype.com/pt-br/', 0),
(69, 44, 25, 'https://play.google.com/store/apps/details?id=com.skype.raider&hl=pt_BR', 0),
(70, 44, 26, 'https://apps.apple.com/us/app/skype/id304878510', 0),
(71, 44, 28, 'https://apps.microsoft.com/detail/9wzdncrfj364?hl=pt-br&gl=US', 0),
(72, 45, 26, 'https://apps.apple.com/br/app/letmetalk-aplica%C3%A7%C3%A3o-gr%C3%A1tis-caa/id919990138?platform=ipad', 0),
(73, 46, 25, 'https://play.google.com/store/apps/details?id=com.phonegap.matraquinha&hl=pt_BR&gl=US', 0),
(74, 46, 26, 'https://apps.apple.com/br/app/matraquinha-autismo/id1423586611', 0),
(75, 47, 25, 'https://play.google.com/store/apps/details?id=com.helptalk', 0),
(76, 48, 27, 'https://grid.asterics.eu/', 0),
(77, 49, 27, 'https://joaopessoa.ifpb.edu.br/librasquim/#!', 0);

-- --------------------------------------------------------

--
-- Estrutura stand-in para view `vw_busca`
-- (Veja abaixo para a visão atual)
--
CREATE TABLE `vw_busca` (
`id` int
,`titulo` varchar(255)
,`descricao` text
,`orientacao` text
,`dicas` text
,`etapas_justificativa` text
,`imagem` varchar(155)
,`slug` varchar(155)
,`acessos` int
,`destaque` tinyint(1)
,`categoria_titulo` varchar(34)
,`categoria_slug` varchar(32)
,`custo_titulo` varchar(34)
,`custo_slug` varchar(32)
,`requer_internet_titulo` varchar(34)
,`requer_internet_slug` varchar(32)
,`etapas_titulos` text
,`etapas_slugs` text
,`plataformas_titulos` text
,`plataformas_slugs` text
,`redirecionamentos` decimal(32,0)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para view `vw_busca_OLD`
-- (Veja abaixo para a visão atual)
--
CREATE TABLE `vw_busca_OLD` (
`id` int
,`titulo` varchar(255)
,`descricao` text
,`orientacao` text
,`dicas` text
,`etapas_justificativa` text
,`imagem` varchar(155)
,`slug` varchar(155)
,`acessos` int
,`destaque` tinyint(1)
,`categoria_titulo` varchar(34)
,`categoria_slug` varchar(32)
,`custo_titulo` varchar(34)
,`custo_slug` varchar(32)
,`requer_internet_titulo` varchar(34)
,`requer_internet_slug` varchar(32)
,`etapas_titulos` text
,`etapas_slugs` text
);

-- --------------------------------------------------------

--
-- Estrutura para view `vw_busca`
--
DROP TABLE IF EXISTS `vw_busca`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `vw_busca`  AS SELECT `t`.`id` AS `id`, `t`.`titulo` AS `titulo`, `t`.`descricao` AS `descricao`, `t`.`orientacao` AS `orientacao`, `t`.`dicas` AS `dicas`, `t`.`etapas_justificativa` AS `etapas_justificativa`, `t`.`imagem` AS `imagem`, `t`.`slug` AS `slug`, `t`.`acessos` AS `acessos`, `t`.`destaque` AS `destaque`, `cat`.`titulo` AS `categoria_titulo`, `cat`.`slug` AS `categoria_slug`, `custo`.`titulo` AS `custo_titulo`, `custo`.`slug` AS `custo_slug`, `internet`.`titulo` AS `requer_internet_titulo`, `internet`.`slug` AS `requer_internet_slug`, group_concat(`etapa_tax`.`titulo` separator '; ') AS `etapas_titulos`, group_concat(`etapa_tax`.`slug` separator '; ') AS `etapas_slugs`, group_concat(distinct `plat_tax`.`titulo` separator '; ') AS `plataformas_titulos`, group_concat(distinct `plat_tax`.`slug` separator '; ') AS `plataformas_slugs`, sum(coalesce(`tecnologias_links`.`redirecionamentos`,0)) AS `redirecionamentos` FROM (((((((`tecnologias` `t` left join `taxonomias` `cat` on((`t`.`categoria_id` = `cat`.`id`))) left join `taxonomias` `custo` on((`t`.`custo_id` = `custo`.`id`))) left join `taxonomias` `internet` on((`t`.`requer_internet_id` = `internet`.`id`))) left join `tecnologias_etapas` `te` on((`t`.`id` = `te`.`tecnologia_id`))) left join `taxonomias` `etapa_tax` on((`te`.`taxonomia_id` = `etapa_tax`.`id`))) left join `tecnologias_links` on((`t`.`id` = `tecnologias_links`.`tecnologia_id`))) left join `taxonomias` `plat_tax` on((`tecnologias_links`.`taxonomia_id` = `plat_tax`.`id`))) GROUP BY `t`.`id`, `t`.`titulo`, `t`.`descricao`, `t`.`orientacao`, `t`.`dicas`, `t`.`etapas_justificativa`, `t`.`imagem`, `t`.`slug`, `cat`.`titulo`, `cat`.`slug`, `custo`.`titulo`, `custo`.`slug`, `internet`.`titulo`, `internet`.`slug` ;

-- --------------------------------------------------------

--
-- Estrutura para view `vw_busca_OLD`
--
DROP TABLE IF EXISTS `vw_busca_OLD`;

CREATE ALGORITHM=UNDEFINED DEFINER=`user`@`%` SQL SECURITY DEFINER VIEW `vw_busca_OLD`  AS SELECT `t`.`id` AS `id`, `t`.`titulo` AS `titulo`, `t`.`descricao` AS `descricao`, `t`.`orientacao` AS `orientacao`, `t`.`dicas` AS `dicas`, `t`.`etapas_justificativa` AS `etapas_justificativa`, `t`.`imagem` AS `imagem`, `t`.`slug` AS `slug`, `t`.`acessos` AS `acessos`, `t`.`destaque` AS `destaque`, `cat`.`titulo` AS `categoria_titulo`, `cat`.`slug` AS `categoria_slug`, `custo`.`titulo` AS `custo_titulo`, `custo`.`slug` AS `custo_slug`, `internet`.`titulo` AS `requer_internet_titulo`, `internet`.`slug` AS `requer_internet_slug`, group_concat(`etapa_tax`.`titulo` separator '; ') AS `etapas_titulos`, group_concat(`etapa_tax`.`slug` separator '; ') AS `etapas_slugs` FROM (((((`tecnologias` `t` left join `taxonomias` `cat` on((`t`.`categoria_id` = `cat`.`id`))) left join `taxonomias` `custo` on((`t`.`custo_id` = `custo`.`id`))) left join `taxonomias` `internet` on((`t`.`requer_internet_id` = `internet`.`id`))) left join `tecnologias_etapas` `te` on((`t`.`id` = `te`.`tecnologia_id`))) left join `taxonomias` `etapa_tax` on((`te`.`taxonomia_id` = `etapa_tax`.`id`))) GROUP BY `t`.`id`, `t`.`titulo`, `t`.`descricao`, `t`.`orientacao`, `t`.`dicas`, `t`.`etapas_justificativa`, `t`.`imagem`, `t`.`slug`, `cat`.`titulo`, `cat`.`slug`, `custo`.`titulo`, `custo`.`slug`, `internet`.`titulo`, `internet`.`slug` ;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `amostragem`
--
ALTER TABLE `amostragem`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `recursos`
--
ALTER TABLE `recursos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `redirecionamentos`
--
ALTER TABLE `redirecionamentos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `taxonomias`
--
ALTER TABLE `taxonomias`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `tecnologias`
--
ALTER TABLE `tecnologias`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `tecnologias_etapas`
--
ALTER TABLE `tecnologias_etapas`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `tecnologias_links`
--
ALTER TABLE `tecnologias_links`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `amostragem`
--
ALTER TABLE `amostragem`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `recursos`
--
ALTER TABLE `recursos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT de tabela `redirecionamentos`
--
ALTER TABLE `redirecionamentos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `taxonomias`
--
ALTER TABLE `taxonomias`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de tabela `tecnologias`
--
ALTER TABLE `tecnologias`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT de tabela `tecnologias_etapas`
--
ALTER TABLE `tecnologias_etapas`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=199;

--
-- AUTO_INCREMENT de tabela `tecnologias_links`
--
ALTER TABLE `tecnologias_links`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
