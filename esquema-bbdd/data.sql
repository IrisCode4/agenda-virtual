-- Example

INSERT INTO departamentos (nombre) 
VALUES ('Recursos Humanos'), ('Tecnología'), ('Marketing');

INSERT INTO empleados (nombre, puesto, salario, departamento_id) 
VALUES 
('Juan Pérez', 'Desarrollador', 50000, 2), 
('Ana García', 'Gerente', 60000, 1), 
('Luis Fernández', 'Analista', 45000, 3);