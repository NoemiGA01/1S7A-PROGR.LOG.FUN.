% Definición de las rutas
ruta(nuevaCordoba, altaCordoba, 3000).
ruta(nuevaCordoba, cascoCentrico, 200).
ruta(cascoCentrico, villaAllende, 4000).
ruta(altaCordoba, villaAllende, 750).
ruta(nuevaCordoba, villaArguello, 5000).
ruta(villaArguello, villaAllende, 3000).
ruta(nuevaCordoba, lasPalmas, 4000).
ruta(lasPalmas, villaAllende, 3200).
ruta(nuevaCordoba, losPlatanos, 2000).
ruta(losPlatanos, sanFernando, 3000).
ruta(sanFernando, villaAllende, 1700).

% Definición de predicados para encontrar la ruta más corta y la más larga
ruta_mas_corta(X, Y, Distancia) :-
    findall(D, camino(X, Y, D), Distancias),
    min_list(Distancias, Distancia).

ruta_mas_larga(X, Y, Distancia) :-
    findall(D, camino(X, Y, D), Distancias),
    max_list(Distancias, Distancia).

% Definición de predicado para encontrar un camino entre dos puntos
camino(X, Y, D) :-
    camino(X, Y, [X], D).

camino(X, Y, _, D) :-
    ruta(X, Y, D).

camino(X, Y, Visitados, D) :-
    ruta(X, Z, D1),
    \+ member(Z, Visitados),
    append(Visitados, [Z], NewVisitados),
    camino(Z, Y, NewVisitados, D2),
    D is D1 + D2.

% Consulta para encontrar la ruta más corta y la más larga de Nueva Córdoba a Villa Allende
%:- ruta_mas_corta(nuevaCordoba, villaAllende, Corta), write('Ruta más corta: '), write(Corta), nl.
%:- ruta_mas_larga(nuevaCordoba, villaAllende, Larga), write('Ruta más larga: '), write(Larga), nl.
