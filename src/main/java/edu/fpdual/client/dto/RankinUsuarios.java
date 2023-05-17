package edu.fpdual.client.dto;

import java.util.Comparator;

/**
 * Comparador para el ranking: Ordena los usuarios por puntos de mayor a menor
 */
public class RankinUsuarios implements Comparator<Usuario> {
    @Override
    public int compare(Usuario u1, Usuario u2) {
        return Integer.compare(u2.getPuntos(), u1.getPuntos()); // Compara de mayor a menor
    }
}