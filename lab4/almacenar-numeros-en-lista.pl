%regla para el cero
almacenar(0, [0]) :- !.
almacenar(N, L) :-
    N > 0,
    digitos_resto(N, L).

%resto de numeros
digitos_resto(0, []) :- !.
digitos_resto(N, [D|Resto]) :-
    D is N mod 10,
    N1 is N // 10, 
    digitos_resto(N1, Resto).