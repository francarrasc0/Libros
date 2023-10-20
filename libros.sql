INSERT INTO usuarios (nombre) 
VALUES  ('Jane Austen'),
('Emily Dickinson'),
('Fyodor Dostoevsky'),
('William Shakespeare'),
('Lau Tzu');

INSERT INTO libros (titulo, num_paginas) 
VALUES('C Sharp', 300),
('Java', 400),
('Python', 350),
('PHP', 460),
('Ruby',380);

UPDATE libros
SET titulo = 'C#'
WHERE id = 1;

UPDATE usuarios 
SET nombre = 'Bill' 
WHERE id = 4;

INSERT INTO favoritos (usuario_id, libro_id) 
VALUES(1, 1),
(1, 2);

INSERT INTO favoritos (usuario_id, libro_id) 
VALUES(2, 1),
(2, 2),
(2, 3);

INSERT INTO favoritos (usuario_id, libro_id) 
VALUES(3, 1),
(3, 2),
(3, 3),
(3, 4);

INSERT INTO favoritos (usuario_id, libro_id) 
VALUES(4, 1),
(4, 2),
(4, 3),
(4, 4),
(4, 5);

SELECT u.nombre
FROM usuarios u
JOIN favoritos f ON u.id = f.usuario_id
WHERE f.libro_id = 3;

DELETE FROM favoritos 
WHERE usuario_id = 1 AND libro_id = 3;

INSERT INTO favoritos (usuario_id, libro_id)
VALUES(5, 2);

SELECT l.titulo
FROM libros l
JOIN favoritos f ON l.id = f.libro_id
WHERE f.usuario_id = 3;

SELECT u.nombre
FROM usuarios u
JOIN favoritos f ON u.id = f.usuario_id
WHERE f.libro_id = 5;