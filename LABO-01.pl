% HECHOS

sobreviviente(eric, 30).
sobreviviente(timmy, _).
sobreviviente(kelvin, _).
sobreviviente(virginia, _).
mutante(virginia, _).

protagonista(eric).
aliado(eric).
aliado(kelvin).
aliado_potencial(virginia).
habla(eric).
% no_habla(kelvin).
habla(virginia).

tiene(eric, hacha).
tiene(eric, encendedor).

necesita(eric, refugio).
necesita(eric, comida).
necesita(eric, agua).

zona(superficie).
zona(cuevas).
zona(bunkeres).

enemigo(canibales, superficie).
enemigo(mutantes, superficie).
enemigo(mutantes, cuevas).

recurso(troncos, superficie).
recurso(piedras, superficie).

%aliado(kelvin)

%capturado(kelvin)

%habla(eric, timmy, virginia)
%mutante(virginia)



%carga(kelvin, tronco)
%ordenar(kelvin) :- construir(kelvin)

%zona(isla, superficie)
%zona(isla, cueva)
%zona(isla, bunkeres)

%