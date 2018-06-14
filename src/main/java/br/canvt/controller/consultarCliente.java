/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.canvt.controller;

import br.canvt.model.Cliente;
import br.canvt.model.ClienteDao;
import br.canvt.model.ClienteFisico;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "consultarCliente", urlPatterns = {"/consultarCliente"})
public class consultarCliente extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher
                = request.getRequestDispatcher("/WEB-INF/jsp/ConsultaCliente.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ClienteDao cli = new ClienteDao();
        String search = request.getParameter("procurar");
        String btn = request.getParameter("tipodeuser");
        if (!"editar".equals(btn) && !"excluir".equals(btn)) {
            List<ClienteFisico> clientes = new ArrayList();
            if (search.isEmpty()) {

                clientes = cli.listar();
                request.setAttribute("model", clientes);
                RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/ConsultaCliente.jsp");
                dispatcher.forward(request, response);
            } else {

                clientes = cli.procurarEspecial(search);
                request.setAttribute("model", clientes);
                RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/ConsultaCliente.jsp");
                dispatcher.forward(request, response);
            }
        } else if (btn.equals("editar")) {

            HttpSession nova = request.getSession(true);
            search = request.getParameter("repeat");//repeat= cpf do cliente para busca
            Cliente cliente = cli.procurar(search);//retorna cliente
            nova.setAttribute("usuario", cliente);//passa a sessão    
            RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/AtualizaCliente.jsp");
            dispatcher.forward(request, response);

        } else if (btn.equals("excluir")) {
            HttpSession sessao = request.getSession(true);
            String getCPF = request.getParameter("repeat");
            cli.excluir(getCPF);
            request.setAttribute("excluir", "Excluido");
            RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/ConsultaCliente.jsp");
            dispatcher.forward(request, response);
        }

    }
}
