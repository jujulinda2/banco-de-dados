INSERT INTO vaga (numero)
VALUES ('5'),
 ('87'),
 ('403'),
 ('1001'),
 ('1');


INSERT INTO carro (marca, modelo, chassi, vaga_id)
VALUES ('Ford', 'SUV', '2', 1),
 ('Chevrolet', 'Onix', '6', 2),
 ('Honda', 'Civic', '9', 3),
 ('Jeep', 'Renegade', '3', 4),
 ('BMW', 'X6', '1', 5);

INSERT INTO tempo (data_hora_chegada, data_hora_saida, carro_id, vaga_id)
VALUES ('2025-08-05 07:51:30:25', '2025-08-05 08:40:21:31', 1, 1),
  ('2025-07-23 16:24:40:23', '2025-07-23 20:49:59:59',2, 2),
  ('2025-08-04 07:45:33:33', '2025-08-04 17:40:42:43', 3, 3),
  ('2025-06-05 08:51:23:28', '2025-06-05 18:40:01:20', 4, 4),
  ('2025-05-22 06:33:13:11', '2025-05-23 6:30:36:24', 5, 5);