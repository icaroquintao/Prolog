concatenate(List1, List2, Result):-
   append(List1, List2, Result).
pertence(X,[X|_]).
pertence(X,[_|Y]):-pertence(X,Y).

remover([],[]).
remover([Z|Y],X):-remover(Y,X),pertence(Z,X).
remover([Z|Y],[Z|X]):-remover(Y,X),not(pertence(Z,X)).

uniao([X|Z], [Y|W], R):-concatenate([X|Z], [Y|W], E), remover([_|E], R).



