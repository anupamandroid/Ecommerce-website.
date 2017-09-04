$(document).ready(function() {
	$(window).scroll(function() {
		if ($(this).scrollTop() > 100) {
			$('#back-to-top').fadeIn();
		} else {
			$('#back-to-top').fadeOut();
		}
	});
	// scroll body to 0px on click
	$('#back-to-top').click(function() {
		$('#back-to-top').tooltip('hide');
		$('body,html').animate({
			scrollTop : 0
		}, 800);
		return false;
	});

	$('#back-to-top').tooltip('show');

});

$('#myModal').modal('show');

function formSubmit() {
	document.getElementById("logoutForm").submit();
}


function myMap() {
	var myCenter = new google.maps.LatLng(12.955335, 77.641177);
	var mapCanvas = document.getElementById("googleMap");
	var mapOptions = {
		center : myCenter,
		zoom : 19
	};
	var map = new google.maps.Map(mapCanvas, mapOptions);
	var marker = new google.maps.Marker({
		position : myCenter,
		animation : google.maps.Animation.BOUNCE
	});
	marker.setMap(map);
	var infowindow = new google.maps.InfoWindow({
		content : "Hello ! Welcome"
	});
	infowindow.open(map, marker);
}

function yesnoCheck(that) {
	  
    if (that.value == "customer") 
    { var text=document.getElementsByClassName("ifYes");
    	for(var i=0;i<text.length;i++){ text[i].disabled = true;}
    } 
    else 
    { var text=document.getElementsByClassName("ifYes");
    	for(var i=0;i<text.length;i++){text[i].disabled = false;}
    }
    
}

function itemCheck(that) {
	  
    if(that.value != "") document.getElementById("itemList").submit();
  
}

function invokeModel(id,name,pruductDetail,salesPrice,itemHeight,itemLength,itemWidth,itemWeight,mainImageUrl,otherImageUrl1,otherImageUrl2,otherImageUrl3){
	
	
	var Fcurr= document.URL;
	var split = Fcurr.split("#");
	document.getElementById("image").src = split[0]+'/resources/CoolTheme/images/'+mainImageUrl;
	document.getElementById("name").innerHTML = name;
	document.getElementById("desciption").innerHTML = pruductDetail;
	document.getElementById("height").innerHTML = itemHeight;
	document.getElementById("length").innerHTML = itemLength;
	document.getElementById("width").innerHTML = itemWidth;
	document.getElementById("weight").innerHTML = itemWeight;
	document.getElementById("money").innerHTML = salesPrice;
	$("#knowMore").modal()
	 
	}

