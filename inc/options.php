<?php
function lapizeria_options()
{
    add_menu_page('La Pizzeria', 'La Pizzeria Options', 'administrator', 'lapizeria_options', 'lapizeria_adjustments', '', 20);

    add_submenu_page('lapizeria_options', 'Reservation', 'Reservations', 'administrator', 'lapizeria_reservations', 'lapizeria_reservations');
}
add_action('admin_menu', 'lapizeria_options');

function lapizeria_settings()
{
    // Google Maps Group
    register_setting('lapizeria_options_gmap', 'lapizeria_gmap_latitud');
    register_setting('lapizeria_options_gmap', 'lapizeria_gmap_longitude');
    register_setting('lapizeria_options_gmap', 'lapizeria_gmap_zoom');
    register_setting('lapizeria_options_gmap', 'lapizeria_gmap_apikey');

    // Information Group
    register_setting('lapizeria_options_info', 'lapizeria_location');
    register_setting('lapizeria_options_info', 'lapizeria_phonenumber');
}
add_action('init', 'lapizeria_settings');

function lapizeria_adjustments()
{ ?>
    <div class="wrap">
        <h1>Lapizeria Adjustments</h1>
        <form action="options.php" method="post">
            <?php
                settings_fields('lapizeria_options_gmap');
                do_settings_sections('lapizeria_options_gmap');

                ?>
            <h2>Google Maps</h2>
            <table class="form-table">
                <tr valign="top">
                    <th scope="row">Latitude: </th>
                    <td>
                        <input type="text" name="lapizeria_gmap_latitud" value="<?php echo esc_attr(get_option('lapizeria_gmap_latitud')); ?>">
                    </td>
                </tr>
                <tr valign="top">
                    <th scope="row">Longitude: </th>
                    <td>
                        <input type="text" name="lapizeria_gmap_longitude" value="<?php echo esc_attr(get_option('lapizeria_gmap_longitude')); ?>">
                    </td>
                </tr>
                <tr valign="top">
                    <th scope="row">Zoom: </th>
                    <td>
                        <input type="number" min="12" max="21" name="lapizeria_gmap_zoom" value="<?php echo esc_attr(get_option('lapizeria_gmap_zoom')); ?>">
                    </td>
                </tr>
                <tr valign="top">
                    <th scope="row">API Key: </th>
                    <td>
                        <input type="text" name="lapizeria_gmap_apikey" value="<?php echo esc_attr(get_option('lapizeria_gmap_apikey')); ?>">
                    </td>
                </tr>
            </table>

            <?php
                settings_fields('lapizeria_options_info');
                do_settings_sections('lapizeria_options_info');

            ?>
            <h2>Lapizeria info</h2>
            <table class="form-table">
                <tr valign="top">
                    <th scope="row">Location: </th>
                    <td>
                        <input type="text" name="lapizeria_location" value="<?php echo esc_attr(get_option('lapizeria_location')); ?>">
                    </td>
                </tr>
                <tr valign="top">
                    <th scope="row">Phone number: </th>
                    <td>
                        <input type="text" name="lapizeria_phonenumber" value="<?php echo esc_attr(get_option('lapizeria_phonenumber')); ?>">
                    </td>
                </tr>
            </table>

            <?php submit_button(); ?>
        </form>
    </div>

<?php }

function lapizeria_reservations()
{ ?>
    <div class="wrap">
        <h1>Reservations</h1>
        <table class="wp-list-table widefat striped">
            <thead>
                <tr>
                    <td class="manage-column">ID</td>
                    <td class="manage-column">Name</td>
                    <td class="manage-column">Date of Reservation</td>
                    <td class="manage-column">Email</td>
                    <td class="manage-column">Phone</td>
                    <td class="manage-column">Message</td>
                    <td class="manage-column">Delete</td>
                </tr>
            </thead>
            <tbody>
                <?php
                    global $wpdb;
                    $table = $wpdb->prefix . 'reservations';
                    $reservations = $wpdb->get_results("SELECT * FROM $table", ARRAY_A);
                    foreach ($reservations as $reservation) :
                        ?>
                    <tr>
                        <td><?php echo $reservation['id']; ?></td>
                        <td><?php echo $reservation['name']; ?></td>
                        <td><?php echo $reservation['date']; ?></td>
                        <td><?php echo $reservation['email']; ?></td>
                        <td><?php echo $reservation['phone']; ?></td>
                        <td><?php echo $reservation['message']; ?></td>
                        <td><a href="#" class="remove_reservation" data-reservation="<?php echo $reservation['id']; ?>">Remove</a></td>
                    <?php endforeach; ?>
                    </tr>
            </tbody>
        </table>
    </div>
<?php }
?>