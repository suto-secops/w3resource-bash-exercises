#!/usr/bin/env bash
# Fixtures for c03_redirection.

fixture_c03_02() {
    printf 'linea uno\nlinea dos\n' >notas.txt
}

fixture_c03_03() {
    printf 'contenido de entrada\notra linea\n' >entrada.txt
}

fixture_c03_05() {
    printf 'linea previa\n' >log.txt
}

fixture_c03_07() {
    touch a.txt b.log c.txt d.md
}

fixture_c03_08() {
    printf '21\n' >nums.txt
}

fixture_c03_09() {
    printf 'contenido fijo\nsegunda linea\n' >datos.txt
}
