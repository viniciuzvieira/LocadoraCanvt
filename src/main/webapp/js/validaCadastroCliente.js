$(document).ready(function(){

$("#cadastro").click(function(e){

	// bloqueando envio do form
	e.preventDefault();
		
	var erros = 0;
		
	// verifica se ha campos vazios
	$("#form1 input").each(function(){
			
		// conta erros
		$(this).val() == "" ? erros++ : "";
			
	});
		
	// verifica se ha erros
	if(erros > 0 ){
				 
		alert("Existe(em) campo(os) vazio(os) neste fomulário");
				
    }else{
		//return true;	
		$("#form1").submit()
	}		
			
	});

});