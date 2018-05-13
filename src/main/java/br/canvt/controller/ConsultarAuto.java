
package br.canvt.controller;

import br.canvt.model.Automovel;
import br.canvt.model.AutomovelDAO;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "ConsultarAuto", urlPatterns = {"/ConsultarAuto"})
public class ConsultarAuto extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher
                = request.getRequestDispatcher("/WEB-INF/jsp/ConsultaCarro.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Automovel auto = new Automovel();
        AutomovelDAO dao = new AutomovelDAO();
        String search = request.getParameter("procurar");
        String btn = request.getParameter("tipodeuser");
        if (!"editar".equals(btn) && !"excluir".equals(btn)) {
            List<Automovel> automoveis = new ArrayList();
            if (search.isEmpty()) {
                automoveis = dao.listar();

                request.setAttribute("autos", automoveis);
                RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/ConsultaCarro.jsp");
                dispatcher.forward(request, response);
            } else {

                automoveis.add(dao.procurar(search));
                request.setAttribute("autos", automoveis);
                RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/ConsultaCarro.jsp");
                dispatcher.forward(request, response);
            }
        } else if (btn.equals("editar")) {
            HttpSession sessao = request.getSession(true);
            search = request.getParameter("auto");
            auto = dao.procurar(search);
            sessao.setAttribute("nenhum", auto);
            response.sendRedirect(request.getContextPath() + "/editarAuto");
        } else if (btn.equals("excluir")) {
            HttpSession sessao = request.getSession(true);

            String getrenavam = request.getParameter("auto");
//            ClienteFisico cliente = cli.procurar(search);
            dao.retirarAuto(getrenavam);
            request.setAttribute("excluir", "Excluido");
            RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/ConsultaCarro.jsp");
            dispatcher.forward(request, response);
        }

    }
}
