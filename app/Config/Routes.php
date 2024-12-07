<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */

$routes->get('/', 'Paginas::index');
$routes->get('/index', 'Paginas::index');
$routes->get('/site/(:segment)', 'Paginas::site/$1');

// tecnologias
$routes->get('tecnologias/ver/(:segment)', 'Tecnologias::ver/$1');
$routes->get('tecnologias/redirecionar/(:num)', 'Tecnologias::redirecionar/$1');
$routes->get('tecnologias/(:segment)', 'Tecnologias::index/$1');
$routes->post('tecnologias/busca', 'Tecnologias::busca'); // busca
$routes->get('tecnologias/', 'Tecnologias::index');
$routes->post('tecnologias/', 'Tecnologias::busca'); // busca

// recursos
$routes->get('recursos/', 'Recursos::index');
$routes->get('recursos/index', 'Recursos::index');
$routes->get('recursos/redirecionar/(:num)', 'Recursos::redirecionar/$1');
$routes->get('recursos/(:segment)', 'Recursos::index/$1');

// contato
$routes->get('contato/(:segment)/(:segment)/(:num)', 'Contatos::index/$1/$2/$3');
$routes->get('contato/(:segment)/(:segment)', 'Contatos::index/$1/$2');
$routes->get('contato/(:segment)', 'Contatos::index/$1');
$routes->get('contato', 'Contatos::index');
$routes->post('contato/enviar', 'Contatos::enviar');

// PAGINAS RESTRITAS
$routes->group('', ['filter' => 'checkLogin'], function($routes)
{
    $routes->get('painel/', 'Admin::painel');
});

