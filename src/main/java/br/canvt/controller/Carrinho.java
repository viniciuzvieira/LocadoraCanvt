package br.canvt.controller;

import br.canvt.model.Automovel;
import br.canvt.model.AutomovelDAO;
import br.canvt.model.CarrinhoDeCompras;
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
       
        AutomovelDAO dao = new AutomovelDAO();
        HttpSession sessao = request.getSession();
        HttpSession sessao1 = request.getSession();
        double valorParcial = 0;
        String rena = request.getParameter("auto");
        String pagamento = request.getParameter("pagamento");
        Automovel auto = dao.procurar(rena);
        List<CarrinhoDeCompras> carrinho = (List) sessao.getAttribute("carrinho");
        if ("CC".equals(pagamento)) {
            carrinho = (List) sessao.getAttribute("carrinho");
            sessao.setAttribute("carrinho", carrinho);
            response.sendRedirect(request.getContextPath() + "/InserirCartao");
            
        } else {
            if (carrinho == null) {
                carrinho = new ArrayList();

            }

            double dif = 0;
            SimpleDateFormat formato = new SimpleDateFormat("dd/MM/yyyy");
            String retirada = (String) request.getParameter("dataRetirada");
            String entrega = (String) request.getParameter("dataEntrega");
            try {
                Date Dretirada = formato.parse(retirada);
                Date Dentrega = formato.parse(entrega);
                dif = ((Dentrega.getTime() - Dretirada.getTime()) / 86400000 + 1);
//                System.out.println(auto.getValorDeLocacao());
//                System.out.println(dif);
                valorParcial = dif * auto.getValorDeLocacao();
            } catch (ParseException ex) {
                Logger.getLogger(Carrinho.class.getName()).log(Level.SEVERE, null, ex);
            }
         

            CarrinhoDeCompras c = new CarrinhoDeCompras(auto, retirada, valorParcial, entrega);
            carrinho.add(c);
//            sessao1.setAttribute("total", total);
            sessao.setAttribute("carrinho", carrinho);
            RequestDispatcher dispatcher
                    = request.getRequestDispatcher("/WEB-INF/jsp/Carrinho.jsp");
            dispatcher.forward(request, response);
        }
//        }
    }
}
