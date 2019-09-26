<?php

function lapizeria_setup(){
    add_theme_support('post-thumbnails');

    add_image_size('boxes', 437, 291, true);
    add_image_size('specialties', 768, 515, true);
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

function lapizzeria_specialties() {
	$labels = array(
		'name'               => _x( 'Pizzas', 'lapizeria' ),
		'singular_name'      => _x( 'Pizza', 'post type singular name', 'lapizeria' ),
		'menu_name'          => _x( 'Pizzas', 'admin menu', 'lapizzeria' ),
		'name_admin_bar'     => _x( 'Pizzas', 'add new on admin bar', 'lapizeria' ),
		'add_new'            => _x( 'Add New', 'book', 'lapizeria' ),
		'add_new_item'       => __( 'Add New Pizza', 'lapizeria' ),
		'new_item'           => __( 'New Pizzas', 'lapizeria' ),
		'edit_item'          => __( 'Edit Pizzas', 'lapizeria' ),
		'view_item'          => __( 'View Pizzas', 'lapizeria' ),
		'all_items'          => __( 'All Pizzas', 'lapizeria' ),
		'search_items'       => __( 'Search Pizzas', 'lapizeria' ),
		'parent_item_colon'  => __( 'Parent Pizzas:', 'lapizeria' ),
		'not_found'          => __( 'No Pizzas found.', 'lapizeria' ),
		'not_found_in_trash' => __( 'No Pizzas found in Trash.', 'lapizeria' )
	);

	$args = array(
		'labels'             => $labels,
    'description'        => __( 'Description.', 'lapizeria' ),
		'public'             => true,
		'publicly_queryable' => true,
		'show_ui'            => true,
		'show_in_menu'       => true,
		'query_var'          => true,
		'rewrite'            => array( 'slug' => 'specialties' ),
		'capability_type'    => 'post',
		'has_archive'        => true,
		'hierarchical'       => false,
		'menu_position'      => 6,
		'supports'           => array( 'title', 'editor', 'thumbnail' ),
    'taxonomies'          => array( 'category' ),
	);

	register_post_type( 'specialties', $args );
}

add_action( 'init', 'lapizzeria_specialties' );