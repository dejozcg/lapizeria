<div class="reservation-info">
    <form class="reservation-form" method="post">
        <h2>Make a reservation</h2>
        <div class="field">
            <input type="text" name="name" placeholder="Name" required>
        </div>
        <div class="field">
            <input type="datetime-local" name="date" step="300" placeholder="Date" required>
        </div>
        <div class="field">
            <input type="email" name="email" placeholder="E-Mail" required>
        </div>
        <div class="field">
            <input type="tel" name="phone" placeholder="Phone Number" required>
        </div>
        <div class="field">
            <textarea name="message" id="" rows="10" placeholder="Message" required></textarea>
        </div>
        <input type="submit" name="submit_reservation" class="button" value="send">
        <input type="hidden" name="hidden" value="1">
    </form>
</div>