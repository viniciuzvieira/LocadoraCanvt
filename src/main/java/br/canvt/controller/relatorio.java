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
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javafx.beans.binding.Bindings;

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
@WebServlet(urlPatterns = {"/relatorio"})
public class relatorio extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        RequestDispatcher dispatcher
                = request.getRequestDispatcher("/WEB-INF/jsp/Relatorio.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession sessao = request.getSession();

        VendaDAO daoV = new VendaDAO();
        String dE = request.getParameter("de");
        String dAte = request.getParameter("ate");
        SimpleDateFormat formato = new SimpleDateFormat("dd/MM/yyyy");
        List<Venda> relatorio = (List) sessao.getAttribute("relatorio");
        if(relatorio==null){
            relatorio=new ArrayList();
        }
        Date Dretirada = null;
        Date Dentrega = null;
        try {
            Dretirada = formato.parse(dE);
            Dentrega = formato.parse(dAte);
        } catch (ParseException ex) {
            Logger.getLogger(Carrinho.class.getName()).log(Level.SEVERE, null, ex);
        }

        try {
            relatorio = daoV.Relatorio(Dretirada, Dentrega);
        } catch (SQLException ex) {
            Logger.getLogger(relatorio.class.getName()).log(Level.SEVERE, null, ex);
        }
        System.out.println(relatorio.size());
        sessao.setAttribute("relatorio", relatorio);
        RequestDispatcher dispatcher
                = request.getRequestDispatcher("/WEB-INF/jsp/Relatorio.jsp");
        dispatcher.forward(request, response);
    }

}
