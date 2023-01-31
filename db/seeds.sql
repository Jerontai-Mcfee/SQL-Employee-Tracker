-- SOURCE seeds.sql SECOND AFTER SOURCING schema.sql FIRST

USE employeesDB;

-- inserts into department table
INSERT INTO department (name)
VALUES ("Frozen");
INSERT INTO department (name)
VALUES ("Hardware");
INSERT INTO department (name)
VALUES ("Frontend");
INSERT INTO department (name)
VALUES ("Bakery");

-- inserts into role table
-- no camelCase for SQL...
INSERT INTO role (title, salary, department_id)
VALUES ("Bakery Manager", 50000, 1);
INSERT INTO role (title, salary, department_id)
VALUES ("Frozen Manager", 75000, 2);
INSERT INTO role (title, salary, department_id)
VALUES ("Hardware Manager", 85000, 3);
INSERT INTO role (title, salary, department_id)
VALUES ("Frontend Asst Manager", 35000, 4);
INSERT INTO role (title, salary, department_id)
VALUES ("Frontend Manager", 60000, 4);

-- used names from favorite movie characters
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Jason", "Borne", 4, 3);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Edna", "Mode", 2, 1);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Tony", "Stark", 3, null);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("optimus", "Prime", 3, 3);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Legolas", "Elf", 1, null);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Wednesday", "Adams", 2, null);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Ethan", "hunt", 4, 7);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("V", "4Vendetaa", 4, 1);