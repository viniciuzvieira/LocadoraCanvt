/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.canvt.controller;

import br.canvt.model.AutomovelDAO;
import br.canvt.model.CarrinhoDeCompras;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
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
@WebServlet(name = "logout", urlPatterns = {"/logout"})
public class logout extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        AutomovelDAO dao= new AutomovelDAO();
        HttpSession sessao1 = request.getSession(true);
        List<CarrinhoDeCompras> carrinho = (List) sessao1.getAttribute("carrinho");
        if (carrinho != null) {
            for (CarrinhoDeCompras item : carrinho) {
                dao.receberAuto(item.getAuto().getRenavam());

            }
        }
        HttpSession sessao = request.getSession(false);
        sessao.invalidate();
        sessao = request.getSession(true);
        sessao.setAttribute("msgLogout", "Voce saiu do sistema");
        response.sendRedirect(request.getContextPath() + "/login");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

}
