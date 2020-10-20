%A. Se Frederico é o pai de Michael, então Frederico é um ancestral de Michael.

ancestral(frederico, michael) <- pai(frederico, michael).

%B. Se Michael é o pai de João e Michael é o pai de Maria, então Maria é a irmã de João.

irmao(maria, joao) <- pai(michael, joao), pai(michael, maria).

%C. Se Michael é o irmão de Frederico e Frederico é o pai de Maria, então Michael é o tio de Maria. 

tio(michael, maria) <- irmao(frederico, michael), filho(maria, frederico).
