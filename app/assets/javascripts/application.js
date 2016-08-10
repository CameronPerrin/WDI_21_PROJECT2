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
$(document).on('turbolinks:load', function() {


  console.log("JS loaded");

  function shake(div){
      var interval = 100;
      var distance = 10;
      var times = 4;
      $(div).css('position','relative');
      for(var iter=0;iter<(times+1);iter++){                            
          $(div).animate({ 
              left:((iter%2==0 ? distance : distance*-1))
              },interval);                                   
      }                                           
      $(div).animate({ left: 0},interval);                            
  }

  function promoChangeWord(){
    if(photoNum === 1) {
      $(".main-changing-promo").html('Our shipping times are');
      $(".changing-promo").html('Fast');
    } else if(photoNum === 2) {
      $(".main-changing-promo").html('Our delivery men are');
      $(".changing-promo").html('Reliable');
    } else if(photoNum === 3) {
      $(".main-changing-promo").html('Our customer service is');
      $(".changing-promo").html('Friendly');
    };
  };

  var photoNum = 3

  $(".promo").css("background-image", "url(assets/promo-photo"+photoNum+".png)");
  promoChangeWord()




  $(".forward").on("click", function(){
    if(photoNum > 2){
      shake($(".promo"));
    } else {
    photoNum++
    $(".promo").css("background-image", "url(assets/promo-photo"+photoNum+".png)");
    $(".changing-promo").fadeOut('slow');
    $(".main-changing-promo").fadeOut('slow');
    setTimeout(function(){
      promoChangeWord()
    }, 600);
    $(".main-changing-promo").fadeIn('slow');
    $(".changing-promo").fadeIn('slow');
    }
  });



  $(".backward").on("click", function(){
    if(photoNum < 2){
      shake($(".promo"));
    } else {
      photoNum--
      $(".promo").css("background-image", "url(assets/promo-photo"+photoNum+".png)");
      $(".main-changing-promo").fadeOut('slow');
      $(".changing-promo").fadeOut('slow');
      setTimeout(function(){
        promoChangeWord()
      }, 600);
      $(".main-changing-promo").fadeIn('slow');
      $(".changing-promo").fadeIn('slow');
    }
  });


  $( ".menu" ).hide();
  $( ".hamburger" ).click(function() {
    $( ".menu" ).slideToggle( "fast", function() {
    });
  });

  var $items = $(".items")

  $(".search-items").on('keyup', function(){
    var input = this;
    $items.each(function() {
      var userInput = $(this).text().toLowerCase()
      var itemTitle = $(input).val().toLowerCase()


      if(userInput.match(itemTitle)){
        $(this).show()
      } else {
        $(this).hide()
      }
    })
  })

  $(".exit").on("click", function(){

    $(".notice").animate({top: "+=20px"},200);
    setTimeout(function(){
      $(".notice").animate({top: "-=150px"},200);
    }, 200)
    setTimeout(function(){
      $(".notice").css("display", "none");
    }, 800);


    $(".alert").animate({top: "+=20px"},200);
    setTimeout(function(){
      $(".alert").animate({top: "-=150px"},200);
    }, 200)
    setTimeout(function(){
      $(".alert").css("display", "none");
    }, 800);

  });




    
});
