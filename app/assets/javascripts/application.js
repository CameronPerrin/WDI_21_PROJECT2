// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
document.addEventListener( 'DOMContentLoaded', function () {

console.log("JS loaded");

// var wishlist = document.getElementById("wishlist-add");
// wishlist.addEventListener("click", function(){
//   this.innerHTML = ('<%= Wishlist.create(user_id: current_user.id, item_id: @item.id) %>');
//   return this.innerHTML.firstChild;
// });


$("#wishlist-add").on("click", function(){
//   $(this).replaceWith($("<% Wishlist.create(user_id: current_user.id, item_id: @item.id) %>"))
  // var erb = <%= Wishlist.create(user_id: current_user.id, item_id: @item.id) %>;
  // $(this).html(erb);

//   $(this).load(document.URL +  ' #wishlist-change');


});

// $('#wishlist-add').html = '<% Wishlist.create(user_id: current_user.id, item_id: @item.id) %>'






});
