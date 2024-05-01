/* Definición de predicados */
persona(barbara, mujer).
persona(maria, mujer).
persona(susana,mujer).
persona(juan, hombre).
persona(pedro, hombre).
persona(roberto, hombre).
 
amistad(barbara, roberto).
amistad(barbara, juan).
amistad(barbara, maria).
amistad(susana, juan).
amistad(susana, pedro).

relacion(X, Y) :- amistad(X, Y).
relacion(X, Y) :- amistad(Y, X).

/* Regla para determinar si una mujer está relacionada con un hombre */
relacionada_con_hombre(X, Y) :-
    persona(X, mujer),        % X es una mujer
    persona(Y, hombre),       % Y es un hombre
    amistad(X, Z),            % X es amiga de Z
    amistad(Z, Y).            % Z es amigo de Y

sospechoso(X) :- persona(X, hombre), amistad(susana,X).
sospechoso2(X) :- persona(X, mujer), X \= susana, relacion(X, H),
    persona(H, hombre), amistad(susana, H).

     % Los amigos de mujeres que tuvieron relación con hombres que susana conocía.
/* Regla para determinar si dos personas son amigos */
son_amigos(X, Y) :- amistad(X, Y) ; amistad(Y, X).
:- dynamic amigo_encontrado/0. % Definir amigo_encontrado como un hecho dinámico
/* Regla para encontrar los amigos de mujeres que tuvieron relación con hombres que Susana conocía */
amigos_de_mujeres_relacionadas(X) :-
    persona(X, hombre),       % X es un hombre
    amistad(susana, X),       % X es amigo de Susana
    write('Amigo de mujer relacionada: '), write(X), nl,   % Mostrar el resultado
    assert(amigo_encontrado), % Registrar que hemos encontrado un amigo
    !.  % Cortar la búsqueda después de encontrar un amigo de mujer relacionada
amigos_de_mujeres_relacionadas(X) :-
    persona(X, mujer),        % X es una mujer
    relacionada_con_hombre(Y, X),   % Y es un hombre con el que X está relacionada
    son_amigos(Y, Z),         % Y y Z son amigos
    persona(Z, mujer),        % Z es una mujer
    \+ amigo_encontrado,      % Verificar que no se ha encontrado ningún amigo aún
    write('Amigo de mujer relacionada: '), write(Z), nl,   % Mostrar el resultado
    assert(amigo_encontrado), % Registrar que hemos encontrado un amigo
    fail.  % Fallar para evitar que busque más resultados
amigos_de_mujeres_relacionadas(_) :-
    retract(amigo_encontrado). % Retractar amigo_encontrado al final de la consulta