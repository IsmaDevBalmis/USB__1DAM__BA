

-- 35. Países que no son ni del continente Asiático ni del Europeo

SELECT Nombre AS 'Países que no son ni de Asia ni de Europa'
FROM   Pais
WHERE  Continente NOT IN ('Asia', 'Europe');

-- 36. Listado de países en los que aparezca el continente, la región y el nombre del país en usa sola columna. Cada campo ira separado por “ // “. El resultado saldrá ordenado
    
    SELECT CONCAT(Continente, ' // ', Region, ' // ', Nombre) AS 'País'
    FROM Pais
    ORDER BY `País`;

-- 37. Realiza la misma consulta anterior, pero pon todas las letras de Continente y región en mayúsculas y todas las del país en minúsculas

    SELECT CONCAT (UPPER(Continente), ' // ',
                   UPPER(Region), ' // ',
                   LOWER(Nombre))   AS 'Continente, Región y País'
    FROM Pais
    ORDER BY BINARY `Continente, Región y País`;
         
-- 38. Realiza un listado de nombres de usuario y contraseñas. El nombre de usuario será el nombre del país sin espacios en blanco. La contraseña estará formada por los tres primeros caracteres del continente, el código 2 del país y los tres últimos caracteres de su capital (del código de la ciudad). Tanto el nombre de usuario como la contraseña estarán en minúsculas

    --Funcion REPLACE, LEFT, RIGHT, LOWER.

    SELECT LOWER(REPLACE(Nombre, ' ', '')) AS 'Nombre de usuario'
           LOWER(CONCAT (LEFT(Continente, 3),
                         Codigo2,
                         RIGHT(Capital, 3))) AS 'Contraseña'
    FROM Pais
    WHERE Capital IS NOT NULL;
    
    
    -- 39. Calcula el índice YQS de un país. El resultado saldrá redondeado. Su fórmula es:
-- YQS = ((Superficie + Raíz cuadrada de ( PNB / 1000000)) partido por 
--        (Poblacion / 1000000 más el valor absoluto del año de independencia)) más 
--       (PNB / PNBAnt) elevado a la sexta potencia


    SELECT Nombre AS 'País'
           ROUND(
            (Superficie + SQRT(PNB / 1000000)) /
            (Poblacion/1000000 + ABS(AnyIndep)) +
            POW(PNB/PNBAnt,6)
            ) AS 'Índice YQS'
    FROM Pais
    WHERE AnyIndep IS NOT NULL AND PNB IS NOT NULL AND
            PNBAnt IS NOT NULL AND PNBAnt <> 0;
    
    
-- 40. Queremos un listado de países y su población. Queremos introducir un error en la población de ±10%. Es decir, si la población de un país es de 5000 habitantes nos saldrá una población errónea con un valor de entre 4500 y 5500


    
    --SELECT Nombre, Poblacion, RAND()/5+0.9 FROM Pais;
    
    
    SELECT Nombre AS 'País'
            ROUND((RAND()/5+0.9)* Poblacion) AS 'Poblacion con error',
            Poblacion AS 'Poblacion sin error'
    FROM Pais;
    
 -- 41. Listado de países en los que Codigo2 no son las dos primeras letras del código del país
 
            -- ** Si funfa del profe
 
 
    SELECT Nombre AS 'Pais'
    FROM Pais
    WHERE LEFT(Codigo,2) <> Codigo2;
    

    
-- 42. Listado de países que no tienen alguna de sus dos letras de Codigo2 en el Codigo del país

    SELECT Nombre AS 'País', Codigo, Codigo2
    FROM Pais
    WHERE LOCATE(LEFT (Codigo2,1), Codigo) = 0 OR
          LOCATE(RIGHT(Codigo2,1), Codigo) = 0;
    
-- 43. Listado de países que están en crecimiento económico

    SELECT Nombre AS 'Pais'
    FROM Pais
    WHERE PNB > PNBAnt;



