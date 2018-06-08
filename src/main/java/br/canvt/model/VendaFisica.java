/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.canvt.model;

//import br.com.candt.controller.ItensDeVenda;
import java.util.Date;
import java.util.List;

public class VendaFisica extends Venda{

    private ClienteFisico cliente;

    
    public VendaFisica() {
        super();
    }

//    public VendaFisica(Boolean seguro,String tipocliente,Automovel auto, int id, ClienteFisico cliente, String automovel, String servico, Date datadeEntrega, Double tarifa, Double valorTotal, Date dataDeDevolucao) {
//        super(List<CarrinhoDeCompras> car,String tipocliente, int id, String automovel,Double valorTotal);
//        this.cliente = cliente;
//    }

    public ClienteFisico getCliente() {
        return cliente;
    }

    public void setCliente(ClienteFisico cliente) {
        this.cliente = cliente;
    }

//    public String getRenavam() {
//        return renavam;
//    }
//
//    public void setRenavam(String automovel) {
//        this.renavam = automovel;
//    }

}
