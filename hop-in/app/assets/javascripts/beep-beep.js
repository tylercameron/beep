$(document).ready(function() {

$('.login-btn').on('click', function() {

  $('.login-btn').fadeOut('fast');
  $('.signup-btn').fadeOut('fast');
  $('.login').fadeIn('slow');
});

$('.signup-btn').on('click', function() {

  $('.login-btn').fadeOut('fast');
  $('.signup-btn').fadeOut('fast');
  $('.signup-container').fadeIn('slow');
});

$('.map-btn').on('click', function() {
  $('.map-div').fadeIn('slow');
  $('#map').fadeIn('slow');
  $('.map-btn').fadeOut('fast');
  initMap();
});








});
