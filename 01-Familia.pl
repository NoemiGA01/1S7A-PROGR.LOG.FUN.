% Hechos
:- discontiguous padre/2.
:- discontiguous madre/2.
:- discontiguous es_madre_de/2.
madre(mirian, ricardo).
padre(marcelo, raul).
padre(marcelo, rita).
linda(mirian).
linda(rita).
padre(juan, marcelo).
padre(juan, maria).
padre(raul, sergio).
madre(rita, victor).
madre(rita, veronica).
casado(juan, mirian).
casado(marcelo, rita).

% Reglas
abuelo_de(Abuelo, Nieto) :-
    padre(Abuelo, Hijo),
    padre(Hijo, Nieto);
    madre(Abuelo, Hija),
    padre(Hija, Nieto);
    padre(Abuelo, Hija),
    madre(Hija, Nieto);
    madre(Abuelo, Hijo),
    madre(Hijo, Nieto).
nieto_de(Nieto, Abuelo) :- abuelo_de(Abuelo, Nieto).
% Regla para hermanos
hermana_de(Hermana, Victor) :-
    madre(Madre, Hermana),
    madre(Madre, Victor),
    Hermana \= Victor. % Para evitar que Victor sea su propio hermano
hermana_de(Hermana, Victor) :-
    padre(Padre, Hermana),
    padre(Padre, Victor),
    Hermana \= Victor. % Para evitar que Victor sea su propio hermano

casado_con_linda(Persona) :-
    (casado(Persona, Cónyuge), linda(Cónyuge)).

es_madre_de(Madre, Hija) :-
    madre(Madre, Hija).

es_padre_de(Padre, Hijo) :- padre(Padre, Hijo).
es_madre_de(Madre, Hijo) :- madre(Madre, Hijo).

hermanos(Hermano1, Hermano2) :-
    es_padre_de(Padre, Hermano1),
    es_padre_de(Padre, Hermano2),
    Hermano1 \= Hermano2.

tio_o_tia(TioTia, Sobrino) :-
    hermanos(TioTia, Padre),
    (es_padre_de(Padre, Sobrino); es_madre_de(Padre, Sobrino)).




