package edu.fpdual.client;

import edu.fpdual.client.dto.Usuario;
import edu.fpdual.client.services.UserServices;

public class Main {


    public static void main(String[] args) {
        System.out.println(new UserServices().getAllUsers());
        Usuario user2;
        System.out.println(user2 = new UserServices().userFromNick("a"));
//        System.out.println("existe nick: "+new UserServices().existeNick("a"));
        System.out.println("sumapuntos: "+new UserServices().sumaPuntos(user2, 5));
        user2 = new UserServices().userFromNick("a");
        Usuario user = new Usuario("ppablitoo1234","Pabloo2","123450", "Perezo2","952952953","Pablo@gmail.com");
//        System.out.println("insertar: "+new UserServices().insertUser(user));
        System.out.println(user2);
    }

}
