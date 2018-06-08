package br.canvt.controller;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
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

/**
 *
 * @author viniciuzvieira
 */
@WebServlet(urlPatterns = {"/CriarLogin"})
public class CriarLogin extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher
                = request.getRequestDispatcher("/WEB-INF/jsp/CriarLogin.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String nomeCompleto = request.getParameter("nomecompleto");
        String CPF= request.getParameter("CPF");
        String username = request.getParameter("Username");
        String senha = request.getParameter("senha");
      
        String setEmail = request.getParameter("email");
        String tipoUser= request.getParameter("tipoUser");
        ClienteFisico cli = new ClienteFisico();
        cli.setBairro("Santo Amaro");
        cli.setCEP("04696000");
        cli.setEnd("Av. Eng. Eusébio Stevaux");
        cli.setEmail(setEmail);
        cli.setDataNasc("000000");
        cli.setSexo("NI");
        cli.setNomeCompleto(nomeCompleto);
        cli.setComplemento("Predio");
        cli.setUF("SP");
        cli.setCPF(CPF);
        cli.setNumeroCNH("NP");
        cli.setNumero("823");
        cli.setTelefone("5682-7300");
        cli.setCidade("São Paulo");
        cli.setUsuario(username);
        cli.setHashSenha(senha);
        cli.setTipoUser(tipoUser);
        ClienteDao cliDao = new ClienteDao();
          try {
            cliDao.incluirComTransacao(cli);

        } catch (SQLException ex) {
            Logger.getLogger(CadastroCliente.class.getName()).log(Level.SEVERE, null, ex);
        }
         request.setAttribute("Sucesso", "Sucesso");
        RequestDispatcher dispatcher
                = request.getRequestDispatcher("/WEB-INF/jsp/CriarLogin.jsp");
        dispatcher.forward(request, response);
    }

}
