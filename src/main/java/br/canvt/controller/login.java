/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.canvt.controller;

import br.canvt.model.ClienteDao;
import br.canvt.model.ClienteFisico;
import java.io.IOException;
import java.sql.SQLException;
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
@WebServlet(name = "login", urlPatterns = {"/login"})
public class login extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession sessao = request.getSession();
        ClienteFisico usuario = (ClienteFisico) sessao.getAttribute("UserLogado");
        if (usuario != null) {
            response.sendRedirect(request.getContextPath() + "/home");
            return;
        }
        String msgLogout = (String) sessao.getAttribute("msgLogout");
        sessao.removeAttribute("msgLogout");
        if (msgLogout != null) {
            request.setAttribute("msgLogout", msgLogout);
        }

        RequestDispatcher dispatcher
                = request.getRequestDispatcher("/WEB-INF/jsp/Login.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("User");
        String senha = request.getParameter("Senha");
        ClienteFisico c = new ClienteFisico();
        ClienteDao dao = new ClienteDao();

        try {
            c = dao.UserListar(username, senha);
        } catch (SQLException ex) {
            Logger.getLogger(login.class.getName()).log(Level.SEVERE, null, ex);
        }
        if (c != null) {
            // Sucesso - usuario autenticado
            HttpSession sessao = request.getSession();
            sessao.setAttribute("UserLogado", c);
            response.sendRedirect(request.getContextPath()
                    + "/home");
        } else {
            request.setAttribute("msgErro", "Erro no login");
            RequestDispatcher dispatcher
                    = request.getRequestDispatcher("/WEB-INF/jsp/Login.jsp");
            dispatcher.forward(request, response);
        }
    }

}
