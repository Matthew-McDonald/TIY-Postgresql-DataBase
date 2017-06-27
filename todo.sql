CREATE DATABASE todolist;

\connect todolist

CREATE TABLE todos (
id SERIAL PRIMARY KEY,
title VARCHAR(255) NOT NULL,
details VARCHAR NULL,
priority INTEGER NOT NULL DEFAULT 1,
created_at TIMESTAMP NOT NULL,
completed_at TIMESTAMP NULL);

INSERT INTO todos (title, details, priority, created_at, completed_at) VALUES ('Mow the Lawn','Mow the back and front yards' 4, '6/27/2017 12:23pm', '6/28/2017 12:23pm');
INSERT INTO todos (title, details, priority, created_at) VALUES
                                ('Clean','Clean the dishes' 3, '6/27/2017'),
                                ('Learn','Learn Javascript' 1, '6/27/2017'),
                                ('Learn','Learn Node.js' 2, '6/27/2017'),
                                ('Sleep','Get some sleep' 5, '6/27/2017');

SELECT * FROM todos WHERE completed_at = NULL;
SELECT * FROM todos WHERE priority > 1;

UPDATE todos SET completed_at = '6/28/2017' WHERE id = 2;

DELETE FROM todolist WHERE completed_at != NULL;
