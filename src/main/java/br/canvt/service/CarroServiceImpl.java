/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.canvt.service;

/**
 *
 * @author Vinicius
 */
import br.canvt.model.Automovel;
import br.canvt.model.CarroDAO;
import java.util.List;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.stereotype.Repository;

@Repository
public class CarroServiceImpl implements CarroDAO{
 
NamedParameterJdbcTemplate namedParameterJdbcTemplate;
 
 @Autowired
 public void setNamedParameterJdbcTemplate(NamedParameterJdbcTemplate namedParameterJdbcTemplate) {
  this.namedParameterJdbcTemplate = namedParameterJdbcTemplate;
 }

 public List listAllUser() {
  List list = new ArrayList();
  
  String sql = "SELECT id, firstname, lastname, address FROM users";
  
  list = namedParameterJdbcTemplate.query(sql, getSqlParameterByModel(null), new UserMapper());
  
  return list;
 }
 
 private SqlParameterSource getSqlParameterByModel(Automovel automovel){
  MapSqlParameterSource parameterSource = new MapSqlParameterSource();
  if(automovel != null){
   parameterSource.addValue("id", automovel.getId());
   parameterSource.addValue("firstname", automovel.getFirstname());
   parameterSource.addValue("lastname", automovel.getLastname());
   parameterSource.addValue("address", automovel.getAddress());
  }
  return parameterSource;
 }
 
 private static final class UserMapper implements RowMapper{

  public Automovel mapRow(ResultSet rs, int rowNum) throws SQLException {
   Automovel automovel = new Automovel();
   automovel.setId(rs.getInt("id"));
   automovel.setFirstname(rs.getString("firstname"));
   automovel.setLastname(rs.getString("lastname"));
   automovel.setAddress(rs.getString("address"));
   
   return automovel;
  }
  
 }

 public void addUser(Automovel automovel) {
  String sql = "INSERT INTO users(firstname, lastname, address) VALUES(:firstname, :lastname, :address)";
  
  namedParameterJdbcTemplate.update(sql, getSqlParameterByModel(automovel));
 }

 public void updateUser(Automovel automovel) {
  String sql = "UPDATE users SET firstname=:firstname, lastname=:lastname, address=:address WHERE id =:id";
  
  namedParameterJdbcTemplate.update(sql, getSqlParameterByModel(automovel));
 }

 public void delete(Automovel automovel) {
  String sql = "DELETE FROM users WHERE id=:id";
  
  namedParameterJdbcTemplate.update(sql, getSqlParameterByModel(automovel));
 }

 public Automovel findUserById(Automovel automovel) {
  String sql = "SELECT * FROM users WHERE id =:id";
  
  return namedParameterJdbcTemplate.queryForObject(sql, getSqlParameterByModel(automovel), new UserMapper());
 }

}