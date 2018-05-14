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

                System.out.println(venda.getId());

                stmt.setString(2, item.getAuto().getRenavam());

                System.out.println(item.getAuto().getRenavam());

                stmt.setString(3, item.getDataRetirada());

                System.out.println(item.getDataRetirada());

                stmt.setString(4, item.getDataDeDevolucao());

                System.out.println(item.getDataDeDevolucao());

                stmt.setDouble(5, item.getValorParcial());

                System.out.println(item.getValorParcial());
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
//    public List<VendaFisica> Relatorio(Date dataProcuraincio, Date dataProcuraFim) throws SQLException {
//
//        String query = "SELECT * FROM Venda WHERE DATAENTREGA BETWEEN ? AND ? ";
//        String sql2 = "SELECT * FROM CLIENTEF WHERE CPF = ?";
//        String sql3 = "SELECT * FROM AUTO WHERE RENAVAM = ?";
//        String sql4 = "SELECT * FROM FILIAIS WHERE ID = ?";
//        List<VendaFisica> relatorio = null;
//
//        Connection con = null;
//        PreparedStatement stmt = null;
//        ResultSet resultV = null;
//        ResultSet resultC = null;
//        ResultSet resultP = null;
//        ResultSet resultF = null;
//        System.out.println("LINHA119");
//        try {
//            con = BDConexao.getConnection();
//            stmt = con.prepareStatement(query);
//            Timestamp t1 = new Timestamp(dataProcuraincio.getTime());
//            stmt.setTimestamp(1, t1);
//            Timestamp t2 = new Timestamp(dataProcuraFim.getTime());
//            stmt.setTimestamp(2, t2);
//
//            resultV = stmt.executeQuery();
//            System.out.println("LINHA129S");
//            while (resultV.next()) {
//                if (relatorio == null) {
//                    System.out.println("LINHA131");
//                    relatorio = new ArrayList();
//                }
//                ClienteFisico c = new ClienteFisico();
//                System.out.println("LINHA134");
//                VendaFisica venda = new VendaFisica();
//                venda.setId(resultV.getInt("ID"));
//
//                Date d = new Date(resultV.getTimestamp("DATAENTREGA").getTime());
//                Date E = new Date(resultV.getTimestamp("DATADEVOLUCAO").getTime());
//                venda.setDataDeDevolucao(d);
//                venda.setDatadeEntrega(E);
//                venda.setValorTotal(resultV.getDouble("VALORTOTAL"));
//                venda.setTarifa(resultV.getDouble("TARIFA"));
//                venda.setSeguro(resultV.getBoolean("SEGURO"));
//                venda.setServico(resultV.getString("SERVICO"));
//                String idC = (resultV.getString("CLIENTECPF"));
//                System.out.println("148" + idC);
//                stmt = con.prepareStatement(sql2);
//                stmt.setString(1, idC);
//                resultC = stmt.executeQuery();
//                while (resultC.next()) {
//                    c.setCPF(resultC.getString("CPF"));
//                    c.setNomeCompleto(resultC.getString("NOME"));
//                    c.setSexo(resultC.getString("SEXO"));
//                    c.setTelefone(resultC.getString("TELEFONE"));
//                    c.setEmail(resultC.getString("EMAIL"));
//                    c.setNumeroCNH(resultC.getString("NUMEROCNH"));
//                    c.setEnd(resultC.getString("ENDERECO"));
//                    c.setComplemento(resultC.getString("COMPLEMENTO"));
//                    c.setNumero(resultC.getString("NUMERO"));
//                    c.setBairro(resultC.getString("BAIRRO"));
//                    c.setCEP(resultC.getString("CEP"));
//                    c.setCidade(resultC.getString("CIDADE"));
//                    c.setDataNasc(resultC.getString("DATANASCIMENTO"));
//                    c.setUF(resultC.getString("ESTADO"));
//                }
//                venda.setCliente(c);
//                venda.setFinalizada(resultV.getBoolean("FINALIZADA"));
//
//                stmt = con.prepareStatement(sql3);
//                String renavam = resultV.getString("AUTORENAVAM");
//                stmt.setString(1, renavam);
//                resultP = stmt.executeQuery();
//
//                while (resultP.next()) {
//                    Automovel auto = new Automovel();
//                    auto.setMarca(resultP.getString("MARCA"));
//                    auto.setModelo(resultP.getString("MODELO"));
//                    auto.setAno(resultP.getString("ANO"));
//                    auto.setCategoria(resultP.getString("CATEGORIA"));
//                    auto.setPlaca(resultP.getString("PLACA"));
//                    auto.setRenavam(resultP.getString("RENAVAM"));
//                    auto.setKilometragem(resultP.getString("KILOMETRAGEM"));
//                    auto.setNumeroChassi(resultP.getString("NUMEROCHASSI"));
//                    auto.setCor(resultP.getString("COR"));
//                    auto.setPortas(resultP.getString("PORTAS"));
//                    auto.setCombustivel(resultP.getString("COMBUSTIVEL"));
//                    auto.setDescricao(resultP.getString("DESCRICAO"));
//                    auto.setValorDeLocacao(resultP.getDouble("VALORDELOCACAO"));
//                    System.out.println("AUTO LINHA 200" + auto.getRenavam());
//                    venda.setAuto(auto);
//                }
//
//                stmt = con.prepareStatement(sql4);
//                Integer idF = resultV.getInt("FILIAL");
//                stmt.setInt(1, idF);
//                resultF = stmt.executeQuery();
//
////                while(resultF.next()){
//////                    Filial fil = new Filial();
////                    fil.setId(resultF.getInt("ID"));
////                    fil.setNome(resultF.getString("NOME"));
////                    fil.setLocal(resultF.getString("LOCAL"));
////                    venda.setFilial(fil);
////                }
//                relatorio.add(venda);
//            }
//
//        } catch (SQLException e) {
//
//        } finally {
//            if (stmt != null && !stmt.isClosed()) {
//                stmt.close();
//            }
//            if (con != null && !con.isClosed()) {
//                con.close();
//            }
//        }
//
//        return relatorio;
//    }
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

            con = BDConexao.getConnection();
            stmt = con.prepareStatement(sql);

            stmt.setBoolean(1, false);
            resultV = stmt.executeQuery();

            while (resultV.next()) {
                ClienteFisico c = new ClienteFisico();
                System.out.println("LINHA134");
                VendaFisica venda = new VendaFisica();
                venda.setId(resultV.getInt("ID"));
                System.out.println("246 " + venda.getId());
                venda.setValorTotal(resultV.getDouble("VALORTOTAL"));
                venda.setDataVenda(resultV.getDate("DATAVENDA"));
                String idC = (resultV.getString("CLIENTECPF"));
                System.out.println("250 " + idC);
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
                List<CarrinhoDeCompras> car = new ArrayList();
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
                    System.out.println("287" + Renavam);
                    stmt = con.prepareStatement(sql4);
                    stmt.setString(1, Renavam);
                    resultF = stmt.executeQuery();
                    while (resultF.next()) {
                        System.out.println("292");
                        Automovel auto = new Automovel();
                        System.out.println("294");
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
                        System.out.println("307 " + auto.getRenavam());
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
//    public void finalizarVenda(Integer id) {
//        String query = "UPDATE VENDA SET FINALIZADA = ? WHERE ID = ?";
//
//        Connection con = null;
//        PreparedStatement stmt = null;
//
//        try {
//            con = BDConexao.getConnection();
//            stmt = con.prepareStatement(query);
//
//            stmt.setBoolean(1, true);
//            stmt.setInt(2, id);
//            stmt.execute();
//
//        } catch (SQLException e) {
//
//        }
//    }
//
//    public List<VendaFisica> listarAbertasCPF(String CPF) {
//        String sql = "SELECT * FROM VENDA WHERE FINALIZADA = ? AND CLIENTECPF LIKE ?";
//        String sql2 = "SELECT * FROM CLIENTEF WHERE CPF = ?";
//        String sql3 = "SELECT * FROM AUTO WHERE RENAVAM = ?";
//        String sql4 = "SELECT * FROM FILIAIS WHERE ID = ?";
//
//        Connection con = null;
//        PreparedStatement stmt = null;
//        List<VendaFisica> lista = new ArrayList<>();
//        ResultSet resultV = null;
//        ResultSet resultC = null;
//        ResultSet resultP = null;
//        ResultSet resultF = null;
//        try {
//
//            con = BDConexao.getConnection();
//            stmt = con.prepareStatement(sql);
//
//            stmt.setBoolean(1, false);
//            stmt.setString(2, "%" + CPF + "%");
//            resultV = stmt.executeQuery();
//
//            while (resultV.next()) {
//                ClienteFisico c = new ClienteFisico();
//                System.out.println("LINHA134");
//                VendaFisica venda = new VendaFisica();
//                venda.setId(resultV.getInt("ID"));
//
//                Date d = new Date(resultV.getTimestamp("DATAENTREGA").getTime());
//                Date E = new Date(resultV.getTimestamp("DATADEVOLUCAO").getTime());
//                venda.setDataDeDevolucao(d);
//                venda.setDatadeEntrega(E);
//                venda.setValorTotal(resultV.getDouble("VALORTOTAL"));
//                venda.setTarifa(resultV.getDouble("TARIFA"));
//                venda.setSeguro(resultV.getBoolean("SEGURO"));
//                venda.setServico(resultV.getString("SERVICO"));
//                String idC = (resultV.getString("CLIENTECPF"));
//                System.out.println("148" + idC);
//                stmt = con.prepareStatement(sql2);
//                stmt.setString(1, idC);
//                resultC = stmt.executeQuery();
//                while (resultC.next()) {
//                    c.setCPF(resultC.getString("CPF"));
//                    c.setNomeCompleto(resultC.getString("NOME"));
//                    c.setSexo(resultC.getString("SEXO"));
//                    c.setTelefone(resultC.getString("TELEFONE"));
//                    c.setEmail(resultC.getString("EMAIL"));
//                    c.setNumeroCNH(resultC.getString("NUMEROCNH"));
//                    c.setEnd(resultC.getString("ENDERECO"));
//                    c.setComplemento(resultC.getString("COMPLEMENTO"));
//                    c.setNumero(resultC.getString("NUMERO"));
//                    c.setBairro(resultC.getString("BAIRRO"));
//                    c.setCEP(resultC.getString("CEP"));
//                    c.setCidade(resultC.getString("CIDADE"));
//                    c.setDataNasc(resultC.getString("DATANASCIMENTO"));
//                    c.setUF(resultC.getString("ESTADO"));
//                }
//                venda.setCliente(c);
//                venda.setFinalizada(resultV.getBoolean("FINALIZADA"));
//
//                stmt = con.prepareStatement(sql3);
//                String renavam = resultV.getString("AUTORENAVAM");
//                stmt.setString(1, renavam);
//                resultP = stmt.executeQuery();
//
//                while (resultP.next()) {
//                    Automovel auto = new Automovel();
//                    auto.setMarca(resultP.getString("MARCA"));
//                    auto.setModelo(resultP.getString("MODELO"));
//                    auto.setAno(resultP.getString("ANO"));
//                    auto.setCategoria(resultP.getString("CATEGORIA"));
//                    auto.setPlaca(resultP.getString("PLACA"));
//                    auto.setRenavam(resultP.getString("RENAVAM"));
//                    auto.setKilometragem(resultP.getString("KILOMETRAGEM"));
//                    auto.setNumeroChassi(resultP.getString("NUMEROCHASSI"));
//                    auto.setCor(resultP.getString("COR"));
//                    auto.setPortas(resultP.getString("PORTAS"));
//                    auto.setCombustivel(resultP.getString("COMBUSTIVEL"));
//                    auto.setDescricao(resultP.getString("DESCRICAO"));
//                    auto.setValorDeLocacao(resultP.getDouble("VALORDELOCACAO"));
//                    System.out.println("AUTO LINHA 200" + auto.getRenavam());
//                    venda.setAuto(auto);
//                }
//
//                stmt = con.prepareStatement(sql4);
//                Integer idF = resultV.getInt("FILIAL");
//                stmt.setInt(1, idF);
//                resultF = stmt.executeQuery();
////                
////                while(resultF.next()){
////                    Filial fil = new Filial();
////                    fil.setId(resultF.getInt("ID"));
////                    fil.setNome(resultF.getString("NOME"));
////                    fil.setLocal(resultF.getString("LOCAL"));
////                    venda.setFilial(fil);
////                }
//
//                lista.add(venda);
//            }
//        } catch (SQLException e) {
//
//        }
//        return lista;
//    }
}
