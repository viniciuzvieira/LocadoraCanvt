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

        Venda v = new Venda();
        HttpSession session = request.getSession();
        HttpSession session2 = request.getSession();
        VendaDAO dao = new VendaDAO();
        List<Venda> ve = dao.listarAbertas();
        List<CarrinhoDeCompras> Car = new ArrayList();

        for (Venda item : ve) {
            Car = item.getCar();

        }
        session.setAttribute("lista", ve);
        session2.setAttribute("carros", Car);
        
        RequestDispatcher dispatcher
                = request.getRequestDispatcher("/WEB-INF/jsp/SucessoBoleto.jsp");
        dispatcher.forward(request, response);
        
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

}
