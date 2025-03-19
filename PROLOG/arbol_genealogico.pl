% nombres
robni.
tea.
noelia.
elmer.
eguivar.
juana.
felix.
jessy.
sebastian.
wanda.
cristian.
celeste.
chema.
mariana.
joe.
arty.
andy.

% registro de padres
es_padre(chema,joe).
es_padre(chema,arty).
es_padre(chema,andy).
es_padre(robni,sebastian).
es_padre(elmer,wanda).
es_padre(eguivar, cristian).
es_padre(felix, celeste).
es_padre(cristian, mariana).

% registro de madres
es_madre(mariana,joe).
es_madre(mariana,arty).
es_madre(mariana,andy).
es_madre(tea, sebastian).
es_madre(noelia,wanda).
es_madre(juana,cristian).
es_madre(jessy,celeste).
es_madre(celeste,mariana).

% definir hombres
es_hombre(chema).
es_hombre(robni).
es_hombre(sebastian).
es_hombre(elmer).
es_hombre(cristian).
es_hombre(eguivar).
es_hombre(felix).
es_hombre(joe).
es_hombre(andy).

% definir mujeres
es_mujer(tea).
es_mujer(noelia).
es_mujer(juana).
es_mujer(jessy).
es_mujer(wanda).
es_mujer(celeste).
es_mujer(mariana).
es_mujer(andy).

% definir parejas
es_pareja_de(robni,tea).
es_pareja_de(noelia,elmer).
es_pareja_de(eguivar,juana).
es_pareja_de(felix,jessy).
es_pareja_de(sebastian,wanda).
es_pareja_de(cristian,celeste).
es_pareja_de(chema,mariana).

% desendiente directo
es_decendiente_directo_de(arty,chema,mariana).
es_decendiente_directo_de(joe,chema,mariana).
es_decendiente_directo_de(andy,chema,mariana).
es_decendiente_directo_de(chema,sebastian,wanda).
es_decendiente_directo_de(sebastian,robni,tea).
es_decendiente_directo_de(wanda,noelia,elmer).
es_decendiente_directo_de(mariana,cristian,celeste).
es_decendiente_directo_de(cristian,eguivar,juana).
es_decendiente_directo_de(celeste,felix,jessy).

% es hermano de 
es_hermano_de(joe,arty).
es_hermano_de(joe,andy).
es_hermano_de(arty,joe).
es_hermano_de(arty,andy).

% es hermana de
es_hermana_de(andy,joe).
es_hermana_de(andy,arty).

% esposo
es_esposo_de(X,Y):-es_hombre(X),es_pareja_de(X,Y); 
                es_hombre(X),es_pareja_de(Y,X).

% esposa
es_esposa_de(X,Y):-es_mujer(X),es_pareja_de(X,Y);
                es_mujer(X),es_pareja_de(Y,X),es_hombre(Y).

% abuelo
es_abuelo_de(Abuelo,Nietae):-es_hombre(Abuelo),es_decendiente_directo_de(Hijoa,Abuelo,Abuela),es_decendiente_directo_de(Nietae,Hijoa,Esposa),es_hombre(Nietae);
                            es_hombre(Abuelo),es_decendiente_directo_de(Hijoa,Abuelo,Abuela),es_decendiente_directo_de(Nietae,Hijoa,Esposa),es_mujer(Nietae).

% abuela
es_abuela_de(Abuela,Nietae):-es_mujer(Abuela),es_decendiente_directo_de(Hijoa,Abuelo,Abuela),es_decendiente_directo_de(Nietae,Hijoa,Esposa);
                            es_mujer(Abuela),es_decendiente_directo_de(Hijoa,Abuelo,Abuela),es_decendiente_directo_de(Nietae,Hijoa,Esposa),es_mujer(Nietae).

% nieto
es_nieto_de(Nieto,Abuelae):-es_hombre(Nieto),es_decendiente_directo_de(Nieto,Padre,Madre),es_decendiente_directo_de(Padre,Abuelo,Abuelae),es_hombre(Abuelae);
                        es_hombre(Nieto),es_decendiente_directo_de(Nieto,Padre,Madre),es_decendiente_directo_de(Padre,Abuelo,Abuelae),es_mujer(Abuelae).

% nieta
es_nieta_de(Nieta,Abuelae):-es_mujer(Nieta),es_decendiente_directo_de(Nieta,Padre,Madre),es_decendiente_directo_de(Padre,Abuelo,Abuela),es_mujer(Abuelae);
                        es_mujer(Nieta),es_decendiente_directo_de(Nieta,Padre,Madre),es_decendiente_directo_de(Padre,Abuelo,Abuelae),es_hombre(Abuelae).