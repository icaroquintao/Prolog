pertence(X,[X|_]).
pertence(X,[_|Y]):-pertence(X,Y).
remover([],[]).
remover([Z|Y],X):-remover(Y,X),pertence(Z,X).
remover([Z|Y],[Z|X]):-remover(Y,X),\+pertence(Z,X).
