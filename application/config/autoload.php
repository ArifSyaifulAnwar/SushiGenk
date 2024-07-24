<?php
defined('BASEPATH') or exit('No direct script access allowed');


$autoload['packages'] = array();

$autoload['libraries'] = array('session', 'form_validation', 'upload', 'database', 'user_login', 'cart', 'pelanggan_login');

$autoload['drivers'] = array();

$autoload['helper'] = array('url', 'form', 'file', 'string');

$autoload['config'] = array();

$autoload['language'] = array();
    
$autoload['model'] = array('m_home');
