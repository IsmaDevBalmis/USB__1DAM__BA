/*
Bases de Datos
Tema 1. Ejercicios de SQL básico
Realiza las siguientes consultas SQL
Nombre:
Grupo: 1ºDAM

Deberás entregar el resultado en un documento .sql que debe ser correctamente interpretado por MariaDB y siguiendo el formato indicado en la plantilla.
Recuerda poner LIMIT 0 en todas las consultas y LIMIT numero comentado en las consultas que lleven LIMIT
Se valorará además de que las solución de los ejercicios sea correcta, la correcta indentación, los comentarios en el código, nombres de columna correctos y la claridad del código en general.
Procura que en tu código no haya tabuladores, sólo espacios en blanco. Puedes ejecutar:
Menú > Editar > Operciones de limpieza > TAB a espacio antes de entregar los ejercicios.
Recuerda que no se puede copiar y pegar de ningún compañero. Ni si quiera un trozo pequeño.
Indica en todas las consultas el número de registros obtenido.

Análisis de los nulos: todas las consultas llevarán el mismo análisis de nulos realizado en clase.
  Si los nulos afectan a la consulta, se deberá indicar y explicar de qué manera afectan.
  Por ejemplo, en consultas del tipo: "WHERE AnyIndep = 450" no afecta, pero en las del tipo:
  "WHERE AnyIndep <> 450", sí porque podrías esperar que te salgan el resto de registros, pero
   no es así.
   
Ejemplo de consulta:

SELECT 10 AS "Consulta:";
-- 10. Listado de países del continente europeo
 SELECT Nombre AS "Países del continente europeo"
 FROM   Pais
 WHERE  Continente = "Europe"
 -- LIMIT 10
 LIMIT 0;
 -- 46 Registros
*/

-- Consulta 1. Código, nombre y continente de los países

-- Consulta 2. Nombre, población y esperanza de vida de los países

-- Consulta 3. Ciudades y su población

-- Consulta 4. Lenguas que se hablan en el mundo (si una legua se habla en dos países aparecerá dos veces). Explica el número de registros del resultado.

-- Consulta 5. Lenguas que se hablan en el mundo (cada lengua aparecerá sólo una vez). Explica el número de registros del resultado.

-- Consulta 6. Listado de lengua y EsOficial de LenguaPais. Explica el número de registros del resultado.

-- Consulta 7. Listado de los nombres de los países del continente europeo.

-- Consulta 8. Listado de los nombres de los países cuyo año de independencia es 1960.

-- Consulta 9. Listado de los nombres locales de los países cuya forma de gobierno es la República (Republic). Explica el número de registros del resultado.

-- Consulta 10. Listado de los nombres locales de los países cuya forma de gobierno no es la República (Republic). Explica el número de registros del resultado.

-- Consulta 11. Cuántos países hay. Indica tu consulta. ¿Coinciden los valores de esta consulta con las dos últimas?

-- Consulta 12. Listado de lenguas sin repetir que se hablan en algún país por, al menos, un 75% de la población.

-- Consulta 13. Ciudades con una población mayor que medio millón de habitantes.


-- Consulta 14. Países con una esperanza de vida mayor que ochenta años. Mostrar también la esperanza de vida.

-- Consulta 15. Nombre de las ciudades que comienzan con X.

-- Consulta 16. Nombre local y código de dos letras de los países cuyo código de dos letras no termina en A.

-- Consulta 17. Nombre de las lenguas que contienen la letra W (en mayúsculas).

-- Consulta 18. Nombre y código de los países que tienen la Y como letra central de su código (los códigos de país tienen tres letras).

-- Consulta 19. Nombre y población de los países con población mayor de 5 millones de habitantes cuyo año de independencia es 1960.

-- Consulta 20. Nombre de las lenguas que son oficiales o muy habladas. Se considera que una lengua es muy hablada si la habla más del 75% de la población.

-- Consulta 21. Nombre local de los países que han aumentado su producto nacional bruto (PNB) y que o son muy pequeños o tienen muy poca población. Entendemos por pequeño una superficie menor que 100 kilómetros cuadrados y muy poca población si es menor que 100 mil habitantes.

-- Consulta 22. Nombre local de los países que han aumentado su producto nacional bruto (PNB) más de un 10%.

-- Consulta 23. Listado de ciudades y su población ordenado por población.

-- Consulta 24. Listado de ciudades, código del país y población ordenador por el código de los países y dentro de cada país por población.

-- Consulta 25. Listado de leguas que se hablan en el mundo junto con el código del país y el porcentaje de hablantes. Ordenado por países y dentro de cada país ordenado de la más hablada a la menos hablada.

-- Consulta 26. Nombre de los países, continente, región y superficie ordenado por continente, dentro del mismo contienen por región y dentro de la misma región por superficie. Consulta ORDER BY BINARY en el manual de MySQL.

-- Consulta 27. Nombre de los diez países con mayor PNB ordenados por PNB.

-- Consulta 28. Nombre de los diez países con menor PNBAnt.

-- Consulta 29. Nombre de los países y su forma de gobierno de aquellos países cuya forma de gobierno es Republic o Federal Republic. Nota: usar IN.

-- Consulta 30. Nombre de los países y su año de independencia para los países con año de independencia al inicio de cada decenio del sigo XX (1900, 1910, 1920, …, 1990) ordenado por el nombre del país. Nota: usar IN.

-- Consulta 31. Nombre de los países y su año de independencia para los países con año de independencia entre 1900 y 1950 ordenado por año de independencia. Nota: usar BETWEEN.

-- Consulta 32. Nombre de los países y su porcentaje de incremento o decremento del PNB sobre el PNB antiguo.

-- Consulta 33. Nombre de los países y su año de independencia para los países con año de independencia que acabe en 30,31,32,...,39. Nota: usar LIKE.

-- Consulta 34. Nombre de los países y su año de independencia para los países con año de independencia que acabe en 30,31,32,...,39. Nota: usar REGEXP.

-- Consulta 35. Listado de los nombres de los países del continente Oceania que tienen año de independencia.

-- Consulta 36. Nombre de los países del contienente asiático (Asia) que se independizaron antes del año 0.

-- Consulta 37. Nombre de los países de América del Norte que o no se han independizado o no sabemos su año de independencia.

-- Consulta 38. Ciudades cuyo nombre es palíndromo

-- Consulta 39. Listado de países que tienen algún campo con valor NULL. Muestra dos soluciones usando el operador y la función. Para la función, mirar el manual de mysql v5.0 en castellano en 12.1.3 la función ISNULL(expr)

-- Consulta 40. Listado de países y el menor de: la renta per cápita multiplicada por 100 o el PNB por kilómetro cuadrado. El PNB está expresado en millones de dólares.

-- Consulta 41. Listado de países y su índice de crecimiento que será: positivo, nulo o negativo según su incremento del PNB haya sido mayor que un 10%, entre 10% positivo y 10% negativo o menor que un 10% negativo, respectivamente. Nota: ver funciones de control de flujo. El resutlado saldrá ordenado esgún crecimiento positivo, nulo o negativo.

-- Consulta 42. Listado de países y los días que han pasado desde que se independizó ordenado

-- Consulta 43. Igual que la anterior pero debe sacar todos los países y si alguno no tiene año de independencia o éste es negativo, mostrará N/A. Nota: ver funciones de control de flujo.

-- Consulta 44. Nombres de ciudades en los que el primer carácter, el central y el último son el mismo. Para que una ciudad tenga carácter central debe tener un número impar de letras.
