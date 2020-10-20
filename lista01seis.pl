pertence(X,[X|_]).
pertence(Y,[_|T]):- pertence(Y,T).

inter([],_,[]).
inter([A|B],C,R):-inter(B,C,R),pertence(A,R).
inter([A|B],C,R):-inter(B,C,R), not(pertence(A,C)).
inter([A|B],C,[A|R]):-inter(B,C,R),pertence(A,C), not(pertence(A,R)).
