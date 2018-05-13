/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.canvt.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

public class LoginDAO extends BDConexao {

    public void incluirComTransacao(UserSistem log) throws SQLException {
        String query = "INSERT INTO NOVOUSER "
                + "(USERNAME,EMAIL,SENHA) "
                + "VALUES (?, ?, ?)";
        Connection con = null;
        PreparedStatement stmt = null;
        try {
            con = BDConexao.getConnection();

            stmt = con.prepareStatement(query);
            stmt.setString(1, log.getUsuario());
            stmt.setString(2, log.getEmail());
            stmt.setString(3, log.getHashSenha());

            stmt.execute();
        } catch (SQLException e) {

        } finally {
            if (stmt != null && !stmt.isClosed()) {
                stmt.close();
            }
            if (con != null && !con.isClosed()) {
                con.close();
            }
        }
    }

    public UserSistem procurar(String username, String senha) {
        String query = "SELECT * FROM NOVOUSER WHERE (USERNAME=?) AND"
                + "(SENHA=?)";

        UserSistem log = null;
        try (Connection conn = getConnection();
                PreparedStatement stmt = conn.prepareStatement(query)) {

            stmt.setString(1, username);
            stmt.setString(2, senha);
            try (ResultSet resultados = stmt.executeQuery()) {

                if (resultados.next()) {
                    log = new UserSistem();
                    log.setUsuario(resultados.getString("USERNAME"));
                    log.setEmail(resultados.getString("EMAIL"));
                    log.setHashSenha(resultados.getString("SENHA"));

                }
            }
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }
        return log;
    }

    public void excluir(String user) {
        String sql = "DELETE FROM LOGIN WHERE (USERNAME=?)";
        Connection connection = null;

        try (Connection conn = getConnection();
                PreparedStatement stmt = conn.prepareStatement(sql)) {;
            stmt.setString(1, user);
            stmt.execute();
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }
    }

    public void Atualizar(UserSistem log) {
        String sql = "UPDATE produto SET USERNAME=?, SENHA=? ,EMAIL=?"
                + "WHERE (USUARIO=?)";

        try (Connection conn = getConnection();
                PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, log.getUsuario());
            stmt.setString(2, log.getHashSenha());
            stmt.setString(3, log.getEmail());

            stmt.execute();
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());

        }
    }
}
