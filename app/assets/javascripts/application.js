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


function parallax(){
  var layer_1 = document.getElementById('layer_1');
  var layer_2 = document.getElementById('layer_2');
  var layer_3 = document.getElementById('layer_3');
  var layer_4 = document.getElementById('layer_4');

  layer_1.style.top = -(window.pageYOffset / 1) + 'px';
  layer_2.style.top = -(window.pageYOffset / 2) + 'px';
  layer_3.style.top = -(window.pageYOffset / 1) + 'px';
  layer_4.style.top = -(window.pageYOffset / 4) + 'px';
}

window.addEventListener("scroll", parallax, false);
