CREATE DATABASE amigo_peludo;
USE amigo_peludo;

-- Base de Datos de Dueños:
CREATE TABLE Duenos (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(100)
);

-- Base de Datos de Mascotas:
CREATE TABLE Mascotas (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Tipo VARCHAR(50),
    Nombre VARCHAR(100),
    Dueno_id INT,
    FOREIGN KEY (dueno_id) REFERENCES Duenos(id)
);

-- Base de Datos de Veterinarios:
CREATE TABLE Veterinarios (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(100),
    Especialidad VARCHAR(50)
);

-- Base de Datos de Historiales Clínicos:
CREATE TABLE HistorialesClinicos (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Mascota_id INT,
    Fecha DATE,
    Problema VARCHAR(200),
    FOREIGN KEY (mascota_id) REFERENCES Mascotas(id)
);

--  Base de Datos de Vacunas:
CREATE TABLE Vacunas (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Mascota_id INT,
    Nombre VARCHAR(100),
    Fecha DATE,
    FOREIGN KEY (mascota_id) REFERENCES Mascotas(id)
);

-- Base de Datos de Citas:
CREATE TABLE Citas (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Mascota_id INT,
    Veterinario_id INT,
    Fecha_hora DATETIME,
    FOREIGN KEY (mascota_id) REFERENCES Mascotas(id),
    FOREIGN KEY (veterinario_id) REFERENCES Veterinarios(id)
);


-- Población de la tabla "Dueños":
INSERT INTO Duenos (nombre) VALUES
('Juan Perez'),
('Maria Rodriguez'),
('Carlos Gomez'),
('Laura Fernández'),
('Ana López'),
('Pedro Martinez');

-- Población de la tabla "Mascotas":
INSERT INTO Mascotas (tipo, nombre, dueno_id) VALUES
('Perro', 'Max', 1),
('Perro', 'Luna', 2),
('Gato', 'Whiskers', 3),
('Gato', 'Simba', 4),
('Conejo', 'Bunny', 5),
('Conejo', 'Cotton', 2),
('Hámster', 'Nibbles', 6),
('Hámster', 'Squeaky', 3),
('Ave', 'Polly', 4),
('Ave', 'Sunny', 1);

-- Población de la tabla "Veterinarios":
INSERT INTO Veterinarios (nombre, especialidad) VALUES
('Dr. García', 'Perros'),
('Dra. Martínez', 'Gatos'),
('Dr. López', 'Conejos'),
('Dra. Rodríguez', 'Hámsters'),
('Dra. Fernandez', 'Aves');

-- Población de la tabla "HistorialesClinicos":
INSERT INTO HistorialesClinicos (mascota_id, fecha, problema) VALUES
(1, '2023-08-01', 'Fiebre y tos'),
(2, '2023-07-15', 'Dolor abdominal'),
(3, '2023-06-20', 'Ojo irritado'),
(4, '2023-08-10', 'Pérdida de apetito'),
(5, '2023-07-05', 'Dificultad para respirar'),
(6, '2023-08-18', 'Herida en la pata'),
(7, '2023-07-25', 'Pérdida de peso'),
(8, '2023-06-10', 'Pelaje desaliñado'),
(9, '2023-08-08', 'Plumas enmarañadas'),
(10, '2023-07-12', 'No canta');

-- Población de la tabla "Vacunas":
INSERT INTO Vacunas (mascota_id, nombre, fecha) VALUES
(1, 'Vacuna contra la rabia', '2023-02-15'),
(2, 'Vacuna polivalente', '2023-05-10'),
(3, 'Vacuna contra el herpesvirus felino', '2023-03-20'),
(4, 'Vacuna felina triple', '2023-04-08'),
(5, 'Vacuna contra la enfermedad respiratoria', '2023-02-28'),
(6, 'Vacuna contra la mixomatosis', '2023-06-22'),
(7, 'Vacuna antirrábica', '2023-04-14'),
(8, 'Vacuna para hámsters', '2023-07-30'),
(9, 'Vacuna para aves exóticas', '2023-03-12'),
(10, 'Vacuna contra la enfermedad de las aves', '2023-05-18');

-- Población de la tabla "Citas":
INSERT INTO Citas (mascota_id, veterinario_id, fecha_hora) VALUES
(1, 1, '2023-08-05 10:00:00'),
(2, 2, '2023-08-08 14:30:00'),
(3, 3, '2023-08-12 11:15:00'),
(4, 4, '2023-08-15 09:45:00'),
(5, 5, '2023-08-20 13:00:00'),
(6, 1, '2023-08-25 15:30:00'),
(7, 2, '2023-08-28 10:45:00'),
(8, 3, '2023-09-02 11:30:00'),
(9, 4, '2023-09-05 16:00:00'),
(10, 5, '2023-09-10 12:15:00');

ALTER TABLE Mascotas
ADD COLUMN NombreDueno VARCHAR(100) AFTER Dueno_id;

UPDATE Mascotas AS m
JOIN Duenos AS d ON m.Dueno_id = d.ID
SET m.NombreDueno = d.Nombre;

ALTER TABLE HistorialesClinicos
ADD NombreMascota VARCHAR(100) AFTER Mascota_id;

SET SQL_SAFE_UPDATES = 0;
UPDATE HistorialesClinicos AS hc
JOIN Mascotas AS m ON hc.Mascota_id = m.ID
SET hc.NombreMascota = m.Nombre;
SET SQL_SAFE_UPDATES = 1;

ALTER TABLE Vacunas
ADD NombreMascota VARCHAR(100) AFTER Mascota_id;


SET SQL_SAFE_UPDATES = 0;
UPDATE Vacunas AS vc
JOIN Mascotas AS m ON vc.Mascota_id = m.ID
SET vc.NombreMascota = m.Nombre;
SET SQL_SAFE_UPDATES = 1;

ALTER TABLE Citas
ADD NombreMascota VARCHAR(100) AFTER Mascota_id;

SET SQL_SAFE_UPDATES = 0;
UPDATE Citas AS ct
JOIN Mascotas AS m ON ct.Mascota_id = m.ID
SET ct.NombreMascota = m.Nombre;
SET SQL_SAFE_UPDATES = 1;

ALTER TABLE Citas
ADD NombreVeterinario VARCHAR(100) AFTER Veterinario_id;

SET SQL_SAFE_UPDATES = 0;
UPDATE Citas AS vt
JOIN Veterinarios AS m ON vt.Veterinario_id = m.ID
SET vt.NombreVeterinario = m.Nombre;
SET SQL_SAFE_UPDATES = 1;