INSERT INTO role
Select * from (Select 1,'ADMIN') as tmp
WHERE NOT EXISTS ( Select role from role where role = 'ADMIN' ) LIMIT 1;

INSERT INTO role
Select * from (Select 2,'USER') as tmp
WHERE NOT EXISTS ( Select role from role where role = 'USER' ) LIMIT 1;

insert into user
Select * from (Select '1' user_id, '1' active, 'admin@localhost' as email, 'Administrator' as name, '$2a$10$bsYtqhRrOVR.AAjWF4phGu8HWw60ZsN9sBh4S46/1HLYqbQmhWUsu', NULL) as tmp
WHERE NOT EXISTS (SELECT user_id from user where email = 'admin@localhost') LIMIT 1;

insert into user_role
Select * from (Select '1' user_id, '1' role_id) as tmp
WHERE NOT EXISTS (SELECT user_id from user_role where user_id = '1' and role_id = '1') LIMIT 1;

