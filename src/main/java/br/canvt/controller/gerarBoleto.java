/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.canvt.controller;

import br.canvt.model.CarrinhoDeCompras;
import br.canvt.model.ClienteDao;
import br.canvt.model.ClienteFisico;
import br.canvt.model.Venda;
import br.canvt.model.VendaDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
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
@WebServlet(name = "gerarBoleto", urlPatterns = {"/gerarBoleto"})
public class gerarBoleto extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
                RequestDispatcher dispatcher
                = request.getRequestDispatcher("/WEB-INF/jsp/gerarBoleto.jsp");
        dispatcher.forward(request, response);
      
    }

 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        VendaDAO daoV= new VendaDAO();
        Venda v = new Venda();
        ClienteDao dao = new ClienteDao();
        List<CarrinhoDeCompras> carrinho = (List) session.getAttribute("carrinho");
        HttpSession session1 = request.getSession();

        ClienteFisico cli = dao.procurar("49158745588");
        v.setCar(carrinho);
        v.setCliente(cli);
        v.setValorTotal(12325.1);
        v.setFinalizada(false);
        try {
            daoV.incluirComTransacao(v);
        } catch (SQLException ex) {
            Logger.getLogger(InserirCartao.class.getName()).log(Level.SEVERE, null, ex);
        }
        response.sendRedirect(request.getContextPath()
              + "/SucessoCartao");
    }
    }

   
}
