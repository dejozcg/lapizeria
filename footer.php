        <footer>
            <?php
                $args = array(
                    'theme_location' => 'header-menu',
                    'container'      => 'nav',
                    'after'          => '<span class="separator"> | </span>'
                );
                wp_nav_menu($args);
            ?>

            <div class="location">
                <p><?php echo esc_html(get_option('lapizeria_location')); ?></p>
                <p>Phone Numbe: <?php echo esc_html(get_option('lapizeria_phonenumber')); ?></p>
            </div>

            <p class="copyright">All right reserved <?php echo date('Y') ?></p>
        </footer>

        <?php wp_footer(); ?>
    </body>
</html>