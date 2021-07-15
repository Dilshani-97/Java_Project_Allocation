

function realTimeClock(){
	
	var clock = new Date();
	var hour = clock.getHours();
	var minutes = clock.getMinutes();
	var sec = clock.getSeconds();
	
	hour = ("0" + hour).slice(-2);
	minutes = ("0" + minutes).slice(-2);
	sec = ("0" + sec).slice(-2);
	
	
	document.getElementById("clock").innerHTML = hour + " : " +minutes + " : "+sec ; 
	
	var t = setTimeout(realTimeClock,500);

	
};

