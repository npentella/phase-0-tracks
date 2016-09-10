console.log("Scripts Running...")

$(document).ready(function(){
    $("#one").click(function(){
        $("#one").animate({height: "500px"});
    });
    $("#one").dblclick(function(){
    	$("#one").animate({height: "250px"});
    });
    $("#two").click(function(){
        $("#two").animate({width: "500px"});
    });
    $("#two").dblclick(function(){
    	$("#two").animate({width: "250px"});
    });
    $("#three").click(function(){
    	$("#four").toggle();
    });
    $("#four").click(function(){
    	$("div").animate({
    		width: '500px',
    		height: '500px'
    	});
    });
    $("#four").dblclick(function(){
    	$("div").animate({
    		width: '250px',
    		height: '250px'
    	});
    });
});