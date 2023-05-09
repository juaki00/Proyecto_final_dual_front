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

    public Usuario(String nick) {
        this.nick = nick;
    }
    
}
