//= require jquery
//= require jquery_ujs
//= require_tree .


$(function() {
  // if (matchMedia('only screen and (max-width: 700px)').matches) {
    $("#button").click(function() {
      $("#items").toggle();
    });
  // };
});