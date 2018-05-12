package br.canvt.model;

import java.io.Serializable;
import java.util.List;
import org.mindrot.jbcrypt.BCrypt;

public class UserSistem implements Serializable{

    private String email;
    private String usuario;
    private String hashSenha;
    private ClienteFisico fisico;

    public UserSistem() {

    }

    public UserSistem(ClienteFisico fisico,String email, String hashSenha, String usuario) {
        this.email = email;
        this.usuario = usuario;
        setHashSenha(hashSenha);
        this.fisico=fisico;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getHashSenha() {
        return hashSenha;
    }

    public void setHashSenha(String hashSenha) {
        this.hashSenha = hashSenha;
    }

    public boolean verificarSenha(String senhaAberta) {
        return BCrypt.checkpw(senhaAberta, hashSenha);
    }

    public ClienteFisico getFisico() {
        return fisico;
    }

    public void setFisico(ClienteFisico fisico) {
        this.fisico = fisico;
    }

}
