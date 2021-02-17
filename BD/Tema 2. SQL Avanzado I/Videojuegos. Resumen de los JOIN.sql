-- -----------------------------------------------------------------
-- INTRODUCCIÓN AL JOIN
-- -----------------------------------------------------------------

SELECT * FROM Videojuegos;
/*
+----+-----------------+------+----------+
| Id | Titulo          | Pegi | IdGenero |
+----+-----------------+------+----------+
|  1 | Gears of War    | 18+  |        1 |
|  2 | Battlefield III | 18+  |        1 |
|  3 | Pok?¿mon        | 6+   |     NULL |
+----+-----------------+------+----------+
3 rows in set (0.09 sec)
*/

SELECT * FROM Generos;
/*
+----------+--------+
| IdGenero | Nombre |
+----------+--------+
|        1 | FPS    |
|        2 | ROL    |
|        3 | RPG    |
+----------+--------+
3 rows in set (0.02 sec)
*/

SELECT * FROM Videojuegos JOIN Generos ON Videojuegos.IdGenero=Generos.IdGenero;
/*
+----+-----------------+------+----------+----------+--------+
| Id | Titulo          | Pegi | IdGenero | IdGenero | Nombre |
+----+-----------------+------+----------+----------+--------+
|  1 | Gears of War    | 18+  |        1 |        1 | FPS    |
|  2 | Battlefield III | 18+  |        1 |        1 | FPS    |
+----+-----------------+------+----------+----------+--------+
2 rows in set (0.00 sec)
*/

SELECT * FROM Videojuegos LEFT JOIN Generos ON Videojuegos.IdGenero=Generos.IdGenero;
/*
+----+-----------------+------+----------+----------+--------+
| Id | Titulo          | Pegi | IdGenero | IdGenero | Nombre |
+----+-----------------+------+----------+----------+--------+
|  1 | Gears of War    | 18+  |        1 |        1 | FPS    |
|  2 | Battlefield III | 18+  |        1 |        1 | FPS    |
|  3 | Pok?¿mon        | 6+   |     NULL |     NULL | NULL   |
+----+-----------------+------+----------+----------+--------+
3 rows in set (0.02 sec)
*/

SELECT * FROM Videojuegos RIGHT JOIN Generos ON Videojuegos.IdGenero=Generos.IdGenero;
/*
+------+-----------------+------+----------+----------+--------+
| Id   | Titulo          | Pegi | IdGenero | IdGenero | Nombre |
+------+-----------------+------+----------+----------+--------+
|    1 | Gears of War    | 18+  |        1 |        1 | FPS    |
|    2 | Battlefield III | 18+  |        1 |        1 | FPS    |
| NULL | NULL            | NULL |     NULL |        2 | ROL    |
| NULL | NULL            | NULL |     NULL |        3 | RPG    |
+------+-----------------+------+----------+----------+--------+
4 rows in set (0.00 sec)
*/

SELECT * FROM Generos LEFT JOIN Videojuegos ON Videojuegos.IdGenero=Generos.IdGenero;
/*
+----------+--------+------+-----------------+------+----------+
| IdGenero | Nombre | Id   | Titulo          | Pegi | IdGenero |
+----------+--------+------+-----------------+------+----------+
|        1 | FPS    |    1 | Gears of War    | 18+  |        1 |
|        1 | FPS    |    2 | Battlefield III | 18+  |        1 |
|        2 | ROL    | NULL | NULL            | NULL |     NULL |
|        3 | RPG    | NULL | NULL            | NULL |     NULL |
+----------+--------+------+-----------------+------+----------+
4 rows in set (0.00 sec)
*/

SELECT Videojuegos.*, Generos.* FROM Generos LEFT JOIN Videojuegos ON Videojuegos.IdGenero=Generos.IdGenero;
/*
+------+-----------------+------+----------+----------+--------+
| Id   | Titulo          | Pegi | IdGenero | IdGenero | Nombre |
+------+-----------------+------+----------+----------+--------+
|    1 | Gears of War    | 18+  |        1 |        1 | FPS    |
|    2 | Battlefield III | 18+  |        1 |        1 | FPS    |
| NULL | NULL            | NULL |     NULL |        2 | ROL    |
| NULL | NULL            | NULL |     NULL |        3 | RPG    |
+------+-----------------+------+----------+----------+--------+
4 rows in set (0.02 sec)
*/

SELECT * FROM Videojuegos LEFT JOIN Generos ON Videojuegos.IdGenero=Generos.IdGenero
UNION ALL
SELECT Videojuegos.*, Generos.* FROM Generos LEFT JOIN Videojuegos ON Videojuegos.IdGenero=Generos.IdGenero
WHERE Videojuegos.Id IS NULL;
/*
+------+-----------------+------+----------+----------+--------+
| Id   | Titulo          | Pegi | IdGenero | IdGenero | Nombre |
+------+-----------------+------+----------+----------+--------+
|    1 | Gears of War    | 18+  |        1 |        1 | FPS    |
|    2 | Battlefield III | 18+  |        1 |        1 | FPS    |
|    3 | Pok?¿mon        | 6+   |     NULL |     NULL | NULL   |
| NULL | NULL            | NULL |     NULL |        2 | ROL    |
| NULL | NULL            | NULL |     NULL |        3 | RPG    |
+------+-----------------+------+----------+----------+--------+
5 rows in set (0.00 sec)
*/