<?php
function lapizeria_delete_reservation(){
    if($_POST['type'] == 'delete'):
        global $wpdb;
        $table = $wpdb->prefix . 'reservations';
        $id_reservations = $_POST['id'];

        $result = $wpdb->delete($table, array('id' => $id_reservations), array('%d'));
    endif;
    if($result == 1){
        $respond = array(
            'response' => 'success',
            'id'     => $id_reservations
        );
    }else{
        $respond = array(
            'response' => 'error'
        );
    }
    die(json_encode($respond));
}

add_action('wp_ajax_lapizeria_delete_reservation', 'lapizeria_delete_reservation');

function lapizeria_save_reservatio(){
    
    if(isset($_POST['submit_reservation']) && $_POST['hidden'] == "1"){
    
        // read the value from recapcha response
        $captcha = $_POST['g-recaptcha-response'];

        // send the value to the server
        $fields = array(
            'secret'    => '6LcE270UAAAAAFf24xMZs05zNtC1XWWi8wBOrDkN',
            'response'  => $captcha,
            'remoteip'  => $_SERVER['REMOTE_ADR']
        );
        
        // send the request to the server
        $ch = curl_init('https://www.google.com/recaptcha/api/siteverify');

        // configure the request
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_TIMEOUT, 15);

        // set the encode value in the URL
        curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($fields));

        // Read the return value
        $response = json_decode(curl_exec($ch));
        if($response->success){
            global $wpdb;
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
            //var_dump($result);
    
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

}

add_action('init', 'lapizeria_save_reservatio');