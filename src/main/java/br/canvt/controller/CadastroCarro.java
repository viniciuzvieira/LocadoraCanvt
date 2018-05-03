package br.canvt.controller;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import br.canvt.model.Automovel;
import br.canvt.model.AutomovelDAO;
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

/**
 *
 * @author viniciuzvieira
 */
@WebServlet(urlPatterns = {"/CadastroCarro"})
public class CadastroCarro extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher
                = request.getRequestDispatcher("/WEB-INF/jsp/CadastroCarro.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Automovel auto = new Automovel();
        AutomovelDAO dao = new AutomovelDAO();
        String r = request.getParameter("renavam");
        String val = request.getParameter("val");
        auto.setMarca(request.getParameter("marca"));
        auto.setModelo(request.getParameter("model"));
        auto.setAno(request.getParameter("anoAuto"));
        auto.setPlaca(request.getParameter("placa"));
        auto.setCategoria(request.getParameter("categoria"));
        auto.setRenavam(request.getParameter("renavam"));
        auto.setNumeroChassi(request.getParameter("nchassi"));
        auto.setValorDeLocacao(Double.parseDouble(val));
        auto.setCor(request.getParameter("cor"));
        auto.setPortas(request.getParameter("portas"));
        auto.setCombustivel(request.getParameter("combustivel"));
        auto.setKilometragem(request.getParameter("KMs"));
        auto.setImagem(request.getParameter("file"));
        try {
            dao.incluirComTransacao(auto);
        } catch (SQLException ex) {
            Logger.getLogger(CadastroCarro.class.getName()).log(Level.SEVERE, null, ex);
        }

        RequestDispatcher dispatcher
                = request.getRequestDispatcher("/WEB-INF/jsp/CadastroCarro.jsp");
        dispatcher.forward(request, response);
    }

}
