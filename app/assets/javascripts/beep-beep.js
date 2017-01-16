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

  $(".ttl").on('reload', function(){
     window.location="#avail-header";
  });


  if ($("#search").val() != "") {
    $('html,body').animate({
      scrollTop: $("#avail-header").offset().top
    });
  }

  $('.homepage-search').on('click', function () {
    var input = document.getElementById ("search")
    input.placeholder = ""
    event.stopPropagation();
  });
  $('.search-bar').on('click', function () {
    var input = document.getElementById ("search")
    input.placeholder = ""
    event.stopPropagation();
  });
  $('body').on('click', function () {
    var input = document.getElementById ("search")
    input.placeholder = "Where would you like to go?"
  });

  // function ModifyPlaceHolder () {
  //          var input = document.getElementById ("myText");
  //          input.placeholder = "No need to fill this field";
  //      }


  $('.map-btn').on('click', function() {
    $('.map-div').show();
    $('#map').show();
    $('.map-btn').hide();
    initMap();
  });

});
