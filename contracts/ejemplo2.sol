// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;


contract ejemplo2 {

    struct Peliculas {
        string Titulo;
        uint256 Fecha;
        bool Recomendado;
    }

mapping (string => Peliculas) PeliculasFavs;

struct Viajes {
    string Destino;
    uint256 Precio;
}

mapping(uint256 => Viajes) ViajesPorFecha;

modifier compruebaFecha (uint256 fecha) {
    require(ViajesPorFecha[fecha].Precio == 0, 'Ya ha sido registrado en esta fecha');
    _;
}

function registrar(uint256 fecha, string memory destino, uint256 precio) compruebaFecha(fecha) public {
    ViajesPorFecha[fecha] = Viajes(destino, precio);
}

function consultar(uint256 fecha) public view returns (string memory, uint256) {
    return(ViajesPorFecha[fecha].Destino, ViajesPorFecha[fecha].Precio);
}
/*
function registrar(string memory nom, string memory tit, uint256 fec, bool rec) public {
    PeliculasFavs[nom] = Peliculas(tit, fec, rec);
}

function consultar (string memory nombre) public view returns(string memory, uint256, bool) {
    string memory titulo = PeliculasFavs[nombre].Titulo;
    uint256 fecha = PeliculasFavs[nombre].Fecha;
    bool recomendado =PeliculasFavs[nombre].Recomendado;
    return(titulo, fecha, recomendado);
}
*/
}