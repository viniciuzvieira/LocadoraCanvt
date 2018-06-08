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
@WebServlet(urlPatterns = {"/SucessoCartao"})
public class SucessoCartao extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();

        session.setAttribute("Sucesso", "Sua locação foi efetuada com Sucesso ");

        RequestDispatcher dispatcher
                = request.getRequestDispatcher("/WEB-INF/jsp/MeusPedidos.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

}
