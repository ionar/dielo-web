// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require turbolinks

//= require jquery
//= require bootstrap-sprockets


//= require scrollReveal

//= require ckeditor/init

//= require_tree .


//$(document).on("page:change", function() {
$(document).on("turbolinks:load", function() {

    //Froala Editor
    //$('.froala-wysiwyged').froalaEditor();

    // ScrollReveal
    $(function() {
      window.scrollReveal = new scrollReveal();
    });

    /* Efeito Scroll UP */
    $(window).scroll(function(){
      if ($(this).scrollTop() > 200) { 
        $('.scrollup_fade').fadeIn();
      } else {
      $('.scrollup_fade').fadeOut();
      }
    });
    
    $('.scrollup_fade,.back_top').click(function(){
      $("html, body").animate({scrollTop: 0 }, 600);
      return false;
    });

    $(".auto-close-alert").fadeTo(2000, 500).slideUp(500, function(){
      $(".auto-close-alert").slideUp(500);
    });


    $("#layer_1").delay(300).animate({top: "0"}, 'slow', 'swing');
    $("#layer_2").delay(900).animate({top: "0"}, 'slow', 'swing');
    $("#layer_3").delay(600).animate({top: "0"}, 'slow', 'swing');
    $("#layer_4").delay(1100).animate({top: "0"}, 'slow', 'swing');
    $("#layer_5").delay(0).animate({top: "0"}, 'slow', 'swing');
    $("#layer_6").delay(100).animate({top: "0"}, 'slow', 'swing');



// Efeito parralax cab  
  function parallax(){
    var layer_1 = document.getElementById('layer_1');
    var layer_2 = document.getElementById('layer_2');
    var layer_3 = document.getElementById('layer_3');
    var layer_4 = document.getElementById('layer_4');
    var layer_5 = document.getElementById('layer_5');
    var layer_6 = document.getElementById('layer_6');
    var layer_7 = document.getElementById('layer_7');
  
    layer_1.style.top = -(window.pageYOffset / 1) + 'px';
    layer_2.style.top = -(window.pageYOffset / 2) + 'px';
    layer_3.style.top = -(window.pageYOffset / 1) + 'px';
    layer_4.style.top = -(window.pageYOffset / 4) + 'px';
    layer_5.style.top = -(window.pageYOffset / 6) + 'px';
    layer_6.style.top = -(window.pageYOffset / 7) + 'px';
    layer_7.style.top = -(window.pageYOffset / 1) + 'px';
  }
  window.addEventListener("scroll", parallax, false);
// fim parallax

  //Efeito scrollTo
  $("nav").find("a").click(function(e) {
    e.preventDefault();
    var section = $(this).attr("href");
    $("html, body").animate({
        scrollTop: $(section).offset().top
    },1200);
  });

});