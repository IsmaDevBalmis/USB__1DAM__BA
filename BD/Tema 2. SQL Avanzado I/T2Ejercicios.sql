/*
Bases de Datos
Tema 2. Ejercicios de SQL avanzado I
Realiza las siguientes consultas SQL
Nombre: Ismael Ruiz-Huidobro Arroyo
Grupo: 1ºDAM BA

Deberás entregar el resultado en un documento .sql siguiendo el formato indicado en la plantilla.
Procura que en tu código no haya tabuladores, sólo espacios en blanco. Puedes ejecutar:
Menú > Editar > Operciones de limpieza > TAB a espacio antes de entregar los ejercicios.
Se valorará además de que las solución de los ejercicios sea correcta, la correcta indentación,
los comentarios en el código, nombres de columna correctos y la claridad del código en general.
Recuerda que no se puede copiar y pegar de ningún compañero. Ni si quiera un trozo pequeño.
Indica en todas las consultas el número de registros obtenido.
El tratamiento de nulos y consultas vacías será el mismo que hemos hecho en clase.
*/

-- Consulta 1. Indicar si hay alguna lengua que no esté asignada a ningún país. Nota: usa COUNT e IS NULL.




-- Consulta 2. Indicar si hay alguna ciudad que no esté asignada a ningún país.



-- Consulta 3. Indica si hay algún país sin capital.



-- Consulta 4. Nombre, continente, región y población de los países que no tienen capital.



-- Consulta 5. Nombre del país y nombre de la capital de los países que tienen capital.



-- Consulta 6. Nombre de todos los países junto con el nombre de su capital.



-- Consulta 7. Explica el resultado de esta consulta. Elabora un enunciado.

-- Consulta 7. SELECT Ciudad.Nombre AS "Ciudad", Pais.Nombre AS "País"
-- Consulta 7. FROM   Ciudad LEFT JOIN Pais
-- Consulta 7. ON     Ciudad.Id = Pais.Capital





-- Consulta 8. Explica el resultado de esta consulta. Elabora un enunciado.

-- Consulta 8. SELECT Ciudad.Nombre AS "Ciudad", Pais.Nombre AS "País"
-- Consulta 8. FROM   Ciudad LEFT JOIN Pais
-- Consulta 8. ON     Ciudad.CodigoPais = Pais.Codigo





-- Consulta 9. Nombre de las ciudades que no son capital de ningún país.




-- Consulta 10. Nombre de las ciudades y nombre del país al que pertenece de las ciudades que no son capital de ningún país.




-- Consulta 11. Nombre de las lenguas junto con el país en el que se hablan




-- Consulta 12. Nombre de todas las lenguas junto con el país en el que se hablan




-- Consulta 13. Nombre de todos los países junto con las lenguas que se hablan en ese país.




-- Consulta 14. Nombre de las lenguas que no tienen asignado ningún país.




-- Consulta 15. Nombre de los países que no tienen asignada ninguna lengua.




-- Consulta 16. Listado de capitales junto con las lenguas que se hablan. Suponemos que al ser la capital, todas las lenguas que se hablan en un país, se hablan en la capital.




-- Consulta 17. Listado de capitales junto con las lenguas que se hablan. Suponemos que al ser la capital, todas las lenguas que se hablan en un país, se hablan en la capital. Importante: si un país no tiene ninguna lengua asignada saldrá su capital con valor nulo en lengua. Pista: haremos Ciudad JOIN (Pais LEFT JOIN LenguaPais) respetando los paréntesis indicados.





-- Consulta 18. Listado de capitales, las lenguas que se hablan en la capital y el porcentaje asignado a esa lengua para porcentajes mayores que el 50% de hablantes.





-- Consulta 19. Listado de capitales y las lenguas que se hablan en la capital de países con menos de 100.000 habitantes.





-- Consulta 20. Listado de ciudades que pertenecen a países que tienen lenguas oficiales que sólo son habladas por menos de un 10% de la población.





-- Consulta 21. Listado de capitales que pertenecen a países que tienen lenguas oficiales que sólo son habladas por menos de un 10% de la población.





-- Consulta 22. Para detectar posibles errores en la base de datos queremos realizar la siguiente consulta: listado de ciudades y países en los que la población de la ciudad sea mayor que la del país al que pertenece. Analiza el resultado.





-- Consulta 23. Listado de las lenguas habladas en países con más de doscientos millones de habitantes.





-- Consulta 24. Capitales de países en los que el inglés sea lengua oficial.





-- Consulta 25. Capitales de los países en los que el inglés sea lengua oficial y el país tenga más de un millón de habitantes y la capital más de 200 mil habitantes.





-- Consulta 26. Capitales y lenguas de países que tienen una densidad de población mayor que mil habitantes por kilómetro cuadrado ordenados de mayor a menor densidad de población.





-- Consulta 27. Nombre de los países que tienen más de un millón de habitantes o una superficie mayor que 400 mil kilómetros cuadrados. Nota: no se puede usar el OR, se debe usar el UNION.





-- Consulta 28. Como sustituto de la orden FULL JOIN que no está en MySQL, podemos usar UNION. Listado de ciudades y países en el que aparezcan todas las ciudades, aunque no pertenezcan a ningún país y todos los países, aunque no tengan ninguna ciudad.




-- Consulta 29. Convierte la siguiente consulta a MySQL. Como no tenemos la BD no se puede ejecutar.

-- Consulta 29. SELECT Jugadores.Nombre AS "Jugadores", Partidos.Descripcion AS "Partidos"
-- Consulta 29. FROM   Jugadores FULL JOIN Partidos
-- Consulta 29. ON     Jugadores.IdJugador = Partidos.Id




-- Consulta 30. Definimos índice de densidad alfabética como la población de un país o ciudad dividido entre el número de letras del nombre del país o ciudad. El índice de las ciudades está multiplicado por 10. Listado de los 20 países o ciudades con mayor índice de densidad alfabética y su índice. Todo ordenado por su índice. Queremos saber cuándo se trata de un país o de una ciudad.




-- Consulta 31. Listado de los diez países con mayor densidad de población junto con las diez lenguas habladas por más población en su país; todo ordenado alfabéticamente. Queremos saber cuándo se trata de un país y cuándo se trata de una lengua.




-- Consulta 32. ###Poner una nueva consulta###




-- Consulta 33. Listado del nombre de los países que se independizaron el mismo año que Somalia (con código de país SOM)




-- Consulta 34. Listado del nombre de los países que se independizaron el mismo año que Somalia (con código de país SOM). Nota: quita del listado a Somalia, que ya sabemos que se independizó ese año.





-- Consulta 35. Listado de países y su población que tienen una población mayor que la de España y menor que la de Francia; ordenado por población.




-- Consulta 36. Listado de ciudades que tienen una población mayor que la de Irlanda (con código de país IRL)




-- Consulta 37. Listado de capitales que tienen una población mayor que la de Irlanda (con código de país IRL)




-- Consulta 38. Listado de capitales que tienen una población diez veces mayor que la capital de Irlanda (con nombre en la BD: "Ireland")




-- Consulta 39. Países que tienen una población menor que la población de la capital más poblada.




-- Consulta 40. Listado de países en los que la lengua inglesa es oficial y se habla con un porcentaje mayor que el que el inglés tiene en Canadá (con código de país CAN).




-- Consulta 41. Listado de países, su esperanza de vida y su densidad de población cuya esperanza de vida es mayor que la de España (Código de país ESP) y cuya densidad de población es mayor que la de Japón (con código de país JPN); ordenado por esperanza de vida (de mayor a menor) y por densidad de población, también de mayor a menor.




-- Consulta 42. Países que tienen una población mayor que la media.




-- Consulta 43. Países que tienen una población menor que la población media de las ciudades.





-- Consulta 44. Países que tienen mayor población que la suma de las poblaciones de todas las ciudades de Brasil (con código de país BRA)




-- Consulta 45. ###Poner una nueva consulta###





-- Consulta 46. Países que tienen mayor población que la suma de las poblaciones de todas las ciudades de Brasil. No usaremos el código del país, sino su nombre. Nota: hay dos soluciones, usando JOIN y sin usarlo. Pon las dos soluciones.





-- Consulta 47. Países con una superficie mayor que el mayor país de África.





-- Consulta 48. Países que tienen un año de independencia igual que el de los países cuya capital empieza por C.




-- Consulta 49. Países que tienen un año de independencia mayor que el de alguno de los países cuya capital empieza por C. Nota: obtener las dos soluciones (ANY-ALL-IN y MAX-MIN)




-- Consulta 50. Países que tienen un año de independencia igual que el de los países en los que el inglés es lengua oficial.




-- Consulta 51. Países que tienen un año de independencia distinto del de los países del continente Africano.




-- Consulta 52. Países con un año de independencia distinto que el de los países con capitales de más de un millón de habitantes.




-- Consulta 53. Listado de lenguas que no tienen ningún país asignado



-- Consulta 54. Número e países que no tienen ninguna ciudad.



-- Consulta 55. Listado de todas las ciudades, el nombre de su país y las lenguas oficiales en esa ciudad (suponemos que si una lengua es oficial en un país, es oficial en todas sus ciudades). Nota: debido a que es una consulta muy grande, limitar la salida a 30 registros.




-- Consulta 56. Listado de parejas de países que no se han independizado de manera que en el país de la izquierda se ha incrementado el PNB y en el de la derecha se ha decrementado.





-- Consulta 57. Listado de parejas de países de manera que sus capitales tengan una población muy parecida (entendemos por parecida cuando la población de una sea un 5% mayor o menor que la otra)





-- Consulta 58. Países cuya lengua oficial es distinta de la lengua oficial de todos los países del continente africano





-- Consulta 59. Definimos el código de una ciudad como la primera letra de su nombre más la primera letra de su zona. Obtener un listado de ciudades cuyo código es distinto del código de todas las ciudades Europeas




-- Consulta 60. Países con una lengua oficial distinta de las lenguas (oficiales o no) habladas en los países que han incrementado su PNB







