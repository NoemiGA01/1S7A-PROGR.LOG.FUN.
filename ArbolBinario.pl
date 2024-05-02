%% Programacion con arboles binarios
% Concatena dos listas
/*concatena([], Ys, Ys).
concatena([X|Xs], Ys, [X|Zs]) :-
    concatena(Xs, Ys, Zs).*/

% Definición de un árbol de ejemplo
arbolB_ej(nodoB(nodoB(nodoB(vacioB, 1, vacioB), 2, nodoB(vacioB, 3, vacioB)), 4, nodoB(nodoB(vacioB, 5, vacioB), 6, nodoB(vacioB, 7, vacioB)))).


% Verificar si un elemento X es miembro de un árbol
miembro(X, nodoB(_, X, _)).
miembro(X, nodoB(I, Y, _)) :-
    X \= Y,
    miembro(X, I).
miembro(X, nodoB(_, Y, D)) :-
    X \= Y,
    miembro(X, D).

% recorridos de un arbol

preorden(vacioB,[]).
preorden(nodoB(I,R,D),RID) :-
	preorden(I,PreI),
	preorden(D,PreD),
	concatena([R|PreI],PreD,RID).

inorden(vacioB,[]).
inorden(nodoB(I,R,D),IRD) :-
	inorden(I,InI),
	inorden(D,InD),
	concatena(InI,[R|InD],IRD).

postorden(vacioB,[]).
postorden(nodoB(I,R,D),IDR) :-
	postorden(I,PostI),
	postorden(D,PostD),
	concatena(PostI,PostD,ID),
	concatena(ID,[R],IDR).
/*Conclusion:
 * Su habilidad para organizar datos de manera que permitan accesos, 
 * búsquedas y eliminaciones rápidas es crucial para el rendimiento 
 * en aplicaciones que manejan grandes cantidades de datos. Además, 
 * los diferentes recorridos del árbol permiten adaptar la exploración 
 * del mismo según los requerimientos específicos del problema que se 
 * esté tratando.
 * */