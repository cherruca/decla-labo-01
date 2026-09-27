% Caso base: la suma de 1 es 1
suma_hasta(1, 1).

% Caso recursivo: suma_hasta(N, S) si S = N + suma_hasta(N-1)
suma_hasta(N, S) :-
    N > 1,
    N1 is N - 1,
    suma_hasta(N1, S1),
    S is N + S1.