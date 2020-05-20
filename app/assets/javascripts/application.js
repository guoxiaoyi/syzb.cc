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
//= require jquery
//= require swiper.min.js
//= require carouselbox.min.js
//= require jquery_ujs
//
$(document).ready(function() {
  $(".e_box.p_problemCategory .e_btn.btn.p_btn-show").click(function(event) {
    /* Act on the event */
    $(".e_box.p_category").addClass('animate');
  });
  $(".e_btn.p_btn-hide.background_assist").click(function(){
    $(".e_box.p_category").removeClass('animate');
  })
});