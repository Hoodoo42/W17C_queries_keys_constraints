INSERT INTO blogger(username, password, bio, name, created_at, email, age) 
VALUES('userone', 'first123', 'user one bio', 'Bob', '2009-02-07', 'one@email.com', 36 ),
('usertwo', 'second123', 'user two bio', 'Bobb', '2019-03-27', 'two@email.com', 32 ), 
('userthree', 'third123', 'user three bio', 'Bobby', '2022-12-02', 'three@email.com', 19 ),
 ('userfour', 'fourth123', 'user four bio', 'Bobby', '2019-11-07', 'four@email.com', 22 ), 
 ('userfive', 'fifth123', 'user five bio', 'BobbyLee', '2021-09-03', 'five@email.com', 26),
 ('usersix',  'pass', 'user six bio', 'BobbyJo', '2008-06-17', 'six@email.com', 62), 
 ('userseven', 'seventh123', 'user seven bio', 'Bobbob', '2019-10-06', 'seven@email.com', 37),
 ('usereight', 'eigth123', 'user eight bio', 'Bobba', '2017-05-07', 'eight@email.com', 73), 
 ('usernine', 'ninth123', 'user nine bio', 'Bobbo', '2022-04-23', 'nine@email.com', 36),
 ('userten', 'pass', 'user ten bio', 'Bobbee', '2020-12-17', 'ten@email.com', 82);
 
SELECT username, password, bio, name, created_at, email, age FROM blogger WHERE created_at > '2020-01-01';

DELETE FROM blogger WHERE username = 'test' OR email = 'test@test.com';

UPDATE blogger SET password = 'bad_password' WHERE password = 'pass';