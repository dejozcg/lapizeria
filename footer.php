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
                <p>Podgorica, ul. Slobode br. 2423</p>
                <p>Phone Numbe: +38267256456</p>
            </div>

            <p class="copyright">All right reserved <?php echo date('Y') ?></p>
        </footer>

        <?php wp_footer(); ?>
    </body>
</html>