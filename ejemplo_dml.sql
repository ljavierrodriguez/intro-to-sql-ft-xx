-- Active: 1686667890402@@127.0.0.1@5433@geeks_ft20

/* DML */
/* SELECT, INSERT, UPDATE, DELETE */

/* INSERT */
/* 
 INSERT INTO table_name (field1, field2, ...fieldN) VALUES (value1, value2, ...valueN);
 */

 INSERT INTO users (username, password, rut) VALUES ('lrodriguez', '12345678', '12345678-9');
 INSERT INTO users (username, password, rut) VALUES ('lrodriguez2', '12345678', '12345678-8');

 INSERT INTO profiles (bio, users_id, rut) VALUES ('Mi biografia secreta es aniquilar estudiantes', 1, '12345678-9');
 

/* SELECT */
/* 
SELECT * FROM table_name;
SELECT field1, field2, ...fieldN from table_name;
SELECT * FROM table_name WHERE condition 

Operadores de Comparacion:
=, <>, >=, <=, >, <
Operadores Logicos
and, or, not
*/

SELECT * FROM users;
SELECT username FROM users;

SELECT id, username FROM users WHERE id=1;

SELECT id FROM users WHERE username='lrodriguez' and password = '12345678';


/* UPDATE */
/* 
UPDATE table_name SET field1=value1, field2=value2, ...fieldN=valueN;
UPDATE table_name SET field1=value1, field2=value2, ...fieldN=valueN WHERE condicion;
*/

UPDATE users SET password='135781321';
UPDATE users SET password='12345678' WHERE id = 1;
UPDATE users SET username='lrodriguez', password='12345678' WHERE id = 1;

UPDATE users SET password = '123456' WHERE id BETWEEN 5 and 10;
UPDATE users SET password = '123456' WHERE id >= 5 and id <= 10;

/* DELETE */
/* 
DELETE FROM table_name; (evitar delete sin where)
DELETE FROM table_name WHERE condicion;
*/

DELETE FROM users WHERE id >= 10 and id <= 20;