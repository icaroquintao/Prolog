funcao(0, 1).
funcao(1, 1).
funcao(N, F):- N > 1, N1 is N-1, N2 is N-2, funcao(N1, F1), funcao(N2, F2), F is F1+F2.
