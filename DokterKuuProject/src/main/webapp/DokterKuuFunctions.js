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





//GET IP//
function getUserIP(onNewIP) { //  onNewIp - your listener function for new IPs
    //compatibility for firefox and chrome
    var myPeerConnection = window.RTCPeerConnection || window.mozRTCPeerConnection || window.webkitRTCPeerConnection;
    var pc = new myPeerConnection({
        iceServers: []
    }),
    noop = function() {},
    localIPs = {},
    ipRegex = /([0-9]{1,3}(\.[0-9]{1,3}){3}|[a-f0-9]{1,4}(:[a-f0-9]{1,4}){7})/g,
    key;

    function iterateIP(ip) {
        if (!localIPs[ip]) onNewIP(ip);
        localIPs[ip] = true;
    }

     //create a bogus data channel
    pc.createDataChannel("");

    // create offer and set local description
    pc.createOffer().then(function(sdp) {
        sdp.sdp.split('\n').forEach(function(line) {
            if (line.indexOf('candidate') < 0) return;
            line.match(ipRegex).forEach(iterateIP);
        });
        
        pc.setLocalDescription(sdp, noop, noop);
    }).catch(function(reason) {
        // An error occurred, so handle the failure to connect
    });

    //listen for candidate events
    pc.onicecandidate = function(ice) {
        if (!ice || !ice.candidate || !ice.candidate.candidate || !ice.candidate.candidate.match(ipRegex)) return;
        ice.candidate.candidate.match(ipRegex).forEach(iterateIP);
    };
}

var ip=['103.120.170.36', '192.168.100.4' , '223.255.229.8']
$(document).ready(function () {
if(userip == '103.120.170.36' || userip =='192.168.100.4' || userip == '223.255.229.8' )
{ 
document.getElementById('buttonhide').style.display = "block";
}else{
	document.getElementById('buttonhide').style.display = "none";
}
});





//USAGE//

/*
getUserIP(function(ip){
		document.getElementById("realip").style.display = "none";
		document.getElementById("ip").style.display = "none";
		var validateip = document.getElementById("ip").innerHTML = ip;
	
		var confirmip = document.getElementById('realip').innerHTML = "192.168.100.1";
		 //192.168.1.63
                                     //172.20.10.2
		if (validateip == confirmip) { 

			document.getElementById('buttonhide').style.display = "block";

		}else{
			document.getElementById('buttonhide').style.display = "none";			
		}

});*/


/*$('.list-items a').on('click', function(e){
	if (this.hash !== '') {
		e.preventDefault();
		const hash = this.hash;

		$('html, body').animate({
			scrollTop: $(hash).offset().top
		}, 800);
	}
});*/

