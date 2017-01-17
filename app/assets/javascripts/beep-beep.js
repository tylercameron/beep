$(document).ready(function() {

  $('.login-btn').on('click', function() {

    $('.login-btn').hide();
    $('.signup-btn').hide();
    $('.login-container').fadeIn('slow');
    $('.homepage').addClass('container-film')
  });

  $('.signup-btn').on('click', function() {

    $('.login-btn').hide();
    $('.signup-btn').hide();
    $('.signup-container').fadeIn('slow');
    $('.homepage').addClass('container-film')
  });

  $('.close-button').on('click', function() {

    $('.login-container').hide();
    $('.signup-container').hide();
    $('.login-btn').show();
    $('.signup-btn').show();
    $('.homepage').removeClass('container-film')
  });

  $('#header-login').on('click', function(eventObject) {
    eventObject.preventDefault();
      $('.login-container').show();

  });

  $(".ttl").on('reload', function(){
     window.location="#avail-header";
  });




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
    console.log('clicked!');
    $('.map-div').show();
    $('#map').show();
    $('.map-btn').hide();
    initMap();
  });

  if ($("#search").val() != "") {
    $('html,body').animate({
      scrollTop: $("#avail-header").offset().top
    });
  }

});
