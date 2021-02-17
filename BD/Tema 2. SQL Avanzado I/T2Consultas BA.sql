/*
Bases de Datos
Tema 2. SQL avanzado I

Grupo: 1�DAM

Deber�s entregar el resultado en un documento .sql que debe ser correctamente interpretado por MariaDB.
Recuerda poner LIMIT 0 en todas las consultas y LIMIT numero comentado en las consultas que lleven LIMIT
Recuerda poner el n�mero de registros de cada consulta
Se valorar� adem�s de que las soluci�n de los ejercicios sea correcta, la correcta indentaci�n, los comentarios en el c�digo, nombres de columna correctos y la claridad del c�digo en general.
Procura que en tu c�digo no haya tabuladores, s�lo espacios en blanco. Puedes ejecutar:
Men� > Editar > Operciones de limpieza > TAB a espacio antes de entregar los ejercicios.
Recuerda que no se puede copiar y pegar de ning�n compa�ero. Ni si quiera un trozo peque�o.
Indica en todas las consultas el n�mero de registros obtenido.
Recuerda que no se puede copiar y pegar de ning�n compa�ero. Ni si quiera un trozo peque�o.
El tratamiento de nulos y consultas vac�as ser� el mismo que hemos hecho en clase.
En este tema el tratamiento de nulos s�lo es obligatorio cuando afectan negativamente. Si no hay nulos o no afectan negativamente no hace falta decir nada. Todo ello con las excepciones que comentaremos en clase ya que en alg�n tipo de consulta ser� obligatorio hacer an�lisis de nulos.
   
Ejemplo de consulta:

SELECT 10 AS "Consulta:";
-- 10. Listado de pa�ses del continente europeo
 SELECT Nombre AS "Pa�ses del continente europeo"
 FROM   Pais
 WHERE  Continente = "Europe"
 LIMIT 0;
 -- 46 Registros
*/

-- -----------------------------------------------------------------
-- Tema 2. SQL avanzado I. Consultas de clase
-- -----------------------------------------------------------------


