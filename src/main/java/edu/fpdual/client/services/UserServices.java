package edu.fpdual.client.services;

import edu.fpdual.client.dto.Usuario;
import jakarta.ws.rs.Consumes;
import jakarta.ws.rs.client.*;
import jakarta.ws.rs.core.GenericType;
import jakarta.ws.rs.core.MediaType;

import java.util.Set;

public class UserServices {

    private final WebTarget webTarget;

    /**
     * Servicios para acceder a la tabla de datos usuaios
     */
    public UserServices() {
        Client client = ClientBuilder.newClient();
        this.webTarget = client.target("http://localhost:8080/ws/webapi");
    }

    /**
     *
     * @return Devuelve todos los usuarios registrados
     */
    @Consumes(MediaType.APPLICATION_JSON)
    public Set<Usuario> getAllUsers() {
        GenericType<Set<Usuario>> type = new GenericType<>() {
        };

        return webTarget.path("users/getAll")
                .request(MediaType.APPLICATION_JSON)
                .get(type);
    }

    /**
     *
     * @param user nick del usuario
     * @return devuelve la contraseña del usuario
     */
    public String getPass(String user) {
        return webTarget.path("users/getPass/")
                .request(MediaType.APPLICATION_JSON)
                .post(Entity.entity(user, MediaType.APPLICATION_JSON), String.class);
    }

    /**
     *
     * @param nick nick del usuario
     * @return devuelve una instancia de la clase usuario con ese nick o null si el usuario no existe
     */
    public Usuario userFromNick(String nick) {
        return webTarget.path("users/userFromNick/")
                .request(MediaType.APPLICATION_JSON)
                .post(Entity.entity(nick, MediaType.APPLICATION_JSON), Usuario.class);
    }


    /**
     *
     * @param nick del usuario
     * @return devuelve true si el usuario existe o false si el usuario no existe
     */
    public Boolean existeNick(String nick) {

        return webTarget.path("users/existe/" + nick)
                .request(MediaType.APPLICATION_JSON)
                .get(Boolean.class);
    }

    /**
     *
     * @param user usuario a insertar (El nick debe no estar ya registrado)
     * @return devuelve true si el usuario ha sido registrado correctamente
     */
    public Boolean insertUser(Usuario user) {
        return webTarget.path("users/insert/")
                .request(MediaType.APPLICATION_JSON)
                .post(Entity.entity(user, MediaType.APPLICATION_JSON), Boolean.class);
    }

    public Boolean sumaPuntos(Usuario user, int p) {
        return webTarget.path("users/sumaPuntos/")
                .request(MediaType.APPLICATION_JSON)
                .header("puntos",p)
                .post(Entity.entity(user, MediaType.APPLICATION_JSON), Boolean.class);
    }


}
