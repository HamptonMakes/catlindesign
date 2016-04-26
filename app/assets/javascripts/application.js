//= require jquery
//= require jquery_ujs
//= require_tree .


$(function() {
  $(".menu-button").click( function() {
    $("ul.items").slideToggle(300);
  });
});