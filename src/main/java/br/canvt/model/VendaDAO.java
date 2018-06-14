/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.canvt.model;

//import br.com.candt.controller.ItensDeVenda;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class VendaDAO {

    public void incluirComTransacao(Venda venda) throws SQLException {
        String query = "INSERT INTO VENDA "
                + "(CLIENTECPF,VALORTOTAL,"
                + "FINALIZADA,DATAVENDA) "
                + "VALUES (?, ?, ?, ?)";
        String query2 = "INSERT INTO ITENSCARRINHO"
                + "(IDVENDA,RENAVAM,DATAENTREGA,DATADEVOLUCAO,VALORPARCIAL) "
                + "VALUES (? ,?, ?, ?, ?)";
        String query3 = "UPDATE AUTO "
                + "SET DISPONIVEL = ? "
                + "WHERE RENAVAM = ?";

        Connection con = null;
        PreparedStatement stmt = null;

        try {

            con = BDConexao.getConnection();
            stmt = con.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);

            stmt.setString(1, venda.getCliente().getCPF());
            stmt.setDouble(2, venda.getValorTotal());
            stmt.setBoolean(3, venda.getFinalizada());
            Date data = new Date();
            java.sql.Timestamp timestamp = new java.sql.Timestamp(data.getTime());
            stmt.setTimestamp(4, timestamp);

            stmt.execute();
            try (ResultSet generatedKeys = stmt.getGeneratedKeys()) {
                if (generatedKeys.next()) {
                    int idNovo = generatedKeys.getInt(1);
                    venda.setId(idNovo);
                }
            }

            for (CarrinhoDeCompras item : venda.getCar()) {
                stmt = con.prepareStatement(query2);

                stmt.setInt(1, venda.getId());

                stmt.setString(2, item.getAuto().getRenavam());

                stmt.setString(3, item.getDataRetirada());

                stmt.setString(4, item.getDataDeDevolucao());

                stmt.setDouble(5, item.getValorParcial());

                stmt.execute();
            }
            for (CarrinhoDeCompras item : venda.getCar()) {
                stmt = con.prepareStatement(query3);

                stmt.setBoolean(1, false);
                stmt.setString(2, item.getAuto().getRenavam());
                stmt.execute();

            }

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
//

    public List<Venda> Relatorio(Date dataProcuraincio, Date dataProcuraFim) throws SQLException {

        String query = "SELECT * from  VENDA where (DataVenda BETWEEN ? AND ?)";
        String sql2 = "SELECT * FROM CLIENTEF WHERE CPF = ?";
        String sql4 = "SELECT * FROM AUTO WHERE RENAVAM = ?";
        String sql3 = "SELECT * FROM ITENSCARRINHO WHERE IDVENDA = ?";
        List<Venda> relatorio = new ArrayList();

        Connection con = null;
        PreparedStatement stmt = null;
        ResultSet resultados = null;
        ResultSet resultV = null;
        ResultSet resultP = null;
        ResultSet resultF = null;

        System.out.println("LINHA119");
        List<CarrinhoDeCompras> car = new ArrayList();
        try {

            con = BDConexao.getConnection();
            stmt = con.prepareStatement(query);
            Timestamp t1 = new Timestamp(dataProcuraincio.getTime());
            stmt.setTimestamp(1, t1);
            Timestamp t2 = new Timestamp(dataProcuraFim.getTime());
            stmt.setTimestamp(2, t2);
            System.out.println(t2);
            resultV = stmt.executeQuery();
            while (resultV.next()) {
                System.out.println("122");
                ClienteFisico c = new ClienteFisico();

                Venda venda = new Venda();
                venda.setId(resultV.getInt("ID"));

                venda.setValorTotal(resultV.getDouble("VALORTOTAL"));
                venda.setDataVenda(resultV.getDate("DATAVENDA"));
                String idC = (resultV.getString("CLIENTECPF"));
                stmt = con.prepareStatement(sql2);
                stmt.setString(1, idC);
                resultados = stmt.executeQuery();
                while (resultados.next()) {
                    c.setCPF(resultados.getString("CPF"));
                    c.setNomeCompleto(resultados.getString("NOME"));
                    c.setSexo(resultados.getString("SEXO"));
                    c.setTelefone(resultados.getString("TELEFONE"));
                    c.setEmail(resultados.getString("EMAIL"));
                    c.setNumeroCNH(resultados.getString("NUMEROCNH"));
                    c.setEnd(resultados.getString("ENDERECO"));
                    c.setComplemento(resultados.getString("COMPLEMENTO"));
                    c.setNumero(resultados.getString("NUMERO"));
                    c.setBairro(resultados.getString("BAIRRO"));
                    c.setCEP(resultados.getString("CEP"));
                    c.setCidade(resultados.getString("CIDADE"));
                    c.setDataNasc(resultados.getString("DATANASCIMENTO"));
                    c.setUF(resultados.getString("ESTADO"));
                    c.setDisabled(resultados.getBoolean("DISABLED"));
                    c.setUsuario(resultados.getString("USERNAME"));
                    c.setHashSenha(resultados.getString("SENHA"));
                }
                venda.setCliente(c);
                venda.setFinalizada(resultV.getBoolean("FINALIZADA"));

                stmt = con.prepareStatement(sql3);
//                String renavam = resultV.getString("AUTORENAVAM");

                stmt.setInt(1, venda.getId());
                resultP = stmt.executeQuery();

                while (resultP.next()) {
                    CarrinhoDeCompras item = new CarrinhoDeCompras();
                    String dataEntrega = resultP.getString("DATAENTREGA");
                    String DataDeDevolucao = resultP.getString("DATADEVOLUCAO");
                    Double val = resultP.getDouble("VALORPARCIAL");
                    String Renavam = resultP.getString("RENAVAM");

                    stmt = con.prepareStatement(sql4);
                    stmt.setString(1, Renavam);
                    resultF = stmt.executeQuery();
                    while (resultF.next()) {

                        Automovel auto = new Automovel();

                        auto.setMarca(resultF.getString("MARCA"));
                        auto.setModelo(resultF.getString("MODELO"));
                        auto.setAno(resultF.getString("ANO"));
                        auto.setCategoria(resultF.getString("CATEGORIA"));
                        auto.setPlaca(resultF.getString("PLACA"));
                        auto.setRenavam(resultF.getString("RENAVAM"));
                        auto.setKilometragem(resultF.getString("KILOMETRAGEM"));
                        auto.setNumeroChassi(resultF.getString("NUMEROCHASSI"));
                        auto.setCor(resultF.getString("COR"));
                        auto.setPortas(resultF.getString("PORTAS"));
                        auto.setCombustivel(resultF.getString("COMBUSTIVEL"));
                        auto.setValorDeLocacao(resultF.getDouble("VALORDELOCACAO"));
                        auto.setImagem(resultF.getAsciiStream("IMAGEM"));
                        auto.setDisponivel(resultF.getBoolean("DISPONIVEL"));

                        item.setAuto(auto);
                        item.setDataDeDevolucao(DataDeDevolucao);
                        item.setDataRetirada(dataEntrega);
                        item.setValorParcial(val);

                    }
                    car.add(item);

                }
                System.out.println(venda.getId() + "at line 201");
                venda.setCar(car);
                relatorio.add(venda);
            }

        } catch (SQLException e) {

        } finally {
            if (stmt != null && !stmt.isClosed()) {
                stmt.close();
            }
            if (con != null && !con.isClosed()) {
                con.close();
            }
        }

        return relatorio;
    }
//

    public List<Venda> listarAbertas() {
        String sql = "SELECT * FROM VENDA WHERE FINALIZADA = ?";
        String sql2 = "SELECT * FROM CLIENTEF WHERE CPF = ?";
        String sql4 = "SELECT * FROM AUTO WHERE RENAVAM = ?";
        String sql3 = "SELECT * FROM ITENSCARRINHO WHERE IDVENDA = ?";
        Connection con = null;
        PreparedStatement stmt = null;
        List<Venda> lista = new ArrayList();
        ResultSet resultV = null;
        ResultSet resultados = null;
        ResultSet resultP = null;
        ResultSet resultF = null;

        try {
            List<CarrinhoDeCompras> car = new ArrayList();
            con = BDConexao.getConnection();
            stmt = con.prepareStatement(sql);

            stmt.setBoolean(1, false);
            resultV = stmt.executeQuery();

            while (resultV.next()) {
                ClienteFisico c = new ClienteFisico();

                Venda venda = new Venda();
                venda.setId(resultV.getInt("ID"));

                venda.setValorTotal(resultV.getDouble("VALORTOTAL"));
                venda.setDataVenda(resultV.getDate("DATAVENDA"));
                String idC = (resultV.getString("CLIENTECPF"));
                stmt = con.prepareStatement(sql2);
                stmt.setString(1, idC);
                resultados = stmt.executeQuery();
                while (resultados.next()) {
                    c.setCPF(resultados.getString("CPF"));
                    c.setNomeCompleto(resultados.getString("NOME"));
                    c.setSexo(resultados.getString("SEXO"));
                    c.setTelefone(resultados.getString("TELEFONE"));
                    c.setEmail(resultados.getString("EMAIL"));
                    c.setNumeroCNH(resultados.getString("NUMEROCNH"));
                    c.setEnd(resultados.getString("ENDERECO"));
                    c.setComplemento(resultados.getString("COMPLEMENTO"));
                    c.setNumero(resultados.getString("NUMERO"));
                    c.setBairro(resultados.getString("BAIRRO"));
                    c.setCEP(resultados.getString("CEP"));
                    c.setCidade(resultados.getString("CIDADE"));
                    c.setDataNasc(resultados.getString("DATANASCIMENTO"));
                    c.setUF(resultados.getString("ESTADO"));
                    c.setDisabled(resultados.getBoolean("DISABLED"));
                    c.setUsuario(resultados.getString("USERNAME"));
                    c.setHashSenha(resultados.getString("SENHA"));
                }
                venda.setCliente(c);
                venda.setFinalizada(resultV.getBoolean("FINALIZADA"));

                stmt = con.prepareStatement(sql3);
//                String renavam = resultV.getString("AUTORENAVAM");

                stmt.setInt(1, venda.getId());
                resultP = stmt.executeQuery();

                while (resultP.next()) {
                    CarrinhoDeCompras item = new CarrinhoDeCompras();
                    String dataEntrega = resultP.getString("DATAENTREGA");
                    String DataDeDevolucao = resultP.getString("DATADEVOLUCAO");
                    Double val = resultP.getDouble("VALORPARCIAL");
                    String Renavam = resultP.getString("RENAVAM");
                    System.out.println(Renavam + "291");
                    stmt = con.prepareStatement(sql4);
                    stmt.setString(1, Renavam);
                    resultF = stmt.executeQuery();
                    while (resultF.next()) {

                        Automovel auto = new Automovel();

                        auto.setMarca(resultF.getString("MARCA"));
                        auto.setModelo(resultF.getString("MODELO"));
                        auto.setAno(resultF.getString("ANO"));
                        auto.setCategoria(resultF.getString("CATEGORIA"));
                        auto.setPlaca(resultF.getString("PLACA"));
                        auto.setRenavam(resultF.getString("RENAVAM"));
                        auto.setKilometragem(resultF.getString("KILOMETRAGEM"));
                        auto.setNumeroChassi(resultF.getString("NUMEROCHASSI"));
                        auto.setCor(resultF.getString("COR"));
                        auto.setPortas(resultF.getString("PORTAS"));
                        auto.setCombustivel(resultF.getString("COMBUSTIVEL"));
                        auto.setValorDeLocacao(resultF.getDouble("VALORDELOCACAO"));
                        auto.setImagem(resultF.getAsciiStream("IMAGEM"));
                        auto.setDisponivel(resultF.getBoolean("DISPONIVEL"));

                        item.setAuto(auto);
                        item.setDataDeDevolucao(DataDeDevolucao);
                        item.setDataRetirada(dataEntrega);
                        item.setValorParcial(val);

                    }
                    car.add(item);

                }

                venda.setCar(car);
                lista.add(venda);
            }

        } catch (SQLException e) {

        }
        return lista;
    }
//

    public void finalizarVenda(Integer id) {
        String query = "UPDATE VENDA SET FINALIZADA = ? WHERE ID = ?";

        Connection con = null;
        PreparedStatement stmt = null;

        try {
            con = BDConexao.getConnection();
            stmt = con.prepareStatement(query);

            stmt.setBoolean(1, true);
            stmt.setInt(2, id);
            stmt.execute();

        } catch (SQLException e) {

        }
    }
//

    public List<Venda> listarAbertasCPF(String CPF) {
        String sql = "SELECT * FROM VENDA WHERE CLIENTECPF = ?";
        String sql2 = "SELECT * FROM CLIENTEF WHERE CPF = ?";
        String sql4 = "SELECT * FROM AUTO WHERE RENAVAM = ?";
        String sql3 = "SELECT * FROM ITENSCARRINHO WHERE IDVENDA = ?";
        Connection con = null;
        PreparedStatement stmt = null;
        List<Venda> lista = new ArrayList();
        ResultSet resultV = null;
        ResultSet resultados = null;
        ResultSet resultP = null;
        List<CarrinhoDeCompras> car = new ArrayList();
        ResultSet resultF = null;
        try {

            con = BDConexao.getConnection();
            stmt = con.prepareStatement(sql);
            stmt.setString(1, CPF);
            resultV = stmt.executeQuery();

            while (resultV.next()) {
                System.out.println("372"
                        + "");
                ClienteFisico c = new ClienteFisico();

                Venda venda = new Venda();
                venda.setId(resultV.getInt("ID"));
                venda.setValorTotal(resultV.getDouble("VALORTOTAL"));
                venda.setDataVenda(resultV.getDate("DATAVENDA"));
                String idC = (resultV.getString("CLIENTECPF"));

                stmt = con.prepareStatement(sql2);
                stmt.setString(1, idC);
                resultados = stmt.executeQuery();
                while (resultados.next()) {
                    c.setCPF(resultados.getString("CPF"));
                    c.setNomeCompleto(resultados.getString("NOME"));
                    c.setSexo(resultados.getString("SEXO"));
                    System.out.println("390");
                    c.setTelefone(resultados.getString("TELEFONE"));
                    c.setEmail(resultados.getString("EMAIL"));
                    c.setNumeroCNH(resultados.getString("NUMEROCNH"));
                    c.setEnd(resultados.getString("ENDERECO"));
                    c.setComplemento(resultados.getString("COMPLEMENTO"));
                    c.setNumero(resultados.getString("NUMERO"));
                    c.setBairro(resultados.getString("BAIRRO"));
                    c.setCEP(resultados.getString("CEP"));
                    c.setCidade(resultados.getString("CIDADE"));
                    c.setDataNasc(resultados.getString("DATANASCIMENTO"));
                    c.setUF(resultados.getString("ESTADO"));
                    c.setDisabled(resultados.getBoolean("DISABLED"));
                    c.setUsuario(resultados.getString("USERNAME"));
                    c.setHashSenha(resultados.getString("SENHA"));
                }
                venda.setCliente(c);
                venda.setFinalizada(resultV.getBoolean("FINALIZADA"));
                System.out.println(venda.getId());
                stmt = con.prepareStatement(sql3);
//                String renavam = resultV.getString("AUTORENAVAM");
                stmt.setInt(1, venda.getId());

                resultP = stmt.executeQuery();
                System.out.println("414");
                while (resultP.next()) {
                    System.out.println("416");
                    CarrinhoDeCompras item = new CarrinhoDeCompras();
                    String dataEntrega = resultP.getString("DATAENTREGA");
                    String DataDeDevolucao = resultP.getString("DATADEVOLUCAO");
                    Double val = resultP.getDouble("VALORPARCIAL");
                    String Renavam = resultP.getString("RENAVAM");

                    stmt = con.prepareStatement(sql4);
                    stmt.setString(1, Renavam);
                    resultF = stmt.executeQuery();
                    while (resultF.next()) {

                        Automovel auto = new Automovel();

                        auto.setMarca(resultF.getString("MARCA"));
                        auto.setModelo(resultF.getString("MODELO"));
                        auto.setAno(resultF.getString("ANO"));
                        auto.setCategoria(resultF.getString("CATEGORIA"));
                        auto.setPlaca(resultF.getString("PLACA"));
                        auto.setRenavam(resultF.getString("RENAVAM"));
                        auto.setKilometragem(resultF.getString("KILOMETRAGEM"));
                        auto.setNumeroChassi(resultF.getString("NUMEROCHASSI"));
                        auto.setCor(resultF.getString("COR"));
                        auto.setPortas(resultF.getString("PORTAS"));
                        auto.setCombustivel(resultF.getString("COMBUSTIVEL"));
                        auto.setValorDeLocacao(resultF.getDouble("VALORDELOCACAO"));
                        auto.setImagem(resultF.getAsciiStream("IMAGEM"));
                        auto.setDisponivel(resultF.getBoolean("DISPONIVEL"));
                        System.out.println("444");
                        item.setAuto(auto);
                        item.setDataDeDevolucao(DataDeDevolucao);
                        item.setDataRetirada(dataEntrega);
                        item.setValorParcial(val);

                    }
                    car.add(item);

                }
                System.out.println(venda.getId());
                venda.setCar(car);
                lista.add(venda);
            }
        } catch (SQLException e) {

        }
        return lista;
    }
}
