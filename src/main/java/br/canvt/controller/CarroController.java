package br.canvt.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import br.canvt.model.Automovel;

import br.canvt.service.CarroService;

@RestController
public class CarroController {
 
 @Autowired
 CarroService carroService;
 
 @RequestMapping(value="/carro/", method = RequestMethod.GET, headers="Accept=application/json")
 public ResponseEntity<List<Automovel>> listAllUser(){
  List<Automovel> list = carroService.listAllUser();
  
  if(list.size() == 0){
   return new ResponseEntity<List<Automovel>>(HttpStatus.NO_CONTENT);
  }
  
  return new ResponseEntity<List<Automovel>>(list, HttpStatus.OK);
 }
 
 @RequestMapping(value="/add/", method = RequestMethod.POST, headers="Accept=application/json")
 public ResponseEntity<Void> add(@RequestBody Automovel autmovel){
  carroService.addUser(autmovel);
  
  HttpHeaders headers = new HttpHeaders();
  return new ResponseEntity<Void>(headers, HttpStatus.CREATED);
 }
 
 @RequestMapping(value="/update/{id}", method = RequestMethod.PUT, headers="Accept=application/json")
 public ResponseEntity<Void> update(@PathVariable("id") int id, @RequestBody Automovel automovel){
  automovel.setId(id);
  carroService.updateUser(automovel);
  
  HttpHeaders headers = new HttpHeaders();
  return new ResponseEntity<Void>(headers, HttpStatus.OK);
 }
 
 @RequestMapping(value="/delete/{id}", method = RequestMethod.DELETE, headers="Accept=application/json")
 public ResponseEntity<Void> delete(@PathVariable("id") int id, @RequestBody Automovel automovel){
  automovel.setId(id);
  carroService.delete(automovel);
  
  HttpHeaders headers = new HttpHeaders();
  return new ResponseEntity<Void>(headers, HttpStatus.NO_CONTENT);
 }
}
