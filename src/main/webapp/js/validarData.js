//function validarData() {
//    if (document.getElementById("dataRetirada").value > document.getElementById("dataEntrega").value) {
//        swal('Erro: Data de entrega tem que ser depois da data de retirada.');
//        return false;
//    }
//}

$("#form2").submit(function () {
    if (document.getElementById("dataEntrega").value < document.getElementById("dataRetirada").value) {
        swal('Erro: Data de entrega tem que ser depois da data de retirada.');
        return false;
    }
    else {
        return true;
    }
});