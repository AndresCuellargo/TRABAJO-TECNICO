-- Creamos la tabla con las restricciones solicitadas
CREATE TABLE usuarios (
    id SERIAL PRIMARY KEY,
    nombres VARCHAR(100) NOT NULL,
    apellidos VARCHAR(100) NOT NULL,
    cedula VARCHAR(20) UNIQUE NOT NULL, -- Restricción: No se repiten cédulas
    fecha_nacimiento DATE NOT NULL,
    username VARCHAR(50) UNIQUE NOT NULL, -- Restricción: No se repiten usuarios
    password VARCHAR(255) NOT NULL
);

-- Insertamos un usuario de prueba para que verifiques el login rápido
INSERT INTO usuarios (nombres, apellidos, cedula, fecha_nacimiento, username, password)
VALUES ('Usuario', 'Prueba', '101010', '1995-05-15', 'sena', '1234');