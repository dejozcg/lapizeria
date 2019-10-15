$ = jQuery.noConflict();

$(document).ready(function(){
    $('.remove_reservation').on('click', function(e){
        e.preventDefault();
        var id = $(this).attr('data-reservation');
        // console.log(id);

        $.ajax({
            type: 'post',
            data: {
                'action': 'lapizeria_delete_reservation',
                'id': id,
                'type': 'delete'
            },
            url: admin_ajax.ajaxurl,
            success: function(data){
                console.log(data);
                var result = JSON.parse(data);
                console.log(result);
                if(result.response == 'success'){
                    jQuery("[data-reservation='" +result.id +"']").parent().parent().remove();
                    Swal.fire(
                        'Reservation Deleted!',
                        'Success, the reservation was deleted!',
                        'success'
                      );
                }
                // if(data == 1){
                //     location.reload();
                // }
            }
        });

    });
});