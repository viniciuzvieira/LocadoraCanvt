package br.canvt.controller;

import br.canvt.model.Automovel;
import br.canvt.model.AutomovelDAO;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet(urlPatterns = {"/CadastroCarro"})
@MultipartConfig(maxFileSize = 16177215) 

public class CadastroCarro extends HttpServlet {

    private String extractFileName(Part part){
        String contentDisp = part.getHeader("content-disposition");
        String[] items = contentDisp.split(";");
        for (String s : items) {
            if (s.trim().startsWith("filename")){
                return s.substring(s.indexOf("=") + 2, s.length() - 1);
            }
        }
        return "";
    }



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
        PrintWriter out = response.getWriter();
        
        Part part = request.getPart("file");
        String fileName = extractFileName(part);
        String savePath = "C:\\Users\\Teruh\\Documents\\NetBeansProjects\\LocadoraCanvt\\src\\main\\webapp\\images\\Cars\\" + File.separator + fileName ;
        File fileSaveDir = new File(savePath);
        
        part.write(savePath + File.separator);
        
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
        auto.setImagem(savePath);
        
        
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
