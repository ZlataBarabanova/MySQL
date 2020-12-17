CREATE TABLE wage
(id INT PRIMARY KEY AUTO_INCREMENT,
Data_pay DATE,
Pay DECIMAL);

SELECT * FROM wage;

INSERT INTO wage (Data_pay, Pay) VALUES
('2020-01-10', '31663.30'),
('2020-02-10', '17584.8'),
('2020-02-14', '11270.62'),
('2020-02-25', '7699.80'),
('2020-03-10', '33147.20'),
('2020-03-25', '2381.0');

SELECT *FROM wage;

SELECT SUM(Pay) FROM wage;

SELECT 
min(Pay) AS MIN,
max(Pay) AS MAX
FROM wage;

SELECT * FROM wage ORDER BY pay;
SELECT * FROM wage ORDER BY pay DESC;

INSERT INTO wage (Data_pay, Pay) VALUES
('2020-04-15', '4590.33'); 

UPDATE wage SET
Data_pay = '2020-04-10'
WHERE id = 7;

SELECT *FROM wage;



SELECT * FROM distances;
DELETE FROM distances
WHERE id = 2;