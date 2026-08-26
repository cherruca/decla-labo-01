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

requiere_llave(bunkeres).
peligro(cuevas, alto).
peligro(superficie, medio, dia).
peligro(superficie, alto, noche).

puede_cargar_troncos(kelvin).
puede_construir(kelvin).

%%%%%%%

% REGLAS

% 1) una persona puede sobrevivir si la zona tiene recursos y es segura%
% ?- puede_sobrevivir(eric, superficie).

puede_sobrevivir(Persona, Zona) :-
    sobreviviente(Persona, _),
    zona(Zona),
    tiene_necesidades_basicas(Persona),
    zona_segura(Zona),
    (   not(necesita_recursos(Persona))
    ;   puede_obtener_recursos(Persona, Zona)
    ).

tiene_necesidades_basicas(Persona) :-
    sobreviviente(Persona, _),
    forall(necesita(Persona, Recurso), 
           tiene(Persona, Recurso)).

necesita_recursos(Persona) :-
    necesita(Persona, Recurso),
    not(tiene(Persona, Recurso)).

puede_obtener_recursos(Persona, Zona) :-
    recurso(_, Zona).

esta_en(Persona, Zona) :-
    sobreviviente(Persona, _),
    zona(Zona).

% 2) Kevin puede ayudar a Eric si estan en la misma zona y tienen un hacha
% ?- kelvin_ayuda_a_eric(superficie).

kelvin_ayuda_a_eric(Zona) :-
    zona(Zona),
    esta_en(kelvin, Zona),
    esta_en(eric, Zona),
    puede_construir(kelvin),
    tiene(eric, hacha),
    recurso(troncos, Zona).

% 3) predicado para saber si hay enemigos en una zona
% ?- zona(Zona), not(enemigo(_, Zona)).
enemigos_en(Zona, Enemigo) :-
    enemigo(Enemigo, Zona).
