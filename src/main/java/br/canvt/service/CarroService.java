/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.canvt.service;

import br.canvt.model.Automovel;
import java.util.List;

/**
 *
 * @author Vinicius
 */
public interface CarroService {
    public List listAllUser();
 
    public void addUser(Automovel automovel);

    public void updateUser(Automovel automovel);

    public void delete(Automovel automovel);

    public Automovel findUserById(Automovel automovel);
}
