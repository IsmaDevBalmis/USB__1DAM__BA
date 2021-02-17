/*
Bases de Datos
Tema 2. SQL avanzado I

Grupo: 1ºDAM

Deberás entregar el resultado en un documento .sql que debe ser correctamente interpretado por MariaDB.
Recuerda poner LIMIT 0 en todas las consultas y LIMIT numero comentado en las consultas que lleven LIMIT
Recuerda poner el número de registros de cada consulta
Se valorará además de que las solución de los ejercicios sea correcta, la correcta indentación, los comentarios en el código, nombres de columna correctos y la claridad del código en general.
Procura que en tu código no haya tabuladores, sólo espacios en blanco. Puedes ejecutar:
Menú > Editar > Operciones de limpieza > TAB a espacio antes de entregar los ejercicios.
Recuerda que no se puede copiar y pegar de ningún compañero. Ni si quiera un trozo pequeño.
Indica en todas las consultas el número de registros obtenido.
Recuerda que no se puede copiar y pegar de ningún compañero. Ni si quiera un trozo pequeño.
El tratamiento de nulos y consultas vacías será el mismo que hemos hecho en clase.
En este tema el tratamiento de nulos sólo es obligatorio cuando afectan negativamente. Si no hay nulos o no afectan negativamente no hace falta decir nada. Todo ello con las excepciones que comentaremos en clase ya que en algún tipo de consulta será obligatorio hacer análisis de nulos.
   
Ejemplo de consulta:

SELECT 10 AS "Consulta:";
-- 10. Listado de países del continente europeo
 SELECT Nombre AS "Países del continente europeo"
 FROM   Pais
 WHERE  Continente = "Europe"
 LIMIT 0;
 -- 46 Registros
*/

-- -----------------------------------------------------------------
-- Tema 2. SQL avanzado I. Consultas de clase
-- -----------------------------------------------------------------

-- 1. Realiza el producto de las tablas Pais y Ciudad y selecciona los registros correctos. ¿Es el número de registros que sale correcto? Justifica tu respuesta

-- 2. ¿Recuerdas que entre las tablas Ciudad y Pais hay dos relaciones? Filtra el producto utilizando la relación capital. ¿Es el número de registros que sale correcto? Justifica tu respuesta.

-- 4. Listado de lenguas oficiales habladas en países con una densidad de población mayor que 1000 habitantes por kilómetro cuadrado

-- 5. Listado de países que tienen alguna ciudad con más de 8 millones de habitantes

    SELECT DISTINCT Pais.Nombre AS 'País'
    FROM Pais JOIN Ciudad
    ON Pais.Codigo = Ciudad.CodigoPais
    WHERE Ciudad.Poblacion > 8000000;
    
    --Análisis de nulos
    --
    
-- 6. Listado de capitales de los países que han aumentado su PNB

    SELECT Pais.Nombre AS 'Pais', Ciudad.Nombre AS 'Ciudad'
    FROM PAIS JOIN Ciudad
    ON Pais.Capital = Ciudad.ID
    WHERE Pais.PNB > Pais.PNBAnt;
    
-- 7. Nombre de las capitales de los diez países más poblados

    SELECT Ciudad.Nombre AS 'Capitales'
    FROM Ciudad JOIN Pais
    ON Ciudad.Id = Pais.Capital
    ORDER BY Pais.Poblacion DESC
    LIMIT 10;

-- -----------------------------------------------------------------
-- JOIN de más de dos tablas
-- -----------------------------------------------------------------

-- 8. Nombre de las Ciudades que pertenecen a países en las que el inglés es lengua oficial hablada por más del 50% de la población

    
    SELECT Ciudad.Nombre AS 'Ciudad'
    FROM Ciudad JOIN Pais JOIN LenguaPais
    ON Ciudad.CodigoPais = Pais.Codigo AND Pais.Codigo = LenguaPais.CodigoPais
    WHERE Lengua = 'English' AND EsOficial = 'T' AND Porcentaje > 50;
    
    
    

-- 9. Lenguas oficiales que se hablan en los países que han aumentado el PNB y cuyas capitales tienen más de 5 millones de habitantes

    
    SELECT DISTINCT LenguaPais.Lengua AS 'Lengua oficial'
    FROM LenguaPais JOIN Pais JOIN Ciudad
    ON LenguaPais.CodigoPais = Pais.Codigo AND Pais.Capital = Ciudad.Id
    WHERE EsOficial = 'T' AND Pais.PNB > Pais.PNBAnt AND Ciudad.Poblacion > 5000000;

          
            
-- 10. Lenguas oficiales que se hablan en los países cuya capital tiene, como mínimo un décimo de la población del país al que pertenece

    SELECT DISTINCT Lengua AS 'Lenguas'
    FROM LenguaPais JOIN Pais JOIN Ciudad
    ON LenguaPais.CodigoPais = Pais.Codigo AND Pais.Capital = Ciudad.Id
    WHERE EsOficial = 'T' AND Ciudad.Poblacion >= Pais.Poblacion/10;

    
-- 11. Capitales de países del continente sudamericano (South America) cuya lengua oficial es el inglés

    SELECT Ciudad.Nombre AS 'Capital'
    FROM Ciudad JOIN Pais JOIN LenguaPais
    ON Ciudad.Id = Pais.Capital AND Pais.Codigo = LenguaPais.CodigoPais
    WHERE Lengua = 'English' AND EsOficial = 'T' AND Continente = 'South America';


-- -----------------------------------------------------------------
-- Base de datos de Neptuno
-- -----------------------------------------------------------------

-- 16. Nombre de las empresas proveedoras de alguno de los productos de la categoría condiments de pedidos servidos por empleados de la región septentrional (southern)
SELECT DISTINCT Proveedores.NombreEmpresa AS 'Proveedor'
FROM   Proveedores JOIN Productos JOIN DetallesPedido JOIN
       Pedidos JOIN Empleados JOIN TerritoriosEmpleados JOIN
       Territorios JOIN Region JOIN Categorias
ON     Proveedores.IdProveedor = Productos.IdProveedor  AND
       Productos.IdProducto = DetallesPedido.IdProducto AND
       DetallesPedido.IdPedido = Pedidos.IdPedido       AND
       Pedidos.IdEmpleado = Empleados.IdEmpleado        AND
       Empleados.IdEmpleado = TerritoriosEmpleados.IdEmpleado       AND
       TerritoriosEmpleados.IdTerritorio = Territorios.IdTerritorio AND
       Territorios.IdRegion = Region.IdRegion AND
       Productos.Idcategoria = Categorias.IdCategoria
WHERE  DescripcionRegion= 'Southern' AND
       NombreCategoria='Condiments';
       

       
-- -----------------------------------------------------------------
-- LEFT JOIN
-- -----------------------------------------------------------------

-- 18. ¿Cuantos países hay?

    SELECT COUNT(*) AS 'Número de paises'
    FROM Pais;


-- 19. Indica cuántos países hay que tienen capital. Nota: usa sólo la función COUNT(expr) sin WHERE

    SELECT COUNT(Capital) AS 'Número de paises con capital'
    FROM Pais;

-- 20. Indica cuántos países hay que no tienen capital. Nota: usa la función COUNT sin WHERE

    
    SELECT COUNT(*) - COUNT(Capital) AS 'Número de paises sin capital'
    FROM Pais;

-- 21. Indica cuántos países hay que no tienen capital. Nota: usa la función COUNT, e IS NULL en el WHERE

    SELECT COUNT(*) AS 'Número de paises sin capital'
    FROM Pais
    WHERE Capital IS NULL;
    
    
-- 22. Listado de países que no tienen capital
     
    SELECT Nombre AS 'Paises sin capital'
    FROM Pais
    WHERE Capital IS NULL;
    
-- 23. Listado de todos los países junto con el nombre de su capital

    SELECT Pais.Nombre AS 'Pais', Ciudad.Nombre AS 'Capital'
    FROM Pais LEFT JOIN Ciudad
    ON Pais.Capital = Ciudad.Id;

-- 24. Listado de todas las ciudades junto con el nombre del país del que son capital
    
    SELECT Ciudad.Nombre AS 'Ciudad', Pais.Nombre AS 'Pais'
    FROM Ciudad LEFT JOIN Pais
    ON Ciudad.Id = Pais.Capital;

-- 25. Países que no tienen ninguna lengua

    SELECT Nombre
    FROM Pais LEFT JOIN LenguaPais
    ON Pais.Codigo = LenguaPais.CodigoPais
    WHERE LenguaPais.Lengua IS NULL;
    
-- 26. Número de países que no tienen ninguna lengua

    SELECT COUNT(*) AS 'Número de paises sin lengua asignada'
    FROM Pais LEFT JOIN LenguaPais
    ON Pais.Codigo = LenguaPais.CodigoPais
    WHERE LenguaPais.Lengua IS NULL;


-- 27. Número de países que tienen alguna lengua

    SELECT COUNT(DISTINCT Codigo) AS 'Número de paises con almenos una lengua asignada'
    FROM Pais JOIN LenguaPais
    ON Pais.Codigo = LenguaPais.CodigoPais;
    
-- 28. Número de ciudades que no pertenecen a ningún país

    SELECT COUNT(*) AS 'Numero de ciudades sin pais asignado'
    FROM Ciudad
    WHERE CodigoPais IS NULL;
    
-- 29. Listado de países que no tienen ninguna ciudad

    SELECT Pais.Nombre AS 'Pais'
    FROM Pais LEFT JOIN Ciudad
    ON Pais.Codigo = Ciudad.CodigoPais
    WHERE Ciudad.Id IS NULL;

-- 30. Número de países que no tienen ninguna ciudad

    SELECT COUNT(*) AS 'Numero de paises que no tienen ninguna ciudad asignada'
    FROM Pais LEFT JOIN Ciudad
    ON Pais.Codigo = Ciudad.CodigoPais
    WHERE Ciudad.Id IS NULL;

-- 31. Ciudades que no son capital
    
    SELECT Ciudad.Nombre AS 'Ciudades que no son capital'
    FROM Ciudad LEFT JOIN Pais
    ON Ciudad.Id = Pais.Capital
    WHERE Pais.Codigo IS NULL;
    
-- 32. Número de ciudades que no son capital

    SELECT COUNT(*) AS 'Numero de ciudades que no son capital'
    FROM Ciudad LEFT JOIN Pais
    ON Ciudad.Id = Pais.Capital
    WHERE Pais.Codigo IS NULL;


-- 33. Ciudades españolas (con código ESP) que no son capital

    SELECT Ciudad.Nombre AS 'Ciudades que no son capital'
    FROM Ciudad LEFT JOIN Pais
    ON Ciudad.Id = Pais.Capital
    WHERE Pais.Codigo IS NULL AND Ciudad.CodigoPais = 'ESP';
    

-- 34. Número de países que no tienen capital

      
    SELECT COUNT(*) - COUNT(Capital) AS 'Número de paises sin capital'
    FROM Pais;
    
-- 35. Capitales que no son capital de ningún país

    --Esta consulta no se puede hacer porque no tenemos una tabla específica de capitales
    
-- 36. Capitales que no son ciudad de ningún país

    SELECT Ciudad.Nombre AS 'Ciudad'
    FROM Pais JOIN Ciudad
    ON Pais.Capital = Ciudad.Id
    WHERE Ciudad.CodigoPais IS NULL;


-- 37. Capitales que no son ciudad del país del que son capital

    SELECT Ciudad.Nombre AS 'Ciudad'
    FROM Pais JOIN Ciudad
    ON Pais.Capital = Ciudad.Id
    WHERE Ciudad.CodigoPais != Pais.Codigo;
    

-- -----------------------------------------------------------------
-- UNION
-- -----------------------------------------------------------------


-- 40. Nombre de las ciudades cuyo nombre comienza por 'Vale' o que tienen entre 730 mil y 740 mil habitantes. No usar OR, usar UNION

    SELECT Id, Nombre FROM Ciudad WHERE Nombre LIKE 'Vale%'
    UNION DISTINCT    
    SELECT Id, Nombre FROM Ciudad WHERE Poblacion BETWEEN 730000 AND 740000;
    
-- 41. Listado de países, ciudades y lenguas

    SELECT Nombre AS 'Paises, ciudades y lenguas'
    FROM Pais
    UNION ALL
    SELECT Nombre
    FROM Ciudad
    UNION ALL
    SELECT DISTINCT Lengua
    FROM LenguaPais
    Limit 5;
        
    SELECT (SELECT COUNT(*) FROM PAIS)+
           (SELECT COUNT(*) FROM CIUDAD)+
           (SELECT COUNT(DISTINCT Lengua) FROM LenguaPais) AS Total;
    
    
-- 42. Listado de países, ciudades y lenguas indicando si es un país, una ciudad o una lengua

    SELECT Nombre AS 'Paises, ciudades y lenguas', 'País' AS 'Tipo'
    FROM Pais
    UNION ALL
    SELECT Nombre, 'Ciudad'
    FROM Ciudad
    UNION ALL
    SELECT DISTINCT Lengua, 'Lengua'
    FROM LenguaPais
    Limit 40;
    
    
-- FULL JOIN de Videojuegos:
SELECT *
FROM   Videojuegos LEFT JOIN Generos
ON     Videojuegos.IdGenero = Generos.Idgenero
UNION ALL
SELECT Videojuegos.*, Generos.*
FROM   Generos LEFT JOIN Videojuegos
ON     Generos.Idgenero = Videojuegos.IdGenero
WHERE  Videojuegos.Id IS NULL; 
    
    
    
COMIDAS                          PAISES
IdComida Nombre      IdPais      IdPais  Nombre
1        Spaguettis  1           1       Italia
2        Paella      2           2       España


SELECT *
FROM COMIDAS LEFT JOIN PAISES
ON COMIDAS.IdPais = PAISES.IdPais
UNION ALL
SELECT COMIDAS.*, PAISES.*
FROM PAISES LEFT JOIN COMIDAS
ON PAISES.IdPais = COMIDAS.IdPais
WHERE COMIDAS.IdPais IS NULL;

    
SELECT Comidas.Nombre AS 'Comidas',
       Paises.Nombre  AS 'Pais originario'
FROM   Comidas LEFT JOIN Paises
ON     Comidas.IdPais = Paises.IdPais
UNION ALL
SELECT Comidas.Nombre, Paises.Nombre
FROM   Paises LEFT JOIN Comidas
ON     Paises.IdPais = Comidas.IdPais
WHERE  Comidas.IdComida IS NULL;

    
-- 43. MySQL no tiene la orden FULL JOIN por lo que nos ayudaremos de UNION. Listado de países con sus ciudades (sólo los nombres) 
--en el que aparezcan todos los países, aunque no tengan ciudades y todas las ciudades, aunque no sean ciudad de ningún país

   
    SELECT Pais.Nombre AS 'Pais',
           Ciudad.Nombre  AS 'Ciudad'
    FROM   Pais LEFT JOIN Ciudad
    ON     Pais.Codigo = Ciudad.CodigoPais
    UNION ALL
    SELECT Pais.Nombre, Ciudad.Nombre
    FROM   Ciudad LEFT JOIN Pais
    ON     Ciudad.CodigoPais = Pais.Codigo
    WHERE  Ciudad.CodigoPais IS NULL;
    
-- 44. Listado de todas las ciudades junto con el nombre del país del que son capital en el que salgan todos los países 
--y todas las ciudades


    SELECT Ciudad.Nombre AS 'Cudad',
           Pais.Nombre AS 'Pais'
    FROM Ciudad LEFT JOIN Pais
    ON Ciudad.Id = Pais.Capital
    UNION ALL
    SELECT Ciudad.Nombre, Pais.Nombre
    FROM Pais LEFT JOIN Ciudad
    ON Pais.Capital = Ciudad.Id
    WHERE Ciudad.Id IS NULL;
    
    
-- 45. Listado de ciudades o países que tienen más de un millón de habitantes. Nota: queremos saber cuándo se trata de una ciudad 
--y cuándo se trata de un país



    SELECT Nombre, 'Pais' AS 'Tipo'
    FROM Pais
    WHERE Poblacion > 1000000
    UNION ALL
    SELECT Nombre, 'Ciudad'
    FROM Ciudad
    WHERE Poblacion > 1000000
    ORDER BY Nombre;

-- 46. Listado de los diez países más poblados junto las diez ciudades más pobladas ordenados por población de menor a mayor. 
--Queremos identificar cuando es un país y cuando es una ciudad


    (SELECT Nombre, 'Pais' AS 'Tipo', Poblacion AS 'Población'
    FROM Pais
    ORDER BY Poblacion DESC
    LIMIT 10)
    UNION ALL
    (SELECT Nombre, 'Ciudad', Poblacion
    FROM Ciudad
    ORDER BY Poblacion DESC
    LIMIT 10)
    ORDER BY `Población`;


-- -----------------------------------------------------------------
-- JOIN de una tabla consigo misma
-- -----------------------------------------------------------------

-- 47. Para elaborar un juego necesitamos un listado de parejas de países que tengan la misma población


    SELECT PaisI.Nombre AS 'Pais Izquierdo', PaisD.Nombre AS 'Pais Derecho'
    FROM Pais AS PaisI JOIN Pais AS PaisD
    WHERE PaisI.Poblacion = PaisD.Poblacion AND PaisI.Poblacion <> 0 AND PaisI.Codigo > PaisD.Codigo;
    




    SELECT COUNT(*)
    FROM Pais AS PaisI JOIN Pais AS PaisD;


-- 48. Para elaborar un juego, deseamos un listado de parejas de países del continente europeo (europe) con más de 50 millones 
--de habitantes de manera que el año de independencia del primer país sea menor que el del segundo


    SELECT PaisI.Nombre AS 'Pais Izquierdo', PaisD.Nombre AS 'Pais Derecho'
    FROM Pais AS PaisI JOIN Pais AS PaisD
    WHERE PaisI.AnyIndep < PaisD.AnyIndep AND
          PaisI.Continente= 'Europe' AND
          PaisD.Continente= 'Europe' AND
          PaisI.Poblacion > 50000000 AND
          PaisD.Poblacion > 50000000;


-- -----------------------------------------------------------------
-- NO ENTRA EN EXÁMEN
-- -----------------------------------------------------------------
          
          
-- 49. Listado de nombre y apellidos de los empleados junto con el nombre y apellidos de su jefe


    SELECT Subordinado.Apellido, Jefe.Apellido
    FROM Empleados AS Subordinado LEFT JOIN Empleados AS Jefe
    ON Subordinado.Superior = Jefe.IdEmpleado;


-- 50. Listado de jefes de Neptuno

    SELECT DISTINCT Jefe.Apellido AS 'Apellido Jefe', Jefe.Nombre AS 'Nombre jefe'
    FROM Empleados AS Subordinado JOIN Empleados AS Jefe
    ON Subordinado.Superior = Jefe.IdEmpleado;

-- 51. Listado de subordinados de Neptuno

    SELECT DISTINCT Apellido AS 'Apellido Subordinado', Nombre AS 'Nombre subordinado'
    FROM Empleados
    WHERE Superior IS NOT NULL;

    
    
-- -----------------------------------------------------------------
-- Subconsultas de Escalar
-- -----------------------------------------------------------------

    --Escalar es que salga una tabla con una sola columna y un solo registro.
    Select Nombre
    FROM Pais
    Limit 1;
    
    
-- 54. Listado de las ciudades que tienen la misma población que la ciudad El Limón


    SELECT Poblacion
    FROM   Ciudad
    WHERE  Nombre = 'El Limón';
    
    SELECT Nombre
    FROM   Ciudad
    WHERE  Poblacion = 90000;
    
    SELECT Nombre
    FROM Ciudad
    WHERE Poblacion = (SELECT Poblacion 
                       FROM   Ciudad 
                       WHERE  Nombre = 'El Limón'
                       LIMIT 1);
    

    SELECT Nombre
    FROM   Ciudad
    WHERE  Poblacion = (SELECT Poblacion 
                        FROM   Ciudad 
                        WHERE  Nombre = 'Valencia');



/*
En todas las consultas de escalar es muy importante asegurarnos de que la subconsulta devuelve sólo un dato, porque si devuelve más de
uno dará error. Para conseguir esto usaremos siempre LIMIT 1 en la subconsulta y antes de ejecutarla, desde la aplicación copobaremos 
que la subconsulta devuelve un escalar.
-- En nuestro caso, la comproBación se haría compobando que la siguiente consulta da uno:
SELECT COUNT(*)
FROM   Ciudad
WHERE  Nombre = 'El Limón';
-- La única excepción a esta manera de resolver las subconsultas de escalar es cuando el campo
-- que comparamos de la subconsulta (en nuentro caso Nombre) sea clave primaria.
-- Esto ser verá dos consultas más adelante.
*/


-- 55. Listado de las ciudades que tienen la misma población que la ciudad El Limón. Quita del resultado la ciudad de El Limón, 
--que ya sabemos que tiene los mismos habitantes que El Limón

   
    --Debe dar 1 para poder ejecutar la consulta anterior
    SELECT COUNT(*)
    FROM   Ciudad
    WHERE  Nombre = 'El Limón';


 
    SELECT Nombre
    FROM Ciudad
    WHERE Nombre <> 'El Limón' AND Poblacion = (SELECT Poblacion 
                                                FROM   Ciudad 
                                                WHERE  Nombre = 'El Limón'
                                                LIMIT  1);



                                                
                                                
                                                
                                                
                                                
                                                
                                                
                                                
-- 56. Listado de las ciudades que tienen la misma población que la ciudad de Guadalupe


    --Debe dar 1 para poder ejecutar la consulta anterior

    SELECT COUNT(*)
    FROM   Ciudad
    WHERE  Nombre = 'Guadalupe';
    
    SELECT Nombre
    FROM Ciudad
    WHERE Poblacion = (SELECT Poblacion 
                       FROM   Ciudad 
                       WHERE  Nombre = 'Guadalupe'
                       LIMIT  1);


                       
                       
-- 57. Listado de las ciudades que tienen una población mayor que Madrid y menor que Berlín

     --Debe dar 1 para poder ejecutar la consulta anterior
     
    SELECT COUNT(*)
    FROM   Ciudad
    WHERE  Nombre = 'Madrid';
     
     
    SELECT COUNT(*)
    FROM   Ciudad
    WHERE  Nombre = 'Berlín';
     
     
    SELECT Poblacion
    FROM   Ciudad
    WHERE  Nombre = 'Madrid';

    
    
    SELECT Poblacion
    FROM   Ciudad
    WHERE  Nombre = 'Berlín';

    SELECT Nombre
    FROM Ciudad
    WHERE Poblacion > (SELECT Poblacion 
                       FROM   Ciudad 
                       WHERE  Nombre = 'Madrid'
                       LIMIT  1) AND
          Poblacion < (SELECT Poblacion
                       FROM   Ciudad
                       WHERE  Nombre = 'Berlín'
                       LIMIT 1);
    
    
    
-- 58. Listado de países en los que el español (Spanish) es oficial y cuyo porcentaje de hablantes es mayor o igual que 
--     el del español España (ESP)

   
   SELECT Nombre AS 'País'
   FROM LenguaPais JOIN Pais
   ON LenguaPais.CodigoPais = Pais.Codigo
   WHERE EsOficial='T' AND Lengua = 'Spanish' AND Porcentaje >= (
   SELECT Porcentaje
   FROM LenguaPais
   WHERE CodigoPais = 'ESP' AND Lengua = 'Spanish');
   
   
   
   
-- 59. Listado de capitales que tienen una población como mínimo 10 veces superior a la de la ciudad de Alicante

    SELECT Ciudad.Nombre   AS  'Capital'
    FROM   Ciudad          JOIN Pais
    ON     Ciudad.Id       =    Pais.Capital
    WHERE Ciudad.Poblacion >=   10 * 
         (SELECT Poblacion 
          FROM CIUDAD
          WHERE Nombre LIKE 'Alicante%'
          LIMIT 1);
   
-- 60. Capitales del continente africano con el mismo idioma oficial que el idioma oficial de Egipto (Egypt)

    
    SELECT Lengua
    FROM Pais JOIN  LenguaPais
    ON LenguaPais.CodigoPais = Pais.Codigo
    WHERE Pais.Nombre = 'Egypt' AND EsOficial = 'T';
    
    
    SELECT COUNT(*)=1
    FROM Pais JOIN LenguaPais
    ON LenguaPais.CodigoPais = Pais.Codigo
    WHERE Pais.Nombre = 'Egypt' AND EsOficial = 'T'
    
    SELECT Ciudad.Nombre AS 'Capital'
    FROM Ciudad JOIN Pais JOIN LenguaPais
    ON Ciudad.Id = Pais.Capital AND LenguaPais.CodigoPais = Pais.Codigo
    WHERE Continente = 'africa' AND EsOficial = 'T' AND Lengua =
    (SELECT Lengua
    FROM Pais JOIN  LenguaPais
    ON LenguaPais.CodigoPais = Pais.Codigo
    WHERE Pais.Nombre = 'Egypt' AND EsOficial = 'T'
    LIMIT 1);
    
    
    
-- 61. Listado de países, su año de independencia y su densidad de población para países con un año de independencia posterior al de 
--España y con una densidad de población superior a la de Francia (France)
   

    SELECT AnyIndep
    FROM Pais
    WHERE Nombre = 'Spain';
    
    SELECT Poblacion/Superficie
    FROM Pais
    WHERE Nombre = 'France';
    
    SELECT COUNT(*)=1
    FROM Pais
    WHERE Nombre = 'Spain';
    
    
    SELECT COUNT(*)=1
    FROM Pais
    WHERE Nombre = 'France';
    
    SELECT Nombre AS 'País', AnyIndep AS 'Año independencia',
    ROUND(Poblacion / Superficie) AS 'Densidad de población'
    FROM Pais
    WHERE AnyIndep > (
    SELECT AnyIndep
    FROM Pais
    WHERE Nombre = 'Spain'
    LIMIT 1)
    AND Poblacion / Superficie > (
    SELECT Poblacion / Superficie
    FROM Pais
    WHERE Nombre = 'France'
    LIMIT 1);
    
    
-- -----------------------------------------------------------------
-- Subconsultas de columna convertida a escalar
-- -----------------------------------------------------------------


-- 62. Ciudades españolas con una población superior a la media (de la población de las ciudades españolas)


    SELECT AVG(Ciudad.Poblacion)
    FROM Ciudad JOIN Pais
    ON Ciudad.CodigoPais = Pais.Codigo
    WHERE Pais.Nombre = 'Spain';
    
    
    SELECT Ciudad.Nombre AS 'Ciudades españolas con poblacion mayor que la media'
    FROM Ciudad JOIN Pais
    ON Ciudad.CodigoPais = Pais.Codigo
    WHERE Pais.Nombre = 'Spain' AND Ciudad.Poblacion > (
    SELECT AVG(Ciudad.Poblacion)
    FROM Ciudad JOIN Pais
    ON Ciudad.CodigoPais = Pais.Codigo
    WHERE Pais.Nombre = 'Spain');
    
    
-------------------------------------------
--Capitulo 12.10.1 Refman 5.0es
--Funciones de agregación / resumen
-------------------------------------------
    
    --AVG --> Media de algo (puede llevar DISTINCT)
    --COUNT --> Cuenta cuantos valores no tienen nulos(Con el * si cuenta nulls)(puede llevar DISTINCT)
    --Group_Concat --> Concatena todos los textos en una sola cadena de una lista
    --MIN,MAX --> 
    --SUM --> Suma 
    
-------------------------------------------
--Capitulo A.5.3 Refman 5.0es
--Problemas con los valores null
-------------------------------------------   
    
    --Las funciones de agregacion como count min max y sum ignoran los valores null
    --La excepcion es el count(*) por que cuenta los registros incluidos los null ¡SOLO SI TIENE EL *!
    
    SELECT AVG(AnyIndep) FROM Pais;
    
    SELECT AVG(AnyIndep) FROM Pais WHERE AnyIndep IS NOT NULL;
    
    SELECT AVG(AnyIndep) FROM Pais WHERE Codigo ='XXX';
    
    SELECT SUM(AnyIndep) FROM Pais WHERE Codigo ='XXX';
    
    SELECT MAX(AnyIndep) FROM Pais WHERE Codigo ='XXX';
    
    SELECT COUNT(AnyIndep) FROM Pais WHERE Codigo ='XXX';
    
    
-- 63. Ciudades más pobladas que la ciudad de mayor población del continente europeo

    
    SELECT Nombre AS 'Ciudad'
    FROM Ciudad
    WHERE Poblacion > (
    SELECT MAX(Ciudad.Poblacion)
    FROM Ciudad JOIN Pais
    ON Ciudad.CodigoPais = Pais.Codigo
    WHERE Continente = 'Europe');
    
    
    
-- 64. Ciudades con más población que la población total de todas las ciudades de Francia
   
    
    SELECT Nombre AS 'Ciudad'
    FROM Ciudad
    WHERE Poblacion > (
    SELECT SUM(Ciudad.Poblacion)
    FROM Ciudad JOIN Pais
    ON Ciudad.CodigoPais = Pais.Codigo
    WHERE Pais.Nombre = 'France');
    
-- 65. Países con un PNB mayor que el país de Europa con mayor PNB

    SELECT Nombre AS 'Pais'
    FROM Pais
    WHERE PNB > (
    SELECT MAX(PNB)
    FROM Pais
    WHERE Continente = 'Europe');
    
    
-- 66. Ciudades que pertenecen a países que tienen una renta per cápita mayor que la renta per cápita media de los países
-- en los que el inglés es lengua oficial

    SELECT AVG(PNB*1000000/Pais.Poblacion)
    FROM Pais JOIN LenguaPais
    ON Pais.Codigo = LenguaPais.CodigoPais
    WHERE EsOficial = 'T' AND Lengua = 'English';
    
    
    SELECT Ciudad.Nombre AS 'Ciudad'
    FROM Ciudad JOIN Pais
    ON Ciudad.CodigoPais = Pais.Codigo
    WHERE PNB*1000000/Pais.Poblacion > (
    SELECT AVG(PNB*1000000/Pais.Poblacion)
    FROM Pais JOIN LenguaPais
    ON Pais.Codigo = LenguaPais.CodigoPais
    WHERE EsOficial = 'T' AND Lengua = 'English');




    
    
-- -----------------------------------------------------------------
-- Subconsultas de columna 
-- -----------------------------------------------------------------

-- Manual de MySQL v5.0 13.2.8.3. Subconsultas con ANY, IN y SOME

-- Creamos la siguiente BD
CREATE SCHEMA subconsultas;
USE subconsultas;
CREATE TABLE ta (c1 int(2));
INSERT INTO  ta VALUES (15);
INSERT INTO  ta VALUES (10);

CREATE TABLE tan (c1 int(2));
INSERT INTO  tan VALUES (15);
INSERT INTO  tan VALUES (10);
INSERT INTO  tan VALUES ();

CREATE TABLE tb (c1 int(2), c2 CHAR(10));
INSERT INTO  tb VALUES (10, 'v1');
INSERT INTO  tb VALUES (10, 'v2');
INSERT INTO  tb VALUES (5,  'v3');

SELECT * FROM ta;
SELECT * FROM tan;
SELECT * FROM tb;

DROP SCHEMA subconsultas;


-- ANY y ALL
-- En subconsultas que devuelven una columna, ANY quiere decir alguno de los registros de la subconsulta y ALL todos los registros.


-- Comportamiento de ANY y ALL con nulos y listas vacías

/*
ANY
¿10 = ANY (15, 10)?         TRUE  (SI)       SELECT 10 = ANY(SELECT c1 FROM ta);
¿10 = ANY (15, 10, NULL)?   TRUE  (SI)       SELECT 10 = ANY(SELECT c1 FROM tan);
¿30 = ANY (15, 10)?         FALSE (NO)       SELECT 30 = ANY(SELECT c1 FROM ta);
¿30 = ANY (15, 10, NULL)?   NULL  (No lo sé) SELECT 30 = ANY(SELECT c1 FROM tan);
¿10 = ANY ()?               FALSE (No)       SELECT 10 = ANY(SELECT c1 FROM ta WHERE c1 = 66);

ALL
¿10 <> ALL (15, 10)?        FALSE (No)       SELECT 10 <> ALL(SELECT c1 FROM ta);
¿10 <> ALL (15, 10, NULL)?  FALSE (No)       SELECT 10 <> ALL(SELECT c1 FROM tan);
¿30 <> ALL (15, 10)?        TRUE  (Si)       SELECT 30 <> ALL(SELECT c1 FROM ta);
¿30 <> ALL (15, 10, NULL)?  NULL  (No lo sé) SELECT 30 <> ALL(SELECT c1 FROM tan);
¿10 <> ALL ()?              TRUE  (Si)       SELECT 10 <> ALL(SELECT c1 FROM ta WHERE c1 = 66);

¿10 =  ALL (15, 10)?        FALSE (No) No tiene sentido
¿10 <> ANY (15, 10)?        TRUE  (Si) No tiene sentido
*/

SELECT * FROM tb WHERE c1 = ANY (SELECT c1 FROM ta);
SELECT * FROM tb WHERE c1 <> ALL (SELECT c1 FROM ta);


/*

IN <=> = ANY
NOT IN <=> <> ALL
SOME <=> ANY (no lo usaremos en clase)


Resumen:
Los nulos no afectan al ANY, pero si al ALL
Si la consulta devuelve un conjunto vacío de registros, ANY devuelve falso y la consulta principal no devolverá ningun registro (salvo que pongamos NOT);
y ALL devuelve siempre verdadero y la consulta principal devolverá todos los registros (salvo que pongamos NOT). ANY no devuelve ninguno y ALL devuelve todos.


Lo de cual es el comportamiento deseado de ANY y ALL cuando la subconsulta devuelve un conjunto vacío de registros no está claro. Si cogemos a una persona que 
no sabe informática y le pedimos que seleccione a los alumnos de nuestra clase cuya edad es distinta de la de todos los alumnos de la clase de al lado y esta 
persona va a la clase de al lado y descubre que no hay nadie, seguramente volverá y en vez de coger a todos los alumnos de nuestra clase nos dirá que en la clase
 de al lado no había nadie, es decir, nos dará un error.
 
 
Parece ser que lo que no es lógico es que en una consulta de ANY o de ALL, la subconsulta de un conjunto vacío de registros. 
Por lo tanto, en los ejercicios que hagamos, lo importante es saber cómo se comportará la consulta principal en caso de que la 
subconsulta de un conjunto vacío de registros. Lo de si es lógico o no dependerá de cada caso y lo más normal sería sacar un aviso 
al usuario de que la subconsulta a dado un conjunto vacío de registros (expresado de manera inteligible para el usuario).



*/



-- ¡IMPORTANTE!
-- En todas las consultas de ANY, ALL, IN tenenmos que hacer tres cosas:
-- 1. Indicar qué pasa si hay nulos en la subconsulta
-- 2. Indicar qué pasa si la subconsulta devuelve un conjunto vacío de registros
-- 3. Comprobar que la subconsulta no devuelve un conjunto vacío de registros


-- 67. Países con un año de independencia igual al de alguno de los países con una superficie mayor que 500000 kilómetros cuadrados

    SELECT AnyIndep
    FROM   Pais
    WHERE  Superficie > 500000;
    
    
    SELECT Nombre AS 'País'
    FROM   Pais
    WHERE  AnyIndep IN (
        SELECT AnyIndep
        FROM   Pais
        WHERE  Superficie > 500000);


    --Si en la subconsulta hay algún nulo no afecta al resultado
    --Si la subconsulta devuelve un conjunto vacío de registros no sale ningun país
    
    
    SELECT COUNT(*)>0
    FROM Pais
    WHERE Superficie > 500000;
    --Debe dar verdadero para que la consulta principal tenga sentido
    
    
-- 68. Países con un año de independencia distinto del de todos los países con una superficie mayor que 500000 kilómetros cuadrados

    SELECT AnyIndep
    FROM   Pais
    WHERE  Superficie > 500000 AND AnyIndep IS NOT NULL;
    
    
    SELECT Nombre AS 'País'
    FROM   Pais
    WHERE  AnyIndep <> ALL (
        SELECT AnyIndep
        FROM   Pais
        WHERE  Superficie > 500000 AND AnyIndep IS NOT NULL);
    
    --Si la subconsulta hay un valor NULL no saldrá ningun registro, por lo que en esta consulta es obligatorio eliminar los valores NULL con IS NOT NULL
    --Si la consulta devuelve un conjunto vacío de registros saldrían todos los países
    
    SELECT COUNT(*)>0
    FROM Pais
    WHERE Superficie > 500000 AND AnyIndep IS NOT NULL;
    
    --Primero ejecutamos. El resultado de esta consulta nos indica si podemos ejecutar la primera
    
    
    
    
    
    
    
    
    /*
Resumen:
=  ANY -> tiene sentido
<> ALL -> tiene sentido
<> ANY -> no tiene sentido
=  ALL -> no tiene sentido
> ANY <-> > MIN()
> ALL <-> > MAX()
< ANY <-> < MAX()
< ALL <-> < MIN()
*/
    
    
    
-- 69. Países con un año de independencia mayor que alguno de los países cuya capital tiene más de cinco millones de habitantes. 

    SELECT AnyIndep
    FROM Pais JOIN Ciudad
    ON Pais.Capital = Ciudad.Id
    WHERE Ciudad.Poblacion > 5000000;


    SELECT Pais.Nombre AS 'País'
    FROM Pais
    WHERE AnyIndep > ANY (
        SELECT AnyIndep
        FROM Pais JOIN Ciudad
        ON Pais.Capital = Ciudad.Id
        WHERE Ciudad.Poblacion > 5000000);



    SELECT Pais.Nombre AS 'País'
    FROM Pais
    WHERE AnyIndep > (
        SELECT MIN(AnyIndep)
        FROM Pais JOIN Ciudad
        ON Pais.Capital = Ciudad.Id
        WHERE Ciudad.Poblacion > 5000000);


-- 70. Ciudades del mundo que empiezan por una letra distinta que la letra inicial de las ciudades españolas (con código de país ESP)

    
    SELECT DISTINCT LEFT(Nombre,1)
    FROM Ciudad
    WHERE CodigoPais = 'ESP';


    SELECT Nombre AS 'Ciudad'
    FROM Ciudad
    WHERE LEFT(Nombre,1) <> ALL (
        SELECT DISTINCT LEFT(Nombre,1)
        FROM Ciudad
        WHERE CodigoPais = 'ESP');

    --Si el nombre de alguna ciudad es NULL, SELECT LEFT(Nombre, 1); da NULL y no nos saldría ninguna ciudad en la consulta principal. Como sabemos que
    --en ese campo no puede haber nulos, no es necesario quitar los nulos en este caso
    
    --Si España no tuviese ninguna ciudad, la consulta sacaria todos los registros
    
    --La siguiente consulta debe dar verdadero para ejecutar la consulta principal

    SELECT COUNT(*)>0
    FROM Ciudad
    WHERE CodigoPais = 'ESP';



    
-- FIN
-- Lunes, 18:     1h de clase para solución de dudas
-- Miércoles, 20: 2h de clase para solución de dudas
-- Martes, 26 9:50: examen T2










    
