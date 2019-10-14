$ = jQuery.noConflict();

$(document).ready(function(){
    $('.remove_reservation').on('click', function(e){
        e.preventDefault();
        var id = $(this).attr('data-reservation');
        console.log(id);

        $.ajax({
            type: 'post',
            data: {
                'id': id,
                'type': 'delete'
            },
        });

    });
});