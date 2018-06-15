/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.canvt.controller;

import br.canvt.model.Automovel;
import br.canvt.model.AutomovelDAO;
import br.canvt.model.CarrinhoDeCompras;
import br.canvt.model.Venda;
import br.canvt.model.VendaDAO;
import java.io.IOException;
import java.io.PrintWriter;
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
 * @author phantom
 */
@WebServlet(name = "finalizarVenda", urlPatterns = {"/finalizarVenda"})
public class finalizarVenda extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher
                = request.getRequestDispatcher("/WEB-INF/jsp/finalizarVenda.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        VendaDAO dao = new VendaDAO();
        AutomovelDAO autoDao = new AutomovelDAO();
        HttpSession session = request.getSession();
        HttpSession session2 = request.getSession();
        String Search = request.getParameter("procurar");
        String finalizar = request.getParameter("finalizar");
        List<Venda> venda = (List) request.getAttribute("lista");
        List<CarrinhoDeCompras> Car = (List) session2.getAttribute("carros");
        if (!"true".equals(finalizar)) {
            if (Search.isEmpty()) {
                if (venda == null) {
                    venda = new ArrayList();
                    Car = new ArrayList();
                }
                venda = dao.listarAbertas();

                for (Venda item : venda) {

                    Car = item.getCar();

                }

                session.setAttribute("lista", venda);
                session2.setAttribute("carros", Car);
                RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/finalizarVenda.jsp");
                dispatcher.forward(request, response);
            }
        } else if ("true".equals(finalizar)) {
            String idS =(request.getParameter("id"));
            Integer id=Integer.parseInt(idS);
            System.out.println(id+" 72");
                Venda venda1=dao.listarAbertasID(id);
                System.out.println("74 "+venda1.getId());
                List<CarrinhoDeCompras> novoCar=venda1.getCar();
                System.out.println("SIZE"+novoCar.size());
            for (CarrinhoDeCompras car1 : novoCar) {
                   autoDao.receberAuto(car1.getAuto().getRenavam());
              
            }
            dao.finalizarVenda(id);
            session.invalidate();
            response.sendRedirect(request.getContextPath()
                    + "/finalizarVenda");
        }

    }

}
