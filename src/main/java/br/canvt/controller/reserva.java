package br.canvt.controller;

import br.canvt.model.Automovel;
import br.canvt.model.AutomovelDAO;
import java.io.IOException;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "reserva", urlPatterns = {"/reserva"})
public class reserva extends HttpServlet implements Serializable {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        AutomovelDAO dao = new AutomovelDAO();

        List<Automovel> automoveis = new ArrayList();

        automoveis = dao.listar();
        request.setAttribute("autos", automoveis);
        RequestDispatcher dispatcher
                = request.getRequestDispatcher("/WEB-INF/jsp/reserva.jsp");
        dispatcher.forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        HttpSession session2 = request.getSession();
        HttpSession session3 = request.getSession();
        long a = 0;
        AutomovelDAO dao = new AutomovelDAO();
        Automovel auto = new Automovel();
        String btn = request.getParameter("botao");

        if (btn.equals("alugar")) {
            String renavam = request.getParameter("renavam");
//            String autoR = request.getParameter("auto");
            Automovel auto1 = dao.procurar(renavam);
            session.setAttribute("auto", auto1);
            RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/EscolherData.jsp");
            dispatcher.forward(request, response);
//            response.sendRedirect(request.getContextPath() + "/EscolherData");
        } else {

            String renavam = request.getParameter("renavam");

            auto = dao.procurar(renavam);
            List<Automovel> auto2 = dao.listarUltimos();
            session.setAttribute("auto", auto);//
            request.setAttribute("ultimos", auto2);
            RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/detalheCarro.jsp");
            dispatcher.forward(request, response);
        }
    }

}
