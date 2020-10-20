pernas(vaca,4).
pernas(humano, 2).

bracos(humano,2).
mamifero(N) :- pernas(N,4), \+bracos(N,0).
mamifero(N) :- pernas(N,2), bracos(N,2).
