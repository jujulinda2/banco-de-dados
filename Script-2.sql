SELECT * FROM carro;

SELECT count(*) FROM vaga;

SELECT data_hora_chegada FROM tempo;

UPDATE vaga
SET numero = '33'
WHERE numero = '403';

UPDATE carro 
SET chassi = '4'
WHERE chassi = '6';

UPDATE tempo 
SET data_hora_chegada = '2025-07-22 16:24:40:23'
WHERE data_hora_chegada = '2025-07-23 16:24:40:23';

UPDATE tempo 
SET data_hora_saida = '2025-07-22 22:49:59:59'
WHERE data_hora_saida = '2025-07-23 20:49:59:59';

UPDATE tempo
SET carro_id = 7
WHERE carro_id = 3;


DELETE FROM carro
WHERE modelo = 'Ford';

DELETE FROM tempo
WHERE carro_id = 2 ;

DELETE FROM vaga 
WHERE numero = '87';

delete FROM carro
WHERE chassi = '3';

DELETE FROM carro
WHERE vaga_id = 5;


INSERT INTO vaga (numero)
VALUES ('10'),
 ('34'),
 ('65'),
 ('1023'),
 ('3'),
 ('44'),
 ('73'),
 ('89'),
 ('1233'),
 ('6');

INSERT INTO carro (marca, modelo, chassi, vaga_id)
VALUES ('Ford', 'EcoSport', 'a', 6),
 ('Chevrolet', 'Camaro', 'b', 7),
 ('Honda', 'City', 'c', 8),
 ('Jeep', 'Compass', 'd', 9),
 ('BMW', 'X7', 'e', 10);
 ('Jeep', 'Gladiator', 'f', 11),
 ('Jeep', 'Cherokee', 'g', 12),
 ('Jeep', 'Grand Cherokee', 'h', 13),
 ('Jeep', 'Wrangler', 'i', 14),
 ('Renault', 'Sandero', 'j', 15),
 
 INSERT INTO tempo (data_hora_chegada, data_hora_saida, carro_id, vaga_id)
VALUES ('2025-06-05 07:51:30:25', '2025-06-05 08:40:21:31', 6, 6),
  ('2025-07-21 16:24:40:23', '2025-07-22 20:49:59:59', 7, 7),
  ('2025-08-14 07:45:33:33', '2025-08-14 17:40:42:43', 8, 8),
  ('2025-06-25 08:51:23:28', '2025-06-25 18:40:01:20', 9, 9),
  ('2025-06-22 06:33:13:11', '2025-06-23 6:30:36:24', 10, 10),
  ('2024-08-05 07:51:30:25', '2024-08-05 08:40:21:31', 11, 11),
  ('2024-07-23 16:24:40:23', '2024-07-23 20:49:59:59', 12, 12),
  ('2024-08-04 07:45:33:33', '2024-08-04 17:40:42:43', 13, 13),
  ('2025-06-05 07:51:23:28', '2025-06-05 19:40:01:20', 14, 14),
  ('2025-05-22 05:33:13:11', '2025-05-23 06:30:36:24', 15, 15);
 
 
 SELECT modelo FROM carro c
 INNER JOIN vaga v ON v.id = c.vaga_id
 WHERE v.numero = 44;

SELECT marca FROM carro c
 INNER JOIN vaga v ON v.id = c.vaga_id
 WHERE v.numero = 1023;
 
 SELECT data_hora_chegada FROM tempo t 
 INNER JOIN carro c ON c.id = t.carro_id
 WHERE t.carro_id = 14;
  
 