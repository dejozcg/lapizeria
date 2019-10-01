<?php 
/**
* Template Name: Contact Reservation
*/
get_header(); ?>
<?php while(have_posts()): the_post(); ?>
    <div class="hero" style="background-image:url(<?php echo get_the_post_thumbnail_url(); ?>)">
        <div class="hero-content">
            <div class="hero-text">
                <?php //the_post_thumbnail(); ?>
                <h2><?php the_title(); ?></h2>    
            </div>
        </div>
    </div>

    <div class="main-content container clear">
        <main class="text-center content-text">
            <form class="reservation-form" method="post">
                <h2>Make a reservation</h2>
                <div class="field">
                    <input type="text" name="name" placeholder="Name" required>
                </div>
                <div class="field">
                    <input type="datetime-local" name="date" placeholder="Date" required>
                </div>
                <div class="field">
                    <input type="email" name="email" placeholder="E-Mail" required>
                </div>
                <div class="field">
                    <input type="tel" name="phone" placeholder="Phone Number" required>
                </div>
                <div class="field">
                    <textarea name="message" id="" cols="30" rows="10" placeholder="Message" required></textarea>
                </div>
                <input type="submit" name="submit_reservation" class="button">
                <input type="hidden" name="hidden" value="1">
            </form>
        </main>
    </div>

<?php endwhile; ?>

<?php get_footer(); ?>