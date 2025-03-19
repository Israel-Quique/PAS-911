padre('a','b').
padre('a','c').
padre('b','d').
padre('b','e').
padre('b','f').
padre('d','f').
padre('e','k').
padre('k','o').
padre('k','p').
padre('c','g').
padre('c','h').
padre('c','i').
padre('g','l').
padre('h','m').
padre('i','n').
padre('m','q').
padre('m','r').

% esDecendiente(X,Y).
esDecendiente(Hijo,Padre):-padre(Padre,Hijo).
esDecendiente(Hijo,Padre):-padre(Ancestro,Hijo),esDecendiente(Ancestro,Padre),Hijo\==Padre.
% esAscendiente(X,Y).
esAscendiente(Padre,Hijo):-padre(Padre,Hijo),Hijo\==Padre.
esAscendiente(Padre,Hijo):-padre(Padre,Decendiete),esAscendiente(Decendiete,Hijo),Hijo\==Padre.
% esHermano(X,Y).
esHermano(Hermano1,Hermano2):-padre(Padre,Hermano1),padre(Padre,Hermano2),Hermano1\==Hermano2.
% esPrimo(X,Y).
esPrimo(Hijo,Primo):-esAscendiente(Padre,Hijo),esDecendiente(Primo,Padre),Hijo\==Primo.