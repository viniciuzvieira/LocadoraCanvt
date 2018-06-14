$(document).ready(function () {

//    var campo = document.getElementById('campo');
//    var txt = document.getElementById('campo').value;
//    var n = txt.length;


    $("#cadastro").click(function (e) {

        // bloqueando envio do form
        e.preventDefault();

        var erros = 0;

        // verifica se ha campos vazios
        $("#form1 input").each(function () {

            // conta erros
            $(this).val() == "" ? erros++ : "";

        });

        // verifica campos em branco
        if (erros > 0) {

            if (document.getElementById("Username").value == "") {
                document.getElementById("Username").style.backgroundColor = "rgba(255, 0, 0, 0.6)";
            }

            if (document.getElementById("nomecompleto").value == "") {
                document.getElementById("nomecompleto").style.backgroundColor = "rgba(255, 0, 0, 0.6)";
            }

            if (document.getElementById("cpf").value == "") {
                document.getElementById("cpf").style.backgroundColor = "rgba(255, 0, 0, 0.6)";
            }

            if (document.getElementById("datanasc").value == "") {
                document.getElementById("datanasc").style.backgroundColor = "rgba(255, 0, 0, 0.6)";
            }

            if (document.getElementById("cep").value == "") {
                document.getElementById("cep").style.backgroundColor = "rgba(255, 0, 0, 0.6)";
            }

            if (document.getElementById("UF").value == "") {
                document.getElementById("UF").style.backgroundColor = "rgba(255, 0, 0, 0.6)";
            }

            if (document.getElementById("cidade").value == "") {
                document.getElementById("cidade").style.backgroundColor = "rgba(255, 0, 0, 0.6)";
            }

            if (document.getElementById("bairro").value == "") {
                document.getElementById("bairro").style.backgroundColor = "rgba(255, 0, 0, 0.6)";
            }

            if (document.getElementById("endereco").value == "") {
                document.getElementById("endereco").style.backgroundColor = "rgba(255, 0, 0, 0.6)";
            }

            if (document.getElementById("numerocasa").value == "") {
                document.getElementById("numerocasa").style.backgroundColor = "rgba(255, 0, 0, 0.6)";
            }

            if (document.getElementById("NumeroCNH").value == "") {
                document.getElementById("NumeroCNH").style.backgroundColor = "rgba(255, 0, 0, 0.6)";
            }

            if (document.getElementById("email").value == "") {
                document.getElementById("email").style.backgroundColor = "rgba(255, 0, 0, 0.6)";
            }

            if (document.getElementById("tel").value == "") {
                document.getElementById("tel").style.backgroundColor = "rgba(255, 0, 0, 0.6)";
            }

            if (document.getElementById("senha").value == "") {
                document.getElementById("senha").style.backgroundColor = "rgba(255, 0, 0, 0.6)";
            }

            swal('Por favor, preencha corretamente os campos em vermelho.');
        //verifica tamanho dos campos
        } else if (document.getElementById("Username").value.length > 20) {
            document.getElementById("Username").style.backgroundColor = "rgba(255, 0, 0, 0.6)";
            swal('Username só pode conter 20 caracteres.');
            return false;
        } else if (document.getElementById("nomecompleto").valuelength > 100) {
            document.getElementById("nomecompleto").style.backgroundColor = "rgba(255, 0, 0, 0.6)";
            swal('Verifique seu nome.');
            return false;
        } else if (document.getElementById("cpf").value.length > 11) {
            document.getElementById("cpf").style.backgroundColor = "rgba(255, 0, 0, 0.6)";
            swal('Erro no CPF.');
            return false;
        } else if (document.getElementById("cep").value.length < 8) {
            document.getElementById("cep").style.backgroundColor = "rgba(255, 0, 0, 0.6)";
            swal('Erro no CEP.');
            return false;
        } else {
            //return true;	
            return true;
        }

    });

});