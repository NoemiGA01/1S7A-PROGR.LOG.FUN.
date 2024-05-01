:- discontiguous lejos/1.
:- discontiguous cerca/1.
:- discontiguous auto/1.
:- discontiguous amigos/2.
:- discontiguous borracho/1.

auto(pers).
cerca(pers).
lejos(pers).
amigos(pers,pers).
borracho(pers).

lejos(roberto).
lejos(raul).
lejos(rodrigo).
lejos(ana).
lejos(anacleta).
lejos(anastacia).
cerca(aida).
cerca(analia).

auto(juan).
auto(jose).
auto(jeremias).
auto(jorge).

amigos(ana,jose).
amigos(analia,juan).
amigos(anacleta,juan).
amigos(anastacia,jose).

borracho(juan).

seguro(X) :- 
    (auto(X), \+ borracho(X), X = jorge ; X = jose ; X = jeremias ; X = aida ; X = analia ; X = ana ; X = anastacia).


no_seguro(X) :- borracho(X), (X = juan).
no_seguro(X) :- lejos(X), amigos(X,Y), borracho(Y), (X = juan ; X = anacleta).