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

//= require_tree .

//$(document).on("page:change", function() {
$(document).on("turbolinks:load", function() {

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
  
    layer_1.style.top = -(window.pageYOffset / 1) + 'px';
    layer_2.style.top = -(window.pageYOffset / 2) + 'px';
    layer_3.style.top = -(window.pageYOffset / 1) + 'px';
    layer_4.style.top = -(window.pageYOffset / 4) + 'px';
    layer_5.style.top = -(window.pageYOffset / 6) + 'px';
    layer_6.style.top = -(window.pageYOffset / 7) + 'px';
  }
  window.addEventListener("scroll", parallax, false);
// fim parallax


});