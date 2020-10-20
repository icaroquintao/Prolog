max(N,[N]).
max(N,[H|T]):-max(L,T),(L>H->N=L;N=H).
min(N,[N]).
min(N,[H|T]):-min(L,T),(L<H->N=L;N=H).
