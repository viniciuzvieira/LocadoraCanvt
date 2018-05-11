$(document).ready(function () {

    $("#cadastro").click(function (e) {

        var Username, senha, nome, cpf, datanasc, cep, UF, cidade, bairro, endereco, numerocasa, complemento, sexo, cnh, tel;


        Username = validaCampos.Username.value;
        senha = validaCampos.senha.value;
        nome = validaCampos.nomecompleto.value;
        cpf = validaCampos.cpf.value;
        datanasc = validaCampos.datanasc.value;
        cep = validaCampos.cep.value;
        UF = validaCampos.UF.value;
        cidade = validaCampos.cidade.value;
        bairro = validaCampos.bairro.value;
        endereco = validaCampos.endereco.value;
        numerocasa = validaCampos.numerocasa.value;
        complemento = validaCampos.complemento.value;
        sexo = validaCampos.sexo.value;
        cnh = validaCampos.cnh.value;
        tel = validaCampos.complemento.tel;


        // bloqueando envio do form
        e.preventDefault();

        var erros = 0;

        // verifica se ha campos vazios
        $("#form1 input").each(function () {

            // conta erros
            $(this).val() == "" ? erros++ : "";

        });

        // verifica se ha erros
        if (erros > 0) {

            alert("Existe(em) campo(os) vazio(os) neste fomulário");

        } else {
            //return true;	
            $("#form1").submit()
        }

    });

}
);

