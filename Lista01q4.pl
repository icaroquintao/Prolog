max(M,[M]).
max(M,[H|T]):-max(L,T),(L>H->M is L;M is H).

min(M,[M]).
min(M,[H|T]):-min(L,T),(L<H->M is L;M is H).

