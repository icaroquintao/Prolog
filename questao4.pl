maximo([X], X).
maximo([H|L], X) :- maximo(L, Maior), ( H > Maior -> X is H ; X is Maior ).
