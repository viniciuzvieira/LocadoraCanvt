/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.canvt.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class BDConexao {

    public static String status = "Não conectou...";

    //Construtor
    public BDConexao() {

    }

    //Metodo de conexao
    public static java.sql.Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("org.gjt.mm.mysql.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://179.188.16.203/pi4canvt?autoReconnect=true", "pi4canvt", "pi4canvt");

            //Teste de conexao
            if (connection != null) {
                status = ("STATUS ----> Conectado com sucesso!");
            } else {
                status = ("STATUS ----> Não foi possivel realizar a conexão!");
            }

            return connection;

        } catch (ClassNotFoundException e) {

            //Driver nao encontrado
            System.out.println("O driver expecificado não foi encontrado.");
            return null;
        } catch (SQLException f) {

            //Nao conseguindo conectar ao banco
            System.out.println("Não foi possivel conectar ao Banco de Dados");
            return null;
        }
    }

    //Metodo que retorna o status da conexao
    public static String statusConection() {
        return status;
    }

    //Metodo que fecha a conexao
    public static boolean fecharConexao() {
        try {
            BDConexao.getConnection().close();
            return true;
        } catch (SQLException e) {
            return false;
        }
    }

    //metodo que reinicia sua conexao
    public static java.sql.Connection reiniciarConexao() {
        fecharConexao();
        return BDConexao.getConnection();
    }
}
