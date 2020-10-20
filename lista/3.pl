mae(sue, nancy). 
mae(sue, jeff). 
mae(mary, sue).
mae(mary, bill).
pai(bill, ted). 
antepass(X,Y):-pai(X,Y).
antepass(X,Y):-mae(X,Y).
irmao(X,Y):-antepass(Z,X), antepass(Z,Y), x\=y.
avo(Avo,ted):-antepass(Avo,Paimae),antepass(Paimae,ted).
primo(C,T):- antepass(X,C),antepass(Y,T),irmao(X,Y).
