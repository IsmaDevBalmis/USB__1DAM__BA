/*
Bases de Datos
Tema 1. Ejercicios de SQL b�sico
Realiza las siguientes consultas SQL
Nombre:
Grupo: 1�DAM

Deber�s entregar el resultado en un documento .sql que debe ser correctamente interpretado por MariaDB y siguiendo el formato indicado en la plantilla.
Recuerda poner LIMIT 0 en todas las consultas y LIMIT numero comentado en las consultas que lleven LIMIT
Se valorar� adem�s de que las soluci�n de los ejercicios sea correcta, la correcta indentaci�n, los comentarios en el c�digo, nombres de columna correctos y la claridad del c�digo en general.
Procura que en tu c�digo no haya tabuladores, s�lo espacios en blanco. Puedes ejecutar:
Men� > Editar > Operciones de limpieza > TAB a espacio antes de entregar los ejercicios.
Recuerda que no se puede copiar y pegar de ning�n compa�ero. Ni si quiera un trozo peque�o.
Indica en todas las consultas el n�mero de registros obtenido.

An�lisis de los nulos: todas las consultas llevar�n el mismo an�lisis de nulos realizado en clase.
  Si los nulos afectan a la consulta, se deber� indicar y explicar de qu� manera afectan.
  Por ejemplo, en consultas del tipo: "WHERE AnyIndep = 450" no afecta, pero en las del tipo:
  "WHERE AnyIndep <> 450", s� porque podr�as esperar que te salgan el resto de registros, pero
   no es as�.
   
Ejemplo de consulta:

SELECT 10 AS "Consulta:";
-- 10. Listado de pa�ses del continente europeo
 SELECT Nombre AS "Pa�ses del continente europeo"
 FROM   Pais
 WHERE  Continente = "Europe"
 -- LIMIT 10
 LIMIT 0;
 -- 46 Registros
*/

-- Consulta 1. C�digo, nombre y continente de los pa�ses

-- Consulta 2. Nombre, poblaci�n y esperanza de vida de los pa�ses

-- Consulta 3. Ciudades y su poblaci�n

-- Consulta 4. Lenguas que se hablan en el mundo (si una legua se habla en dos pa�ses aparecer� dos veces). Explica el n�mero de registros del resultado.

-- Consulta 5. Lenguas que se hablan en el mundo (cada lengua aparecer� s�lo una vez). Explica el n�mero de registros del resultado.

-- Consulta 6. Listado de lengua y EsOficial de LenguaPais. Explica el n�mero de registros del resultado.

-- Consulta 7. Listado de los nombres de los pa�ses del continente europeo.

-- Consulta 8. Listado de los nombres de los pa�ses cuyo a�o de independencia es 1960.

-- Consulta 9. Listado de los nombres locales de los pa�ses cuya forma de gobierno es la Rep�blica (Republic). Explica el n�mero de registros del resultado.

-- Consulta 10. Listado de los nombres locales de los pa�ses cuya forma de gobierno no es la Rep�blica (Republic). Explica el n�mero de registros del resultado.

-- Consulta 11. Cu�ntos pa�ses hay. Indica tu consulta. �Coinciden los valores de esta consulta con las dos �ltimas?

-- Consulta 12. Listado de lenguas sin repetir que se hablan en alg�n pa�s por, al menos, un 75% de la poblaci�n.

-- Consulta 13. Ciudades con una poblaci�n mayor que medio mill�n de habitantes.


-- Consulta 14. Pa�ses con una esperanza de vida mayor que ochenta a�os. Mostrar tambi�n la esperanza de vida.

-- Consulta 15. Nombre de las ciudades que comienzan con X.

-- Consulta 16. Nombre local y c�digo de dos letras de los pa�ses cuyo c�digo de dos letras no termina en A.

-- Consulta 17. Nombre de las lenguas que contienen la letra W (en may�sculas).

-- Consulta 18. Nombre y c�digo de los pa�ses que tienen la Y como letra central de su c�digo (los c�digos de pa�s tienen tres letras).

-- Consulta 19. Nombre y poblaci�n de los pa�ses con poblaci�n mayor de 5 millones de habitantes cuyo a�o de independencia es 1960.

-- Consulta 20. Nombre de las lenguas que son oficiales o muy habladas. Se considera que una lengua es muy hablada si la habla m�s del 75% de la poblaci�n.

-- Consulta 21. Nombre local de los pa�ses que han aumentado su producto nacional bruto (PNB) y que o son muy peque�os o tienen muy poca poblaci�n. Entendemos por peque�o una superficie menor que 100 kil�metros cuadrados y muy poca poblaci�n si es menor que 100 mil habitantes.

-- Consulta 22. Nombre local de los pa�ses que han aumentado su producto nacional bruto (PNB) m�s de un 10%.

-- Consulta 23. Listado de ciudades y su poblaci�n ordenado por poblaci�n.

-- Consulta 24. Listado de ciudades, c�digo del pa�s y poblaci�n ordenador por el c�digo de los pa�ses y dentro de cada pa�s por poblaci�n.

-- Consulta 25. Listado de leguas que se hablan en el mundo junto con el c�digo del pa�s y el porcentaje de hablantes. Ordenado por pa�ses y dentro de cada pa�s ordenado de la m�s hablada a la menos hablada.

-- Consulta 26. Nombre de los pa�ses, continente, regi�n y superficie ordenado por continente, dentro del mismo contienen por regi�n y dentro de la misma regi�n por superficie. Consulta ORDER BY BINARY en el manual de MySQL.

-- Consulta 27. Nombre de los diez pa�ses con mayor PNB ordenados por PNB.

-- Consulta 28. Nombre de los diez pa�ses con menor PNBAnt.

-- Consulta 29. Nombre de los pa�ses y su forma de gobierno de aquellos pa�ses cuya forma de gobierno es Republic o Federal Republic. Nota: usar IN.

-- Consulta 30. Nombre de los pa�ses y su a�o de independencia para los pa�ses con a�o de independencia al inicio de cada decenio del sigo XX (1900, 1910, 1920, �, 1990) ordenado por el nombre del pa�s. Nota: usar IN.

-- Consulta 31. Nombre de los pa�ses y su a�o de independencia para los pa�ses con a�o de independencia entre 1900 y 1950 ordenado por a�o de independencia. Nota: usar BETWEEN.

-- Consulta 32. Nombre de los pa�ses y su porcentaje de incremento o decremento del PNB sobre el PNB antiguo.

-- Consulta 33. Nombre de los pa�ses y su a�o de independencia para los pa�ses con a�o de independencia que acabe en 30,31,32,...,39. Nota: usar LIKE.

-- Consulta 34. Nombre de los pa�ses y su a�o de independencia para los pa�ses con a�o de independencia que acabe en 30,31,32,...,39. Nota: usar REGEXP.

-- Consulta 35. Listado de los nombres de los pa�ses del continente Oceania que tienen a�o de independencia.

-- Consulta 36. Nombre de los pa�ses del contienente asi�tico (Asia) que se independizaron antes del a�o 0.

-- Consulta 37. Nombre de los pa�ses de Am�rica del Norte que o no se han independizado o no sabemos su a�o de independencia.

-- Consulta 38. Ciudades cuyo nombre es pal�ndromo

-- Consulta 39. Listado de pa�ses que tienen alg�n campo con valor NULL. Muestra dos soluciones usando el operador y la funci�n. Para la funci�n, mirar el manual de mysql v5.0 en castellano en 12.1.3 la funci�n ISNULL(expr)

-- Consulta 40. Listado de pa�ses y el menor de: la renta per c�pita multiplicada por 100 o el PNB por kil�metro cuadrado. El PNB est� expresado en millones de d�lares.

-- Consulta 41. Listado de pa�ses y su �ndice de crecimiento que ser�: positivo, nulo o negativo seg�n su incremento del PNB haya sido mayor que un 10%, entre 10% positivo y 10% negativo o menor que un 10% negativo, respectivamente. Nota: ver funciones de control de flujo. El resutlado saldr� ordenado esg�n crecimiento positivo, nulo o negativo.

-- Consulta 42. Listado de pa�ses y los d�as que han pasado desde que se independiz� ordenado

-- Consulta 43. Igual que la anterior pero debe sacar todos los pa�ses y si alguno no tiene a�o de independencia o �ste es negativo, mostrar� N/A. Nota: ver funciones de control de flujo.

-- Consulta 44. Nombres de ciudades en los que el primer car�cter, el central y el �ltimo son el mismo. Para que una ciudad tenga car�cter central debe tener un n�mero impar de letras.
