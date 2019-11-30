
$(document).ready(function(){
	carregar();
	
	
	if ($("form :button" ).length > 0){			
		$("form :button").click( function(event) {
			event.preventDefault();
		
			var posting = $.post( '../api/envio.php', $('form').serialize()	);
			posting.done(function( data ) {
				alert("Formulário submetido com SUCESSO");
				title = document.getElementsByName("titulo")[0].value;
				localStorage.clear(); 	
				$('form').trigger("reset");	
				//console.log($('form'));
				//location.reload(true);
				//console.log(data);
			});
		});
		
	}
	setInterval(salvar, 500);
		

  });



 
function changeElements(responseJson){
    var keys = Object.keys(responseJson);
			for(var i=0; i<keys.length; i++){
				var key = keys[i];
				var value = responseJson[key];			
				if ( document.getElementById(key) != null ) {
				document.getElementById(key).value = value;
				}				
		
				if (value == 'Ok'){
				var element = key+'-0';	
				document.getElementById(key+'-0').checked = true;
				document.getElementById(key+'-1').checked = false;
				document.getElementById(key+'-2').checked = false;
				}
				else if (value == 'Ng'){
				document.getElementById(key+'-0').checked = false;
				document.getElementById(key+'-1').checked = true;
				document.getElementById(key+'-2').checked = false;
				}
				else if (value == 'Na'){
				document.getElementById(key+'-0').checked = false;
				document.getElementById(key+'-1').checked = false;
				document.getElementById(key+'-2').checked = true;
				}			
			}	

   }


	function carregar(){	    
    title = document.getElementsByName("titulo")[0].value;    
    var loadedValue =  JSON.parse(localStorage.getItem(title));  
	var parsedValue =[];
	if (loadedValue != null){
      for(var i=0; i<loadedValue.length; i++){
        
        var key = loadedValue[i].name;
        var value = loadedValue[i].value;        
        parsedValue[key] = value;     
      }
	changeElements(parsedValue);  
	}
	} 
    function salvar(){
	//alert("Salvo");
	  console.log("salvar");
      title = document.getElementsByName("titulo")[0].value;
      var form = $("form").serializeArray();    
      localStorage.setItem(title,JSON.stringify(form));       
    }
 