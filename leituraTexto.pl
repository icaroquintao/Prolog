main:-open('entrada.txt',read,F), read(F,C1),
    read(F,C2),
    read(F,C3),
    read(F,C4),
    read(F,C5),
    close(F), Y is C1+C2+C3+C4+C5, write(Y),nl,open('saida.txt',write,Out),
    write(Out,Y),
    close(Out).



