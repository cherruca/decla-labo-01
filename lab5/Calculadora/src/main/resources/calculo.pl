%validacion de numeros
numero(X) :- number(X).

% recibir operaciones y numeros
calculadora(Op, A, B, R) :-
    numero(A),
    numero(B),
    operacion(Op, A, B, R).

operacion(suma, A, B, R) :- R is A + B.
operacion(resta, A, B, R) :- R is A - B.
operacion(multiplicacion, A, B, R) :- R is A * B.
% se evita la division por cero
operacion(division, A, B, R) :-
    B =\= 0,
    R is A * 1.0 / B.