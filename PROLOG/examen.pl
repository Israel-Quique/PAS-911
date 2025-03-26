% es precio (X)

es_precio('barato').
es_precio('caro').


% Armar una base de conocimiento que explique la imagen.
productos('PRODUCTO','ELECTRODOMESTICO').
productos('PRODUCTO','COMPUTADORA').
productos('ELECTRODOMESTICO','BATIDORA').
productos('ELECTRODOMESTICO','LAVADORA').
productos('COMPUTADORA','LAPTOP').
productos('COMPUTADORA','PC').
productos('BATIDORA','LG-510').
productos('BATIDORA','SAMSUMNG B125').
productos('LAVADORA','LG WASH2').
productos('LAVADORA','SAMSUMG LAVA100').
productos('LAPTOP','MacBook Air').
productos('LAPTOP','Dell Omen').
productos('PC','HP Envy').
productos('PC','DELL Inspiron').
productos('LG-510','barato').
productos('SAMSUMNG B125','caro').
productos('LG WASH2','caro').
productos('SAMSUMG LAVA100','barato').
productos('MacBook Air','caro').
productos('Dell Omen','caro').
productos('HP Envy','barato').
productos('DELL Inspiron','caro').



% Precio del producto 
precio('LG-510','barato').
precio('SAMSUMNG B125','caro').
precio('LG WASH2','caro').
precio('SAMSUMG LAVA100','barato').
precio('MacBook Air','caro').
precio('Dell Omen','caro').
precio('HP Envy','barato').
precio('DELL Inspiron','caro').


% a) esProducto(X).
% es producto(X)
esProducto('LG-510').
esProducto('SAMSUMNG B125').
esProducto('LG WASH2').
esProducto('SAMSUMG LAVA100').
esProducto('MacBook Air').
esProducto('Dell Omen').
esProducto('HP Envy').
esProducto('DELL Inspiron').

% b) esCategoria(X).
% es categoria(X)
esCategoria('PRODUCTO').
esCategoria('ELECTRODOMESTICO').
esCategoria('COMPUTADORA').
esCategoria('BATIDORA').
esCategoria('LAVADORA').
esCategoria('LAPTOP').
esCategoria('PC').


% c) esCliente(X). esCliente(laptop) Debería indicar False esCliente(juan) debería indicar True
esCliente('JUAN').
esCliente('MARIA').
esCliente('PEDRO').

% d) precio(ELEMENTO,PRECIO). => precio("Dell Omen", X) debería indicar X = caro
precio(ELEMENTO,PRECIO):-esProducto(Elemento),es_precio(PRECIO),precio(ELEMENTO,PRECIO).

% e) estaEnCategoria(Producto, Categoria). estaEnCategoria("HP ENVY", pc) Debería indicar True, 
% estaEnCategoria("HP ENVY", computadoras) igual debería indicar True, estaEnCategoria("HP ENVY", producto). 
% igual debería indicar True
estaEnCategoria(Producto,Categoria):-productos(Categoria,Producto).
estaEnCategoria(Producto,Categoria):-productos(Cate,Producto),estaEnCategoria(Cate,Categoria),Producto\==Categoria.


% f) leGustaAJuan(X). debería devolver X = "SAMSUNG B125", X = "LG WASH2"
le_gusta_producto('JUAN', 'SAMSUMNG B125').
le_gusta_producto('JUAN', 'LG WASH2').
leGustaAJuan(X):-le_gusta_producto('JUAN', X), precio(X, 'caro'), estaEnCategoria(X, 'ELECTRODOMESTICO').

% g) leGustaAMaria(X). Debería listar todos los productos que le gustan a Maria
le_gusta_listaM('MARIA', ['MacBook Air', 'Dell Omen']).
leGustaAMaria(X) :- le_gusta_listaM('MARIA', Lista), member(X, Lista).

% h) leGustaAPedro(X). Debería indicar todos los productos que le gustan a Pedro
le_gusta_listaP('PEDRO', ['LG-510', 'SAMSUMG LAVA100','HP Envy']).
leGustaAPedro(X) :- le_gusta_listaP('PEDRO', Lista), member(X, Lista).
