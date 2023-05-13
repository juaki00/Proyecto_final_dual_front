package edu.fpdual.client.dto;

import lombok.*;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode
@ToString
@Builder
/*
 *  Representacion de un usuario registrado en el sistema
 */
public class Usuario {
    private String nick;
    private String password;
    private String nombre;
    private String apellido;
    private String telefono;
    private String email;
    private int puntos;

    public Usuario(String nick) {
        this.nick = nick;
    }

    public Usuario(String nick, String pass, String nombre, String apellido, String telefono, String email) {
        this.password = pass;
        this.nick = nick;
        this.nombre = nombre;
        this.apellido = apellido;
        this.telefono = telefono;
        this.email = email;
        this.puntos = 0;
    }
    
}
