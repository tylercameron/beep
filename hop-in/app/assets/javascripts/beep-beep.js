$(document).ready(function() {

  $('.login-btn').on('click', function() {

    $('.login-btn').fadeOut('fast');
    $('.signup-btn').fadeOut('fast');
    $('.homepage-search').fadeOut('fast');
    $('.login').fadeIn('slow');
  });

  $('.signup-btn').on('click', function() {

    $('.login-btn').fadeOut('fast');
    $('.signup-btn').fadeOut('fast');
    $('.homepage-search').fadeOut('fast');
    $('.signup-container').fadeIn('slow');
  });

  $('.close').on('click', function() {

    $('.login').fadeOut('fast');
    $('.signup-container').fadeOut('fast');
    $('.login-btn').fadeIn('slow');
    $('.signup-btn').fadeIn('slow');
    $('.homepage-search').fadeIn('slow');

  });

  $('.map-btn').on('click', function() {
    $('.map-div').fadeIn('slow');
    $('#map').fadeIn('slow');
    $('.map-btn').fadeOut('fast');
    initMap();
  });

});
