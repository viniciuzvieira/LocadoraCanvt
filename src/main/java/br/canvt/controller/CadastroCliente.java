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
@WebServlet(urlPatterns = {"/CadastroCliente"})
public class CadastroCliente extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher
                = request.getRequestDispatcher("/WEB-INF/jsp/CadastroCliente.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String nomeCompleto = request.getParameter("nomecompleto");     
        String cpf = request.getParameter("cpf");                       
        String DataNasc = request.getParameter("datanasc");             
        String setSexo = request.getParameter("sexo");                  
        String setNumeroCNH = request.getParameter("cnh");        
        String setEnd = request.getParameter("endereco");               
        String setCEP = request.getParameter("cep");                    
        String setUF = request.getParameter("UF");                      
        String setNumero = request.getParameter("numerocasa");          
        String setComplemento = request.getParameter("complemento");    
        String setBairro = request.getParameter("bairro");              
        String setTelefone = request.getParameter("tel");               
        String setEmail = request.getParameter("email");                
        String setCidade = request.getParameter("cidade");
        ClienteFisico cli = new ClienteFisico();
        cli.setBairro(setBairro);
        cli.setCEP(setCEP);
        cli.setEnd(setEnd);
        cli.setEmail(setEmail);
        cli.setDataNasc(DataNasc);
        cli.setSexo(setSexo);
        cli.setNomeCompleto(nomeCompleto);
        cli.setComplemento(setComplemento);
        cli.setUF(setUF);
        cli.setCPF(cpf);
        cli.setNumeroCNH(setNumeroCNH);
        cli.setNumero(setNumero);
        cli.setTelefone(setTelefone);
        cli.setCidade(setCidade);
        
        ClienteDao cliDao = new ClienteDao();
        try {
            cliDao.incluirComTransacao(cli);

        } catch (SQLException ex) {
            Logger.getLogger(CadastroCliente.class.getName()).log(Level.SEVERE, null, ex);
        }
        RequestDispatcher dispatcher
                = request.getRequestDispatcher("/WEB-INF/jsp/CadastroCliente.jsp");
        dispatcher.forward(request, response);
    }

}
