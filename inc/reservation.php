<?php

function lapizeria_save_reservatio(){
    global $wpdb;

    
    if(isset($_POST['submit_reservation']) && $_POST['hidden'] == "1"){
        
        $table = $wpdb->prefix . 'reservations';

        $data = array (
            'name' => sanitize_text_field($_POST['name']), 
            'date' => sanitize_text_field($_POST['date']), 
            'email' => sanitize_email($_POST['email']), 
            'phone' => sanitize_text_field($_POST['phone']), 
            'message' => sanitize_text_field($_POST['message'])
        );

        $format = array(
            '%s',
            '%s',
            '%s',
            '%s',
            '%s'
        );

        $result = $wpdb->insert($table, $data, $format);
        var_dump($result);

        if($result){
            $url = get_page_by_title('Thanks for reservation!');
            wp_redirect(get_permalink($url));
            exit;
        }else{
            $url = get_page_by_title('Error!');
            wp_redirect(get_permalink($url));
            exit;
        }
    }

}

add_action('init', 'lapizeria_save_reservatio');