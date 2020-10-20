binario(0,'0').
binario(1,'1').
binario(N,B):- N > 1,X is N mod 2, Y is N div 2,binario(Y,B1),concat(B1,X,B).
