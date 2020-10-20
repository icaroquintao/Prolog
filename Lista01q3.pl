mae(sue, nancy).
mae(sue, jeff).
mae(mary, sue).
mae(mary, bill).

pai(bill, ted).

pais(X,Y):-pai(X,Y).
pais(X,Y):-mae(X,Y).

irmao(X,Y):- pais(P,X),pais(P,Y),X\=Y.

avo(Quem,ted):- mae(Quem,X),pais(X,ted).

primo(X,Y):- pais(Z,X),pais(P,Y),irmao(Z,P).
