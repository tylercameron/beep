$(document).ready(function() {

  $('.login-btn').on('click', function() {

    $('.login-btn').hide();
    $('.signup-btn').hide();
    $('.homepage-search').hide();
    $('.login-container').show();
  });

  $('.signup-btn').on('click', function() {

    $('.login-btn').hide();
    $('.signup-btn').hide();
    $('.homepage-search').hide();
    $('.signup-container').show();
  });

  $('.close-button').on('click', function() {

    $('.login-container').hide();
    $('.signup-container').hide();
    $('.login-btn').show();
    $('.signup-btn').show();
    $('.homepage-search').show();

  });

  $('#header-login').on('click', function(eventObject) {
    eventObject.preventDefault();
      $('.login-container').show();

  });

  $('.map-btn').on('click', function() {
    $('.map-div').show();
    $('#map').show();
    $('.map-btn').hide();
    initMap();
  });

});
