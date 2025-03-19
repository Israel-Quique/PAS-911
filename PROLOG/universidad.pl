% estudiante
daniel_perez.
jessy_james.
gael_agreda.
milton_gomez.
selena_gomez.

% materias
desarrollo_desoftware_I.
bases_de_datos_II.
ingenieria_de_software.

% docentes
mario_gomez.
juana_peralta.
andrea_jemio.
julia_apaza.
gabriel_andrade.

% 1. Quíen es un estudiante: esEstudiante(X)
es_estudiante(daniel_perez).
es_estudiante(jessy_james).
es_estudiante(gael_agreda).
es_estudiante(milton_gomez).
es_estudiante(selena_gomez).

% 2. Quién es un docente: esDocente(X)
es_docente(mario_gomez).
es_docente(juana_peralta).
es_docente(andrea_jemio).
es_docente(julia_apaza).
es_docente(gabriel_andrade).

% 3. Qué materias hay: esMateria(X).
es_materia(desarrollo_desoftware_I).
es_materia(bases_de_datos_II).
es_materia(ingenieria_de_software).

% 4. Qué docente imparte que materia: imparte(Docente, Materia)
imparte(mario_gomez,desarrollo_desoftware_I).
imparte(mario_gomez,ingenieria_de_software).
imparte(juana_peralta,desarrollo_desoftware_I).
imparte(juana_peralta,bases_de_datos_II).
imparte(andrea_jemio,desarrollo_desoftware_I).
imparte(andrea_jemio,bases_de_datos_II).
imparte(andrea_jemio,ingenieria_de_software).
imparte(julia_apaza,bases_de_datos_II).
imparte(gabriel_andrade,desarrollo_desoftware_I).
imparte(gabriel_andrade,bases_de_datos_II).
imparte(gabriel_andrade,ingenieria_de_software).

% 5. Qué docente ensenia a que estudiantes: ensenia(Docente, Estudiante)
tiene_materia_de(daniel_perez,desarrollo_desoftware_I).
tiene_materia_de(daniel_perez,bases_de_datos_II).
tiene_materia_de(jessy_james,desarrollo_desoftware_I).
tiene_materia_de(jessy_james,bases_de_datos_II).
tiene_materia_de(jessy_james,ingenieria_de_software).
tiene_materia_de(gael_agreda,desarrollo_desoftware_I).
tiene_materia_de(gael_agreda,bases_de_datos_II).
tiene_materia_de(milton_gomez,desarrollo_desoftware_I).
tiene_materia_de(milton_gomez,ingenieria_de_software).
tiene_materia_de(selena_gomez,desarrollo_desoftware_I).
tiene_materia_de(selena_gomez,bases_de_datos_II).
tiene_materia_de(selena_gomez,ingenieria_de_software).

ensenia(Docente,Estudiante):- es_docente(Docente),es_estudiante(Estudiante),imparte(Docente,MateriaComun),tiene_materia_de(Estudiante,MateriaComun).

% 6. Quien es colega de quien. Solo son colegas dos docentes entre sí: colega(Docente1, Docente2).
colega(Docente1,Docente2):- es_docente(Docente1),es_docente(Docente2),imparte(Docente1,MateriaC),imparte(Docente2,MateriaC).

% 7. Qué estudiante es companiero de quien, solo son companieros si ambos son estudiantes y ambos cursan la misma materia: companiero(Estudiante1, Estudiante2)
companiero(Estudiante1, Estudiante2):- es_estudiante(Estudiante1),es_estudiante(Estudiante2),tiene_materia_de(Estudiante1,MateriaComun),tiene_materia_de(Estudiante2,MateriaComun),Estudiante1\=Estudiante2.
