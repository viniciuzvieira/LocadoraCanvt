/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.canvt.controller;

import br.canvt.model.LoginDAO;
import br.canvt.model.UserSistem;
import java.io.IOException;
import java.io.PrintWriter;
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
@WebServlet(name = "novoLogin", urlPatterns = {"/registrar"})
public class novoLogin extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher
                = request.getRequestDispatcher("/WEB-INF/jsp/Registrar.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String login = request.getParameter("User");
        String senha = request.getParameter("Senha");
        String email = request.getParameter("Email");

        if (login.isEmpty() || senha.isEmpty() || email.isEmpty()) {
            request.setAttribute("msgErro", "Erro no login");
            RequestDispatcher dispatcher
                    = request.getRequestDispatcher("/WEB-INF/jsp/Registrar.jsp");
            dispatcher.forward(request, response);
        }
        UserSistem user = new UserSistem();
        user.setUsuario(login);
        user.setEmail(email);
        user.setHashSenha(senha);

        LoginDAO dao = new LoginDAO();
        HttpSession sessao = request.getSession(true);

        response.sendRedirect(request.getContextPath() + "/registrar");

        try {
            dao.incluirComTransacao(user);
        } catch (SQLException ex) {
            Logger.getLogger(novoLogin.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
