<?php
    function lapizeria_options(){
        add_menu_page('La Pizzeria', 'La Pizzeria Options', 'administrator', 'lapizeria_options', 'lapizeria_adjustments', '', 20);

        add_submenu_page('lapizeria_options', 'Reservation', 'Reservations', 'administrator', 'lapizeria_reservations', 'lapizeria_reservations');
    }
    add_action('admin_menu', 'lapizeria_options');

    function lapizeria_adjustments(){
        echo "Ovo je options page";
    }

    function lapizeria_reservations(){ ?>
        <div class="wrap">
            <h1>Reservations</h1>
            <table class="wp-list-table widefat striped">
                <thead>
                    <tr>
                        <td>ID</td>
                        <td>Name</td>
                        <td>Date of Reservation</td>
                        <td>Email</td>
                        <td>Phone</td>
                        <td>Message</td>
                    </tr>
                </thead>
                <tbody>
                    <?php
                        global $wpdb;
                        $table = $wpdb->prefix . 'reservations';
                        $reservations = $wpdb->get_results("SELECT * FROM $table", ARRAY_A);
                        foreach($reservations as $reservation):
                    ?>
                    <tr>
                        <td><?php echo $reservation['id']; ?></td>
                        <td><?php echo $reservation['name']; ?></td>
                        <td><?php echo $reservation['date']; ?></td>
                        <td><?php echo $reservation['email']; ?></td>
                        <td><?php echo $reservation['phone']; ?></td>
                        <td><?php echo $reservation['message']; ?></td>
                        <?php endforeach; ?>
                    </tr>
                </tbody>
            </table>
        </div>
    <?php }
?>