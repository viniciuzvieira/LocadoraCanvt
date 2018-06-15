package br.canvt.controller;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import br.canvt.model.CarrinhoDeCompras;
import br.canvt.model.Venda;
import br.canvt.model.VendaDAO;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author viniciuzvieira
 */
@WebServlet(urlPatterns = {"/SucessoBoleto"})
public class SucessoBoleto extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session1 = request.getSession();
        HttpSession session = request.getSession();
        List<CarrinhoDeCompras> carrinho = (List) session.getAttribute("carrinho");
        Double total = (Double) session1.getAttribute("Total");
         total = null;
        carrinho.clear();
        session1.setAttribute("Total", total);
        response.sendRedirect(request.getContextPath()
                + "/MeusPedidos");

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

}
