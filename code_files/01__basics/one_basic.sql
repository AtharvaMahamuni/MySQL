-- SHOW DATABASES;
-- SELECT DATABASE();  --Here it will select NULL database because nothing is used or selected.
-- USE photo_store;   -- don't put database after USE. 
-- SELECT DATABASE();

-- It is good practice to make heading names plurals.
-- CREATE TABLE cameras(
--     model_name VARCHAR(30),
--     quantity INT
-- ); 
-- DESC cameras; -- this command will show the table. this command is known as describe.

-- TODO: camera table done.
-- FIXME: here we done mistake according to ptoblem statement we need to make the table of canon cameras but we made it for just cameras.

-- DROP TABLE cameras;
-- SHOW TABLES;
-- Here we dropped our old table, now
-- TODO: creating new table with name canon cameras

-- CREATE TABLE canon_cameras(
--     model_name VARCHAR(30),
--     quantity INT
-- );

-- DESC canon_cameras;

-- TODO: Inerting data in table.

-- INSERT INTO canon_cameras(model_name, quantity)
-- VALUES("70-D", 12),
-- ("80-D", 19),
-- ("EOS-R", 25),
-- ("EOS-r5", 80),
-- ("EOS-r6", 50);

-- TODO: Answering customer question.

-- SELECT * from canon_cameras;
-- SELECT model_name from canon_cameras;

-- SELECT model_name, quantity from canon_cameras;

-- SELECT model_name, quantity from canon_cameras
-- WHERE model_name='80-D';


-- SELECT model_name, quantity from canon_cameras
-- WHERE  quantity = 50;

SELECT model_name, quantity from canon_cameras
WHERE  quantity >= 50;














