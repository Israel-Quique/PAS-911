% esLista(juan([andres, maria, pedro, juan])).
% enLista(Elemento, Lista) :- esLista(Lista),Lista = juan(Elements), esElemento(Elemento, Elements).

enLista(Elemento,[Cabeza| _]):-Elemento== Cabeza.
enLista(Elemento,[_|Cola]):- enLista(Elemento,Cola).


% adicionar elemento a Lista
adicionar(X,lista,Resultado):-Resultado is [X |lista].