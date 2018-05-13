/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.canvt.model;

import br.canvt.model.ClienteFisico;
import java.util.Date;
import java.util.List;

public class Venda {

    private int id;
//    private Date datadeEntrega;
    private Double valorTotal;
//    private Double tarifa;
//    private String servico;
    private ClienteFisico cliente;
//    private Date dataDeDevolucao;
//    private Boolean seguro;
    private Boolean finalizada;
    private List<CarrinhoDeCompras> car;
//    private double total = 0;

    public Venda() {
        this.finalizada = false;
    }

    public Venda(List<CarrinhoDeCompras> car, ClienteFisico cliente, int id, String automovel, Double valorTotal) {
        this.cliente = cliente;
        this.id = id;
//        this.datadeEntrega = datadeEntrega;
        this.valorTotal = valorTotal;
//        this.dataDeDevolucao = dataDeDevolucao;
//        this.tarifa = tarifa;
//        this.servico = servico;
//        this.auto = auto;
//        this.seguro=seguro;
        this.finalizada = false;
        this.car = car;
    }

    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

//    public Date getDatadeEntrega() {
//        return datadeEntrega;
//    }
//
//    public void setDatadeEntrega(Date datadeEntrega) {
//        this.datadeEntrega = datadeEntrega;
//    }
    public Double getValorTotal() {
        return valorTotal;
    }

    public void setValorTotal(Double valorTotal) {
        this.valorTotal = valorTotal;
    }

//    public Double getTarifa() {
//        return tarifa;
//    }
//
//    public void setTarifa(Double tarifa) {
//        this.tarifa = tarifa;
//    }
//
//    public String getServico() {
//        return servico;
//    }
//
//    public void setServico(String servico) {
//        this.servico = servico;
//    }
    public ClienteFisico getCliente() {
        return cliente;
    }

    public void setCliente(ClienteFisico cliente) {
        this.cliente = cliente;
    }

//    public Date getDataDeDevolucao() {
//        return dataDeDevolucao;
//    }
//
//    public void setDataDeDevolucao(Date dataDeDevolucao) {
//        this.dataDeDevolucao = dataDeDevolucao;
//    }
//    public Boolean getSeguro() {
//        return seguro;
//    }
//
//    public void setSeguro(Boolean seguro) {
//        this.seguro = seguro;
//    }
//    public Automovel getAuto() {
//        return auto;
//    }
//
//    public void setAuto(Automovel auto) {
//        this.auto = auto;
//    }
    public Boolean getFinalizada() {
        return finalizada;
    }

    public void setFinalizada(Boolean finalizada) {
        this.finalizada = finalizada;
    }

    public List<CarrinhoDeCompras> getCar() {
        return car;
    }

    public void setCar(List<CarrinhoDeCompras> car) {
        this.car = car;
    }

}
