-- ----------------------------------------------------------------------------
-- Nombre completo: Ismael Ruiz-Huidobro Arroyo
-- 1DAM-BA  Bases de datos
-- Examen del Tema 1. SQL básico
-- 16-nov-2020
-- ----------------------------------------------------------------------------

/*
Puntuación de las consultas: Cada consulta vale dos puntos.
Duración del examen: 40 minutos
Se valorará además de que las solución de los ejercicios sea correcta, la correcta indentación, los comentarios en el código, nombres de columna correctos y la claridad y simplicidad del código en general. Se debe realizar análisis de nulos en todas las consultas.
No entregues dos soluciones a la misma consulta. Cada consulta debe tener una única solución, aunque puedes añadir todos los comentarios que creas conveniente.
*/

-- 1. Nombre de las ciudades de cinco caracteres o más en las que
-- el último, el antepenúltimo y el quinto carácter por la derecha
-- son el mismo. Por ejemplo la ciudad inventada Melatasa saldría
-- porque su último carácter, el antepenúltimo y el quinto por la
-- derecha son el mismo: la letra a.

SELECT Nombre AS 'Nombre de la ciudad'
FROM   Ciudad
WHERE  CHAR_LENGTH(Nombre) >= 5 AND SUBSTRING(Nombre,1,1) = SUBSTRING(Nombre,3,1) 
                                AND SUBSTRING(Nombre,1,1) = SUBSTRING(Nombre,5,1);



-- 2. Nombre de las ciudades en las que su primer y último carácter
-- son a y tienen dos a adicionales por en medio. Por ejemplo la ciudad
-- inventada Amelatasa saldría porque empieza y acaba por a y tiene dos
-- caracteres a más por dentro de la palabra. Si una palabra tiene más
-- letras a por medio también saldría porque cumple la condición.

    SELECT Nombre AS 'Nombres con 4 a minimo'
    FROM   Ciudad
    WHERE  Nombre Like Binary 'a%a%a%a';





-- 3. Nombre de los diez países que se han independizaron en el siglo XX
-- que tienen más densidad de población..

    SELECT   Nombre AS 'Nombre Pais', AnyIndep AS 'Año de Independencia', Poblacion AS 'Población'
    FROM     Pais
    WHERE    AnyIndep  Like '19%'
    Order By Poblacion DESC
    Limit 10;



-- 4. Listado de países en el que nos aparecerá su nombre y su
-- nombre local. Si el nombre es igual que el nombre local
-- aparecerá el texto: 'es igual' en vez del nombre local.

    SELECT Nombre AS 'Pais', NombreLocal AS 'Nombre Local', CASE
        WHEN (Nombre = NombreLocal) THEN 'es igual'
        WHEN (Nombre != NombreLocal) THEN NombreLocal
        END AS 'NombreLocal'
    FROM Pais;




-- 5. Nombre de los países que cumplen la condición de que
-- su superficie y año de independencia son números parecidos.
-- En concreto, la diferencia entre ambos números debe ser menor
-- que un 10%.

     SELECT Nombre AS 'Nombre del País', Superficie AS 'Superficie', AnyIndep AS 'Año de Independencia'
     FROM Pais
     WHERE (Superficie*1.10)-100 < (AnyIndep/1.10)-100;





