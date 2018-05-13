package br.canvt.controller;

import br.canvt.model.LoginDAO;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "login", urlPatterns = {"/login"})
public class login extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher
                = request.getRequestDispatcher("/WEB-INF/jsp/Login.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("User");
        String senha = request.getParameter("Senha");

        LoginDAO dao = new LoginDAO();
//        UserSistem usuario = dao.procurar(username, senha);
        if (username != null) {
            // Sucesso - usuario autenticado
            HttpSession sessao = request.getSession();
//            sessao.setAttribute("usuario", usuario);
            response.sendRedirect(request.getContextPath()
                    + "/home");
        }
    }

}
