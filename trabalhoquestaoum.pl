casado(charles,camilla).
casado(anne,laurence).
casado(edward,sophie).
casado(peter_Philips,autumn_Philips).
casado(mike,zara).
casado(willian,catherine).
casado(harry,meghan).
casado(jack,eugenie).
casado(philip,elizabeth_II).

divorciado(charles,diana).
divorciado(andrew,sarah).
divorciado(mark_Philips,anne).


filho(philip,anne).
filho(philip,andrew).
filho(philip,edward).
filho(philip,charles).
filho(charles,willian).
filho(charles,harry).
filho(willian,george).
filho(willian,charlotte).
filho(willian,louis).
filho(harry,archie).
filho(zara,mia).
filho(zara,lena).
filho(peter_Philips,savannah).
filho(peter_Philips,isla).
filho(anne,peter_Philips).
filho(anne,zara).
filho(andrew,beatrice).
filho(andrew,eugenie).
filho(edward,louise).
filho(edward,james).


tio(george,harry).
tio(charlotte,harry).
tio(louis,harry).
tio(archie,willian).
tio(willian,anne).
tio(willian,andrew).
tio(willian,edward).
tio(harry,anne).
tio(harry,andrew).
tio(harry,edward).
tio(peter_Philips,charles).
tio(peter_Philips,andrew).
tio(peter_Philips,edward).
tio(zara,charles).
tio(zara,andrew).
tio(zara,edward).
tio(beatrice,anne).
tio(beatrice,charles).
tio(beatrice,edward).
tio(eugenie,anne).
tio(eugenie,charles).
tio(eugenie,edward).
tio(louise,anne).
tio(louise,charles).
tio(louise,andrew).
tio(james,anne).
tio(james,charles).
tio(james,andrew).
tio(savannah,zara).
tio(isla,zara).
tio(mia,peter_Philips).
tio(lena,peter_Philips).

primo(george,archie).
primo(charlotte,archie).
primo(louis,archie).
primo(savannah,mia).
primo(savannah,lena).
primo(isla,mia).
primo(isla,lena).
primo(willian,peter_Philips).
primo(willian,zara).
primo(willian,beatrice).
primo(willian,eugenie).
primo(willian,louise).
primo(willian,james).
primo(harry,peter_Philips).
primo(harry,zara).
primo(harry,beatrice).
primo(harry,eugenie).
primo(harry,louise).
primo(harry,james).
primo(peter_Philips,beatrice).
primo(peter_Philips,eugenie).
primo(peter_Philips,louise).
primo(peter_Philips,james).
primo(zara,beatrice).
primo(zara,eugenie).
primo(zara,louise).
primo(zara,james).
primo(beatrice,louise).
primo(beatrice,james).
primo(eugenie,louise).
primo(eugenie,james).

cunhado(willian,meghan).
cunhado(harry,catherine).
cunhado(beatrice,jack).
cunhado(zara,autumn_Philips).
cunhado(peter_Philips,mike).
cunhado(charles,mark_Philips).
cunhado(charles,timothy).
cunhado(charles,sarah).
cunhado(charles,sophie).
cunhado(anne,diana).
cunhado(anne,camilla).
cunhado(anne,sarah).
cunhado(anne,sophie).
cunhado(andrew,diana).

idade(philip,98).
idade(charles,70).
idade(mark_Philips,70).
idade(timothy,64).
idade(andrew,59).
idade(edward,55).
idade(peter_Philips,41).
idade(mike,40).
idade(willian,37).
idade(harry,34).
idade(jack,63).
idade(james,11).
idade(george,6).
idade(louis,1).
idade(elizabeth_II,93).
idade(diana,36).
idade(camilla,72).
idade(anne,69).
idade(sarah,59).
idade(sophie,54).
idade(autumn_Philips,41).
idade(zara,38).
idade(catherine,37).
idade(meghan,38).
idade(beatrice,31).
idade(eugenie,59).
idade(louise,15).
idade(charlotte,4).
idade(archie,0).
idade(savannah,8).
idade(isla,7).
idade(mia,5).
idade(lena,0).


bisneto(Y):-filho(willian,Y);filho(harry,Y);filho(zara,Y);filho(peter_Philips,Y).

primeiraGeracao(X):-filho(philip,X).

segundaGeracao(X):-filho(charles,X);filho(anne,X);filho(andrew,X);filho(edward,X).

neto(X):-filho(anne,X);filho(andrew,X);filho(edward,X);filho(charles,X).

idadeNeto(Y):- idade(X,Y),neto(X).

tamanho_lista([],0).
tamanho_lista([_|L],N) :- tamanho_lista(L,N1), N is N1+1.

somar_lista([],0).
somar_lista([C|L],S) :- somar_lista(L,A), (S is A+C).

idadeMediaNetosRainha(Result) :- findall(X,idadeNeto(X),M), tamanho_lista(M,T), somar_lista(M,S), Result is S/T.

netosCharles(Nome, Idade) :-(filho(william, Nome), idade(Nome, Idade)); (filho(harry, Nome), idade(Nome, Idade)).

menor_lista([R],R).
menor_lista([C|L],R) :- menor_lista(L,A), (A < C -> R = A; R = C).

netoMaisNovoCharles(Nome, Idade) :- findall(X, netosCharles(Nome, X), M), menor_lista(M,Idade), netosCharles(Nome,Idade).

listFilhos(Y, Q) :- casado(Y,_),(findall(X, filho(Y,X), M),tamanho_lista(M,Q)).

maior_lista([R],R).
maior_lista([C|L],R) :- maior_lista(L,A), (A > C -> R = A; R = C).

maisFilhos(Pai,Mae) :- findall(Q, listFilhos(Pai, Q), M), maior_lista(M,X), listFilhos(Pai, X), casado(Pai,Mae).

mae(X, Y) :- casado(Z, X), filho(Z, Y).
ancestral(X,Y, Idade) :- filho(X,Y), idade(Y, Idade); mae(X, Y), idade(Y, Idade).

sucessor(Primeiro,Nome) :- (findall(X, ancestral(Primeiro, Nome, X), M), maior_lista(M,Idade), ancestral(Primeiro,Nome, Idade)).

sucessores(X, W) :- sucessor(X, Y), write(Y), nl, sucessores(Y, W).


imprime(0):- write(0).
imprime(1):- write('philip'),nl,write('elisabeth II').
imprime(2):- filho(philip,X), write(X), nl.
imprime(3):- neto(X), write(X), nl.
imprime(4):- bisneto(X), write(X), nl.




