/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.canvt.model;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

/**
 *
 * @author phantom
 */
public class CarrinhoDeCompras implements Serializable {

    private Automovel auto;
    private String dataRetirada;
    private Double valorParcial;
    private String dataDeDevolucao;

    public CarrinhoDeCompras() {

    }

    public CarrinhoDeCompras(Automovel auto, String dataRetirada,
            Double valorParcial, String dataDeDevolucao) {
        this.auto = auto;
        this.dataDeDevolucao = dataDeDevolucao;
        this.valorParcial = valorParcial;
        this.dataRetirada = dataRetirada;

    }

    public Automovel getAuto() {
        return auto;
    }

    public void setAuto(Automovel auto) {
        this.auto = auto;
    }

    public String getDataRetirada() {
        return dataRetirada;
    }

    public void setDataRetirada(String dataRetirada) {
        this.dataRetirada = dataRetirada;
    }

    public Double getValorParcial() {
        return valorParcial;
    }

    public void setValorParcial(Double valorParcial) {
        this.valorParcial = valorParcial;
    }

    public String getDataDeDevolucao() {
        return dataDeDevolucao;
    }

    public void setDataDeDevolucao(String dataDeDevolucao) {
        this.dataDeDevolucao = dataDeDevolucao;
    }

}
