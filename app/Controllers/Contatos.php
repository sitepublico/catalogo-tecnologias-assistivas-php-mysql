<?php

namespace App\Controllers;

use CodeIgniter\Controller;
use CodeIgniter\Database\Query;
use App\Models\TaxonomiaModel;
use App\Models\RecursoModel;
use App\Models\TecnologiaModel;

class Contatos extends BaseController
{
    // Apresenta o formulário de contato, que pode ser usado para mensagens, receber sugestão de nova tecnologia/recurso ou reportar correção.
    // Recebe a ação (corrigir/sugerir), tipo (tecnologia/recurso) e id da tecnologia/recurso
    public function index($acao = Null, $tipo = Null, $id = Null)
    {
        helper('form');

        // Define valores iniciais
        $dados['assunto_atual'] = 'Fale Conosco';
        $dados['requisicao'] = ['acao' => $acao, 'tipo' => $tipo, 'id' => $id];
        $dados['assuntos'] = ["Compartilhar Críticas", "Ideias para o Site", "Indicação de Tecnologia", "Indicação de Recurso", "Sugerir Correção ou Complemento", "Problemas Técnicos", "Dúvidas Gerais"];

        // Gerar captcha
        $dados['captcha'] = $this->generateCaptcha();

        // Se acessou para sugerir nova tecnologia / recurso
        if ( $acao == 'indicacao' )
        {
            $dados['assunto_atual'] = 'Indicar Tecnologia ou Recurso';

            // Se tecnologia
            if ( $tipo && $tipo == 'tecnologia' )
            {
                $dados['assunto_atual'] = 'Indicar Tecnologia';
            }
            else if ( $tipo && $tipo == 'recurso' )
            {
                $dados['assunto_atual'] = 'Indicar Recurso';
            }
        }

        // Se acessou para correção
        if ( $acao == 'correcao' )
        {
            $dados['assunto_atual'] = 'Sugerir Correção ou Complemento';

            // Se tecnologia
            if ( $tipo == 'tecnologia' && $id )
            {
                $tecnologia = new TecnologiaModel();
                $dados['tecnologia'] = $tecnologia->find($id);
            }
        }

        // Lista categorias de Tecnologias para menu lateral
        $dados['categoria_atual'] = 'Contato'; // para menus e navegação
        $model = new TaxonomiaModel();
        $dados['categorias'] = $model->categorias();

        return view('contatos/form', $dados);
    }

    // Função para processar o envio do formulário
    public function enviar()
    {
        helper('form');
        $validation = \Config\Services::validation();

        // Regras de validação
        $validation->setRules([
            'nome' => 'required',
            'email' => 'required|valid_email',
            'assunto' => 'required',
            'mensagem' => 'required',
            'captcha' => 'required|numeric',
        ]);

        if ( !$this->confereCaptcha( $this->request->getPost('captcha') ))
        {
            return redirect()->back()->withInput()->with('captcha_error', 'Erro');
        }

        if (!$this->validate($validation->getRules()) ) {
            return redirect()->back()->withInput()->with('errors', $validation->getErrors());
        }

        // Dados do formulário
        $nome = filter_var($this->request->getPost('nome'), FILTER_SANITIZE_STRING);
        $email = filter_var($this->request->getPost('email'), FILTER_SANITIZE_STRING);
        $assunto = filter_var($this->request->getPost('assunto'), FILTER_SANITIZE_STRING);
        $mensagem = filter_var($this->request->getPost('mensagem'), FILTER_SANITIZE_STRING);

        
        if( $this->request->getPost('tecnologia') )
        {
            $tecnologia = $this->request->getPost('tecnologia');
            $tecnologia = "Tecnologia: ". filter_var($tecnologia['titulo'], FILTER_SANITIZE_STRING) ."\n\n";
            $mensagem = $tecnologia . $mensagem;
        }
        
        if( $this->request->getPost('recurso') )
        {
            $recurso = $this->request->getPost('recurso');
            $recurso = "Recurso (Categoria ID ". filter_var($recurso['id'], FILTER_SANITIZE_STRING) .")\n\n";
            $mensagem = $recurso . $mensagem;
        }
        
        if( $this->request->getPost('indicacao_tipo') )
        {
            $indicacao_tipo = filter_var($this->request->getPost('indicacao_tipo'), FILTER_SANITIZE_STRING);
            $indicacao_tipo = "Indicação de: ". $indicacao_tipo ."\n\n";
            $mensagem = $indicacao_tipo . $mensagem;
        }
        
        // Adiciona dados do usuário
        $mensagem = $mensagem ."\n\n". $this->user_data();

        // Simulação de envio de e-mail
        $emailService = \Config\Services::email();
        $emailService->setFrom($email, $nome);

        $email_admin = env('emailAdmin');
        $emailService->setTo( $email_admin ); // pegar no .env
        $emailService->setSubject($assunto);

        $emailService->setMessage($mensagem);

        if ($emailService->send()) {
            return view('contact_success');
        } else {
            return redirect()->back()->withInput()->with('send_error', 'Erro ao enviar o e-mail.');
        }
    }

    // Função para gerar o captcha
    private function generateCaptcha()
    {
        $code = rand(1000, 9999);  // Gera um código aleatório de 4 dígitos
        session()->set('captcha_code', $code);

        // Caminho das três imagens de fundo do captcha
        $backgroundImages = [
            FCPATH . '/public/img/captchas/fundo-captcha-1.png',
            FCPATH . '/public/img/captchas/fundo-captcha-2.png',
            FCPATH . '/public/img/captchas/fundo-captcha-3.png',
        ];

        // Seleciona uma imagem de fundo aleatoriamente
        $randomBackground = $backgroundImages[array_rand($backgroundImages)];

        // Carrega a imagem de fundo
        $image = imagecreatefrompng($randomBackground);
        if (!$image) {
            // Se houver um erro ao carregar o fundo, cria uma imagem branca como fallback
            $image = imagecreatetruecolor(120, 40);  // Ajuste as dimensões conforme sua imagem de fundo
            $background = imagecolorallocate($image, 255, 255, 255);
            imagefilledrectangle($image, 0, 0, 120, 40, $background);
        }

        // Cor do texto (preto)
        $textColor = imagecolorallocate($image, 0, 0, 0);

        // Adicionar o texto do captcha na imagem (ajuste a posição conforme o layout do fundo)
        imagettftext($image, 16, 0, 10, 30, $textColor, FCPATH . '/public/fonts/liberationsans.ttf', $code);

        // Converter a imagem em base64 para exibição
        ob_start();
        imagepng($image);
        $imageData = ob_get_clean();

        return 'data:image/png;base64,' . base64_encode($imageData);
    }

    // Função de validação do captcha
    //private function matchesCaptcha(string $str, string $fields, array $data)
    private function confereCaptcha( $captcha_digitado = Null )
    {
        return $captcha_digitado == session()->get('captcha_code');
    }

    // Salva IP do usuário
    private function user_data()
    {
        // Obtendo o user agent
        $agent = $this->request->getUserAgent();

        if ($agent->isBrowser()) {
            $currentAgent = $agent->getBrowser() . ' ' . $agent->getVersion();
        } elseif ($agent->isRobot()) {
            $currentAgent = $agent->getRobot();
        } elseif ($agent->isMobile()) {
            $currentAgent = $agent->getMobile();
        } else {
            $currentAgent = 'User Agent não identificado';
        }

        // Obtendo o IP do usuário
        $userIP = $this->request->getIPAddress();

        // Retornando os dados
        return "[$userIP] $currentAgent";
    }

}

