<?php

function lapizeria_setup(){
    add_theme_support('post-thumbnails');

    add_image_size('boxes', 437, 291, true);
}

add_action('after_setup_theme', 'lapizeria_setup');

function lapizeria_style(){
    wp_register_style('normalize', get_template_directory_uri() . '/css/normalize.css', array(), '8.0.0');
    wp_register_style('googlefonts', 'https://fonts.googleapis.com/css?family=Open+Sans:400,700,800|Raleway:400,700,900&display=swap', array(), '1.0.0');
    wp_register_style('FontAwesome', get_template_directory_uri() . '/css/font-awesome.css', array(), '4.7.0');
    wp_register_style('style', get_template_directory_uri() . '/style.css', array('normalize'), '1.0');

    // Enqueue the style
    wp_enqueue_style('normalize');
    wp_enqueue_style('googlefonts');
    wp_enqueue_style('FontAwesome');
    wp_enqueue_style('style');

    wp_register_script('script', get_template_directory_uri() . '/js/scripts.js', array('jquery'), '1.0.0', true);
    // add JavaScript
    wp_enqueue_script('jquery');
    wp_enqueue_script('script');
}

add_action('wp_enqueue_scripts', 'lapizeria_style');


// Add menu
function lapizeria_menus(){
    register_nav_menus(array(
        'header-menu' => __('Header Menu', 'lapizeria'),
        'social-menu' => __('Social Menu', 'lapizeria')
    ));
}

add_action('init', 'lapizeria_menus');