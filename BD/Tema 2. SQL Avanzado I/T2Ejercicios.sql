/*
Bases de Datos
Tema 2. Ejercicios de SQL avanzado I
Realiza las siguientes consultas SQL
Nombre: Ismael Ruiz-Huidobro Arroyo
Grupo: 1�DAM BA

Deber�s entregar el resultado en un documento .sql siguiendo el formato indicado en la plantilla.
Procura que en tu c�digo no haya tabuladores, s�lo espacios en blanco. Puedes ejecutar:
Men� > Editar > Operciones de limpieza > TAB a espacio antes de entregar los ejercicios.
Se valorar� adem�s de que las soluci�n de los ejercicios sea correcta, la correcta indentaci�n,
los comentarios en el c�digo, nombres de columna correctos y la claridad del c�digo en general.
Recuerda que no se puede copiar y pegar de ning�n compa�ero. Ni si quiera un trozo peque�o.
Indica en todas las consultas el n�mero de registros obtenido.
El tratamiento de nulos y consultas vac�as ser� el mismo que hemos hecho en clase.
*/

-- Consulta 1. Indicar si hay alguna lengua que no est� asignada a ning�n pa�s. Nota: usa COUNT e IS NULL.




-- Consulta 2. Indicar si hay alguna ciudad que no est� asignada a ning�n pa�s.



-- Consulta 3. Indica si hay alg�n pa�s sin capital.



-- Consulta 4. Nombre, continente, regi�n y poblaci�n de los pa�ses que no tienen capital.



-- Consulta 5. Nombre del pa�s y nombre de la capital de los pa�ses que tienen capital.



-- Consulta 6. Nombre de todos los pa�ses junto con el nombre de su capital.



-- Consulta 7. Explica el resultado de esta consulta. Elabora un enunciado.

-- Consulta 7. SELECT Ciudad.Nombre AS "Ciudad", Pais.Nombre AS "Pa�s"
-- Consulta 7. FROM   Ciudad LEFT JOIN Pais
-- Consulta 7. ON     Ciudad.Id = Pais.Capital





-- Consulta 8. Explica el resultado de esta consulta. Elabora un enunciado.

-- Consulta 8. SELECT Ciudad.Nombre AS "Ciudad", Pais.Nombre AS "Pa�s"
-- Consulta 8. FROM   Ciudad LEFT JOIN Pais
-- Consulta 8. ON     Ciudad.CodigoPais = Pais.Codigo





-- Consulta 9. Nombre de las ciudades que no son capital de ning�n pa�s.




-- Consulta 10. Nombre de las ciudades y nombre del pa�s al que pertenece de las ciudades que no son capital de ning�n pa�s.




-- Consulta 11. Nombre de las lenguas junto con el pa�s en el que se hablan




-- Consulta 12. Nombre de todas las lenguas junto con el pa�s en el que se hablan




-- Consulta 13. Nombre de todos los pa�ses junto con las lenguas que se hablan en ese pa�s.




-- Consulta 14. Nombre de las lenguas que no tienen asignado ning�n pa�s.




-- Consulta 15. Nombre de los pa�ses que no tienen asignada ninguna lengua.




-- Consulta 16. Listado de capitales junto con las lenguas que se hablan. Suponemos que al ser la capital, todas las lenguas que se hablan en un pa�s, se hablan en la capital.




-- Consulta 17. Listado de capitales junto con las lenguas que se hablan. Suponemos que al ser la capital, todas las lenguas que se hablan en un pa�s, se hablan en la capital. Importante: si un pa�s no tiene ninguna lengua asignada saldr� su capital con valor nulo en lengua. Pista: haremos Ciudad JOIN (Pais LEFT JOIN LenguaPais) respetando los par�ntesis indicados.





-- Consulta 18. Listado de capitales, las lenguas que se hablan en la capital y el porcentaje asignado a esa lengua para porcentajes mayores que el 50% de hablantes.





-- Consulta 19. Listado de capitales y las lenguas que se hablan en la capital de pa�ses con menos de 100.000 habitantes.





-- Consulta 20. Listado de ciudades que pertenecen a pa�ses que tienen lenguas oficiales que s�lo son habladas por menos de un 10% de la poblaci�n.





-- Consulta 21. Listado de capitales que pertenecen a pa�ses que tienen lenguas oficiales que s�lo son habladas por menos de un 10% de la poblaci�n.





-- Consulta 22. Para detectar posibles errores en la base de datos queremos realizar la siguiente consulta: listado de ciudades y pa�ses en los que la poblaci�n de la ciudad sea mayor que la del pa�s al que pertenece. Analiza el resultado.





-- Consulta 23. Listado de las lenguas habladas en pa�ses con m�s de doscientos millones de habitantes.





-- Consulta 24. Capitales de pa�ses en los que el ingl�s sea lengua oficial.





-- Consulta 25. Capitales de los pa�ses en los que el ingl�s sea lengua oficial y el pa�s tenga m�s de un mill�n de habitantes y la capital m�s de 200 mil habitantes.





-- Consulta 26. Capitales y lenguas de pa�ses que tienen una densidad de poblaci�n mayor que mil habitantes por kil�metro cuadrado ordenados de mayor a menor densidad de poblaci�n.





-- Consulta 27. Nombre de los pa�ses que tienen m�s de un mill�n de habitantes o una superficie mayor que 400 mil kil�metros cuadrados. Nota: no se puede usar el OR, se debe usar el UNION.





-- Consulta 28. Como sustituto de la orden FULL JOIN que no est� en MySQL, podemos usar UNION. Listado de ciudades y pa�ses en el que aparezcan todas las ciudades, aunque no pertenezcan a ning�n pa�s y todos los pa�ses, aunque no tengan ninguna ciudad.




-- Consulta 29. Convierte la siguiente consulta a MySQL. Como no tenemos la BD no se puede ejecutar.

-- Consulta 29. SELECT Jugadores.Nombre AS "Jugadores", Partidos.Descripcion AS "Partidos"
-- Consulta 29. FROM   Jugadores FULL JOIN Partidos
-- Consulta 29. ON     Jugadores.IdJugador = Partidos.Id




-- Consulta 30. Definimos �ndice de densidad alfab�tica como la poblaci�n de un pa�s o ciudad dividido entre el n�mero de letras del nombre del pa�s o ciudad. El �ndice de las ciudades est� multiplicado por 10. Listado de los 20 pa�ses o ciudades con mayor �ndice de densidad alfab�tica y su �ndice. Todo ordenado por su �ndice. Queremos saber cu�ndo se trata de un pa�s o de una ciudad.




-- Consulta 31. Listado de los diez pa�ses con mayor densidad de poblaci�n junto con las diez lenguas habladas por m�s poblaci�n en su pa�s; todo ordenado alfab�ticamente. Queremos saber cu�ndo se trata de un pa�s y cu�ndo se trata de una lengua.




-- Consulta 32. ###Poner una nueva consulta###




-- Consulta 33. Listado del nombre de los pa�ses que se independizaron el mismo a�o que Somalia (con c�digo de pa�s SOM)




-- Consulta 34. Listado del nombre de los pa�ses que se independizaron el mismo a�o que Somalia (con c�digo de pa�s SOM). Nota: quita del listado a Somalia, que ya sabemos que se independiz� ese a�o.





-- Consulta 35. Listado de pa�ses y su poblaci�n que tienen una poblaci�n mayor que la de Espa�a y menor que la de Francia; ordenado por poblaci�n.




-- Consulta 36. Listado de ciudades que tienen una poblaci�n mayor que la de Irlanda (con c�digo de pa�s IRL)




-- Consulta 37. Listado de capitales que tienen una poblaci�n mayor que la de Irlanda (con c�digo de pa�s IRL)




-- Consulta 38. Listado de capitales que tienen una poblaci�n diez veces mayor que la capital de Irlanda (con nombre en la BD: "Ireland")




-- Consulta 39. Pa�ses que tienen una poblaci�n menor que la poblaci�n de la capital m�s poblada.




-- Consulta 40. Listado de pa�ses en los que la lengua inglesa es oficial y se habla con un porcentaje mayor que el que el ingl�s tiene en Canad� (con c�digo de pa�s CAN).




-- Consulta 41. Listado de pa�ses, su esperanza de vida y su densidad de poblaci�n cuya esperanza de vida es mayor que la de Espa�a (C�digo de pa�s ESP) y cuya densidad de poblaci�n es mayor que la de Jap�n (con c�digo de pa�s JPN); ordenado por esperanza de vida (de mayor a menor) y por densidad de poblaci�n, tambi�n de mayor a menor.




-- Consulta 42. Pa�ses que tienen una poblaci�n mayor que la media.




-- Consulta 43. Pa�ses que tienen una poblaci�n menor que la poblaci�n media de las ciudades.





-- Consulta 44. Pa�ses que tienen mayor poblaci�n que la suma de las poblaciones de todas las ciudades de Brasil (con c�digo de pa�s BRA)




-- Consulta 45. ###Poner una nueva consulta###





-- Consulta 46. Pa�ses que tienen mayor poblaci�n que la suma de las poblaciones de todas las ciudades de Brasil. No usaremos el c�digo del pa�s, sino su nombre. Nota: hay dos soluciones, usando JOIN y sin usarlo. Pon las dos soluciones.





-- Consulta 47. Pa�ses con una superficie mayor que el mayor pa�s de �frica.





-- Consulta 48. Pa�ses que tienen un a�o de independencia igual que el de los pa�ses cuya capital empieza por C.




-- Consulta 49. Pa�ses que tienen un a�o de independencia mayor que el de alguno de los pa�ses cuya capital empieza por C. Nota: obtener las dos soluciones (ANY-ALL-IN y MAX-MIN)




-- Consulta 50. Pa�ses que tienen un a�o de independencia igual que el de los pa�ses en los que el ingl�s es lengua oficial.




-- Consulta 51. Pa�ses que tienen un a�o de independencia distinto del de los pa�ses del continente Africano.




-- Consulta 52. Pa�ses con un a�o de independencia distinto que el de los pa�ses con capitales de m�s de un mill�n de habitantes.




-- Consulta 53. Listado de lenguas que no tienen ning�n pa�s asignado



-- Consulta 54. N�mero e pa�ses que no tienen ninguna ciudad.



-- Consulta 55. Listado de todas las ciudades, el nombre de su pa�s y las lenguas oficiales en esa ciudad (suponemos que si una lengua es oficial en un pa�s, es oficial en todas sus ciudades). Nota: debido a que es una consulta muy grande, limitar la salida a 30 registros.




-- Consulta 56. Listado de parejas de pa�ses que no se han independizado de manera que en el pa�s de la izquierda se ha incrementado el PNB y en el de la derecha se ha decrementado.





-- Consulta 57. Listado de parejas de pa�ses de manera que sus capitales tengan una poblaci�n muy parecida (entendemos por parecida cuando la poblaci�n de una sea un 5% mayor o menor que la otra)





-- Consulta 58. Pa�ses cuya lengua oficial es distinta de la lengua oficial de todos los pa�ses del continente africano





-- Consulta 59. Definimos el c�digo de una ciudad como la primera letra de su nombre m�s la primera letra de su zona. Obtener un listado de ciudades cuyo c�digo es distinto del c�digo de todas las ciudades Europeas




-- Consulta 60. Pa�ses con una lengua oficial distinta de las lenguas (oficiales o no) habladas en los pa�ses que han incrementado su PNB







