<?php

// Link or Import the database.php file
require get_template_directory() .'/inc/database.php';

// Hadles the submission to the database
require get_template_directory() .'/inc/reservation.php';

// Create Option Pages for the Theme
require get_template_directory() .'/inc/options.php';

function lapizeria_setup(){
    add_theme_support('post-thumbnails');

    add_image_size('boxes', 437, 291, true);
	add_image_size('specialties', 768, 515, true);
	add_image_size('specialty-portret', 435, 530, true);
	update_option('thumbnail_size_w', 253);
	update_option('thumbnail_size_h', 164);

	add_theme_support('title-tag');
}

add_action('after_setup_theme', 'lapizeria_setup');

function lapizeria_custom_logo(){
	$logo = array(
		'height' => 200,
		'width'	 => 250
	);
	add_theme_support('custom-logo', $logo);
}
add_action('after_setup_theme', 'lapizeria_custom_logo');

function lapizeria_style(){
	wp_register_style('normalize', get_template_directory_uri() . '/css/normalize.css', array(), '8.0.0');
	wp_register_style('fluidboxcss', get_template_directory_uri() . '/css/fluidbox.min.css', array(), '8.0.0');
	wp_register_style('datetime-local', get_template_directory_uri() . '/css/datetime-local-polyfill.css', array(), '1.0.0');
    wp_register_style('googlefonts', 'https://fonts.googleapis.com/css?family=Open+Sans:400,700,800|Raleway:400,700,900&display=swap', array(), '1.0.0');
    wp_register_style('FontAwesome', get_template_directory_uri() . '/css/font-awesome.css', array(), '4.7.0');
    wp_register_style('style', get_template_directory_uri() . '/style.css', array('normalize'), '1.0');

    // Enqueue the style
	wp_enqueue_style('normalize');
	wp_enqueue_style('fluidboxcss');
	wp_enqueue_style('datetime-local');
    wp_enqueue_style('googlefonts');
    wp_enqueue_style('FontAwesome');
    wp_enqueue_style('style');

	$apikey = esc_html(get_option('lapizeria_gmap_apikey'));
	wp_register_script('script', get_template_directory_uri() . '/js/scripts.js', array('jquery'), '1.0.0', true);
	wp_register_script('datetime-local-polyfill', get_template_directory_uri() . '/js/datetime-local-polyfill.min.js', array('jquery', 'jquery-ui-core', 'jquery-ui-datepicker', 'modernizer'), '1.0.0', true);
	wp_register_script('googlemaps', 'https://maps.googleapis.com/maps/api/js?key=' .$apikey . '&callback=initMap', array(), '', true);
	wp_register_script('modernizer', 'https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js', array(), '2.8.3', true);
	wp_register_script('fluidboxjs', get_template_directory_uri() . '/js/jquery.fluidbox.min.js', array('jquery'), '1.0.0', true);

    // add JavaScript
	wp_enqueue_script('jquery');
	wp_enqueue_script('jquery-ui-core');
	wp_enqueue_script('jquery-ui-datepicker');
	wp_enqueue_script('datetime-local-polyfill');
	wp_enqueue_script('modernizer');
	wp_enqueue_script('fluidboxjs');
	wp_enqueue_script('googlemaps');
	wp_enqueue_script('script');
	
	wp_localize_script(
		'script',
		'options',
		array(
			'latitude' => esc_html(get_option('lapizeria_gmap_latitud')),
			'longitude'=> esc_html(get_option('lapizeria_gmap_longitude')),
			'zoom'	   => esc_html(get_option('lapizeria_gmap_zoom'))
		)
	);
}

add_action('wp_enqueue_scripts', 'lapizeria_style');

function lapizeria_admin_script(){
	wp_enqueue_style('sweetalert', get_template_directory_uri() . '/css/sweetalert2.min.css');
	wp_enqueue_script('sweetalertjs', get_template_directory_uri() . '/js/sweetalert2.min.js', array('jquery'), 1.0, true);

	wp_enqueue_script('adminjs', get_template_directory_uri() . '/js/admin_ajax.js', array('jquery'), 1.0, true);

	wp_localize_script(
		'adminjs',
		'admin_ajax',
		array('ajaxurl' => admin_url('admin-ajax.php'))
	);
}

add_action('admin_enqueue_scripts', 'lapizeria_admin_script');

// Add menu
function lapizeria_menus(){
    register_nav_menus(array(
        'header-menu' => __('Header Menu', 'lapizeria'),
        'social-menu' => __('Social Menu', 'lapizeria')
    ));
}

add_action('init', 'lapizeria_menus');

function lapizeria_specialties() {
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

add_action( 'init', 'lapizeria_specialties' );

/** WIDGET ZONE */
function lapizeria_widgets() {

	register_sidebar(
		array(
			'name'          => 'Blog Sidebar',
			'id'            => 'blog_sidebar',
			'before_widget' => '<div class="widget">',
			'after_widget'  => '</div>',
			'before_title'  => '<h3>',
			'after_title'   => '</h3>',
		)
	);

}
add_action( 'widgets_init', 'lapizeria_widgets' );

function add_async_defer($tag, $handle){
	if('googlemaps' !== $handle){
		return $tag;
	}
	return str_replace(' src', 'async="async" defer="defer" src', $tag);
}
add_filter('script_loader_tag', 'add_async_defer', 10, 2);