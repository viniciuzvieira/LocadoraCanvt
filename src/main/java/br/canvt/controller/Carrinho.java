package br.canvt.controller;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import br.canvt.model.Automovel;
import br.canvt.model.AutomovelDAO;
import br.canvt.model.CarrinhoDeCompras;
import br.canvt.model.ClienteFisico;
import br.canvt.model.Venda;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
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
@WebServlet(urlPatterns = {"/Carrinho"})
public class Carrinho extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        RequestDispatcher dispatcher
                = request.getRequestDispatcher("/WEB-INF/jsp/Carrinho.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession sessao = request.getSession();
        HttpSession sessao1 = request.getSession();
        AutomovelDAO dao = new AutomovelDAO();
        HttpSession sessaolog = request.getSession();
        String btn = request.getParameter("remove");
        ClienteFisico usuario = (ClienteFisico) sessaolog.getAttribute("UserLogado");

        if (usuario == null) {
            sessaolog.setAttribute("msgErro", "Voce precisa estar logado primeiro");
            response.sendRedirect(request.getContextPath() + "/login");
            return;
        }

        if ("true".equals(btn)) {
            SimpleDateFormat formato = new SimpleDateFormat("dd/MM/yyyy");
            String autoretirado = request.getParameter("retirado");
            String dataD = request.getParameter("dataD");
            System.out.println(dataD);
            String dataR = request.getParameter("dataR");
            Automovel auto = dao.procurar(autoretirado);
            
            Double total = (Double) sessao.getAttribute("Total");
            int index = 0;
            List<CarrinhoDeCompras> carrinho = (List) sessao.getAttribute("carrinho");

            if (carrinho == null) {
                carrinho = new ArrayList();

            } else {
                for (CarrinhoDeCompras item : carrinho) {
                    System.out.println(carrinho.size());
                    if (autoretirado.equals(item.getAuto().getRenavam())) {
                        Date Dretirada = null;
                        Date Dentrega = null;
                        try {
                            Dretirada = formato.parse(dataR);
                            Dentrega = formato.parse(dataD);
                            double dif = ((Dentrega.getTime() - Dretirada.getTime()) / 86400000 + 1);
                            System.out.println("88"+dif);
                            System.out.println(auto.getValorDeLocacao());
                            double valorParcial = dif * auto.getValorDeLocacao();
                            total = total - valorParcial;
                            System.out.println(total);
                        } catch (ParseException ex) {
                            Logger.getLogger(Carrinho.class.getName()).log(Level.SEVERE, null, ex);
                        }

                        carrinho.remove(item);
                        dao.receberAuto(autoretirado);
                        break;
                    }

                }

            }
            sessao1.setAttribute("Total", total);
            sessao.setAttribute("carrinho", carrinho);
            response.sendRedirect(request.getContextPath() + "/reserva");
            return;
        }

        double valorParcial = 0;
        String rena = request.getParameter("auto");
        String pagamento = request.getParameter("pagamento");
        Automovel auto = dao.procurar(rena);
        dao.retirarAuto(rena);
        List<CarrinhoDeCompras> carrinho = (List) sessao.getAttribute("carrinho");
        if ("CC".equals(pagamento)) {
            if (carrinho == null) {
                sessao.setAttribute("erro", "Lista vazia");
                response.sendRedirect(request.getContextPath() + "/Carrinho");
                return;
            }
            Double total = (Double) sessao.getAttribute("Total");
            carrinho = (List) sessao.getAttribute("carrinho");
            sessao1.setAttribute("Total", total);
            sessao.setAttribute("carrinho", carrinho);
            response.sendRedirect(request.getContextPath() + "/InserirCartao");

        } else if ("boleto".equals(pagamento)) {
            if (carrinho == null) {
                sessao.setAttribute("erro", "Lista vazia");
                response.sendRedirect(request.getContextPath() + "/Carrinho");
                return;
            }
            Double total = (Double) sessao.getAttribute("Total");
            sessao1.setAttribute("Total", total);
            carrinho = (List) sessao.getAttribute("carrinho");
            sessao.setAttribute("carrinho", carrinho);
            response.sendRedirect(request.getContextPath() + "/gerarBoleto");
        } else {
            if (carrinho == null) {
                carrinho = new ArrayList();

            }

            double dif = 0;
            Double total = (Double) sessao.getAttribute("Total");
            if (total == null) {
                total = 0.0;
            }
            SimpleDateFormat formato = new SimpleDateFormat("dd/MM/yyyy");
            String retirada = (String) request.getParameter("dataRetirada");
            String entrega = (String) request.getParameter("dataEntrega");
            try {
                Date Dretirada = formato.parse(retirada);
                Date Dentrega = formato.parse(entrega);
                dif = ((Dentrega.getTime() - Dretirada.getTime()) / 86400000 + 1);

                valorParcial = dif * auto.getValorDeLocacao();
                total = valorParcial + total;
            } catch (ParseException ex) {
                Logger.getLogger(Carrinho.class.getName()).log(Level.SEVERE, null, ex);
            }

            CarrinhoDeCompras c = new CarrinhoDeCompras(auto, retirada, valorParcial, entrega);
            carrinho.add(c);
            sessao1.setAttribute("Total", total);
            sessao.setAttribute("carrinho", carrinho);
            RequestDispatcher dispatcher
                    = request.getRequestDispatcher("/WEB-INF/jsp/Carrinho.jsp");
            dispatcher.forward(request, response);
        }
//        }
    }
}
