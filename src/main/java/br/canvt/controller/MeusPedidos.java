package br.canvt.controller;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import br.canvt.model.CarrinhoDeCompras;
import br.canvt.model.ClienteFisico;
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
 * @author adriano.rlourenco
 */
@WebServlet(urlPatterns = {"/MeusPedidos"})
public class MeusPedidos extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession sessionlog = request.getSession();
        HttpSession session = request.getSession();
        HttpSession session2 = request.getSession();
        VendaDAO daoV = new VendaDAO();
        Venda v = new Venda();
        ClienteFisico usuario = (ClienteFisico) sessionlog.getAttribute("UserLogado");
        System.out.println(usuario.getCPF());
        List<Venda> ve = daoV.listarAbertasCPF(usuario.getCPF());
        
        List<CarrinhoDeCompras> Car = new ArrayList();
        System.out.println(ve.isEmpty());
        for (Venda item : ve) {
            Car = item.getCar();

        }
        session2.setAttribute("carros", Car);
        session.setAttribute("lista", ve);
        RequestDispatcher dispatcher
                = request.getRequestDispatcher("/WEB-INF/jsp/MeusPedidos.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

}
