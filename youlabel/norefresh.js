
 $("#sendlabels").click( function() {
 $.post( $("#submitLabels").attr("action"), 
         $("#submitLabels :input").serializeArray(), 
         function(info){ $("#success").html(info); 
   });
 //clearInputStart();
});


$("#sendlabels").submit( function() {
  return false;	
});

