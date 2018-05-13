package br.canvt.controller;

import br.canvt.model.Venda;
import br.canvt.model.VendaDAO;
import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(urlPatterns = {"/SucessoCartao"})
public class SucessoCartao extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Venda v = new Venda();
        HttpSession session = request.getSession();
        VendaDAO dao = new VendaDAO();
        List<Venda> ve = dao.listarAbertas();
        session.setAttribute("lista", ve);
        RequestDispatcher dispatcher
                = request.getRequestDispatcher("/WEB-INF/jsp/SucessoCartao.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

}
