package edu.fpdual.client.dto;

import java.util.Comparator;

public class RankinUsuarios implements Comparator<Usuario> {
    @Override
    public int compare(Usuario u1, Usuario u2) {
        return Integer.compare(u2.getPuntos(), u1.getPuntos()); // Compara de mayor a menor
    }
}