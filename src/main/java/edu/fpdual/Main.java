package edu.fpdual;

import edu.fpdual.client.dto.Usuario;
import edu.fpdual.client.services.UserServices;

public class Main {


    public static void main(String[] args) {
//        System.out.println(new NotificationClient().ping());
        System.out.println(new UserServices().insertUser(new Usuario("bbbbbb","bb","bb","bb","bb","bb")));
        System.out.println(new UserServices().getPass("w"));
        System.out.println(new UserServices().getAllUsers());
        System.out.println(new UserServices().userFromNick("bbbbbb"));

    }

}
