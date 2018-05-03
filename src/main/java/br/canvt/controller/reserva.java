/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
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

/**
 *
 * @author phantom
 */
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
        HttpSession session = request.getSession(true);
        AutomovelDAO dao = new AutomovelDAO();
        String renavam = request.getParameter("renavam");
        Automovel auto = new Automovel();
        auto=dao.procurar(renavam);
        session.setAttribute("auto", auto);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/detalheCarro.jsp");
        dispatcher.forward(request, response);
    }

}
