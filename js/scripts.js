var map;
function initMap() {

    var latLan = {
        lat: parseFloat(options.latitude),
        lng: parseFloat(options.longitude)
    };

    map = new google.maps.Map(document.getElementById('map'), {
        center: latLan,
        zoom: parseInt(options.zoom)
    });

    var marker = new google.maps.Marker({
        position: latLan,
        map: map,
        title: 'La Pizzeria'
    });
}

$ = jQuery.noConflict();

$(document).ready(function(){
    $('.mobile-menu a').on('click', function(){
        $('nav.site-nav').toggle('slow');
    });
    var breakpoint = 768;
    $(window).resize(function(){
        if($(document).width() >= breakpoint){
            $('nav.site-nav').show();
        }else{
            $('nav.site-nav').hide();
        }
    });

    // Fluidbox Plugin
    jQuery('.wp-block-gallery a').each(function(){
        jQuery(this).attr({'data-fluidbox':''});
    });
    if(jQuery('[data-fluidbox]').length > 0){
        jQuery('[data-fluidbox]').fluidbox();
    }


    // Adapt Map to Height
    var map = $('#map');
    if(map.length >0){
        if($(document).width() >= breakpoint){
            displayMap(0);
        }else{
            displayMap(300);
        }
    }
    $(window).resize(function(){
        if($(document).width() >= breakpoint){
            displayMap(0);
        }else{
            displayMap(300);
        }
    });
});

function displayMap(value){
    if(value == 0){
        var locationSection = $('.location-reservation');
        var locationHeight = locationSection.height();
        $('#map').css({'height': locationHeight});
    } else{
        $('#map').css({'height': value});
    }
}