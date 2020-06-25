/**
 * 
 */
$(document).ready(function() {
  

/* -----------------------------------------------
                MOBILE NAVIGATION     
-------------------------------------------------- */

  $(".burger-icon").on("click", function() {
	  if($( ".main-nav" ).hasClass( "mobile-hide" )){
		    $(".main-nav").removeClass("mobile-hide");
		    $(".main-nav").addClass("mobile-show");
	  }else{
		      $(".main-nav").addClass("mobile-hide");
		      $(".main-nav").removeClass("mobile-show");
	  }
  
  });


});

var scroll = new SmoothScroll('a[href*="#"]',{
	speed: 800
});




/*$('.list-items a').on('click', function(e){
	if (this.hash !== '') {
		e.preventDefault();
		const hash = this.hash;

		$('html, body').animate({
			scrollTop: $(hash).offset().top
		}, 800);
	}
});*/

