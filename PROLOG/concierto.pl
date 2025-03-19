michael.
owen.
selena_gomez.

thriller.
playa.
love.

alan.
fernando.
gladys.
daniel.
daner.

es_cantante(michael).
es_cantante(owen).
es_cantante(selena_gomez).

es_cancion(thriller).
es_cancion(playa).
es_cancion(love).

es_publico(alan).
es_publico(fernando).
es_publico(gladys).
es_publico(daniel).
es_publico(daner).

% x es fan de y
canta(michael,thriller).
canta(michael,love).
canta(owen,thriller).
canta(owen,playa).
canta(selena_gomez,playa).
canta(selena_gomez,love).

escucha(alan,playa).
escucha(alan,love).
escucha(fernando,thriller).
escucha(gladys,thriller).
escucha(gladys,playa).
escucha(daniel,thriller).
escucha(daniel,love).
escucha(daner,playa).
escucha(daner,love).

fan(Fan,Cantante):-es_publico(Fan),es_cantante(Cantante),canta(Cantante,Musica),escucha(Fan,Musica).

% x y y son del mismo fandom

fandom(Fan1,Fan2):- fan(Fan1,Cantante),fan(Fan2,Cantante).

% x colabora con y

colabora(Cantante1,Cantante2):- es_cantante(Cantante1), es_cantante(Cantante2),canta(Cantante1,Musica), canta(Cantante2,Musica).