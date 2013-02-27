 
 	$(document).ready(function(){
 		$("li.notready").click(function(event){
 			alert("We Are Still Working On This Set");
 			event.preventDefault();
 			$(this).hide("slow");
 		});
 		$("li.flash.wrong").click(function(event){
 			alert("Incorrect. Please Try Again");
 			event.preventDefault();
 			$(this).hide("slow");
 		});
 		$("li.flash.right").click(function(event){
 			event.preventDefault();
 			$(".cards").ajax("/cards/start")

 			 			
 			
 		});
 	});
 