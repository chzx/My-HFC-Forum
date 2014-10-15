// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
// require turbolinks
//= require_tree .

$(function() {
  $(document).on('click', '.close-box', function(e){
      e.preventDefault();
      if ( $(this).hasClass('glyphicon-chevron-up') ){
        $('.close-box').addClass('glyphicon-chevron-down');
        $('.close-box').removeClass('glyphicon-chevron-up');
    } else {
        $('.close-box').addClass('glyphicon-chevron-up');
        $('.close-box').removeClass('glyphicon-chevron-down');
    }
    $('#new_post').slideToggle();
  })
});


//If it's showing down arrow, switch to up arrow, and vice versa.
