
atv2([],_).
atv2([H|L], N):- cauda2(H,N), atv2(L,N).

cauda2([W|Y],N):- N > 0 -> P = N-1, atv2([W|Y],P).
cauda2([_|_],0).
cauda2(X,Y):- Y=:=0,cauda(X).
cauda2(_,P):- P =\= 0.
cauda2([],_).




atv([]).
atv([H|L]):- cauda(H), atv(L).
cauda([_|_]).
cauda(X):- write(X), write(' ').

imprime_arv(Number):-atv2([elizabeth,[diana,[william,[george,charlotte,louis],catherine,harry,[archie],meghan],charles,camilla,markPhilips,[autum,[savannah,isla],peterPhilips,zara,[mia,lena],mike],anne,timothy,andrew,[beatrice,eugene],sarah,edward,[louise,james],sophie],philip], Number).


