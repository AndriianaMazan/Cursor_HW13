USE airport;

INSERT INTO planemodels VALUES
("Boeing 747"),
("Airbus A320");

INSERT INTO planes VALUES
("UR-11111", "Boeing 747", 467),
("UR-11112", "Boeing 747", 467),
("UR-22221", "Airbus A320", 186),
("UR-22222", "Airbus A320", 186),
("UR-22223", "Airbus A320", 186),
("UR-22224", "Airbus A320", 186),
("UR-22225", "Airbus A320", 186);

INSERT INTO pilots VALUES
(1, "Oleksiiv", "Oleg", 30),
(2, "Kytsay", "Nazar", 29),
(3, "Burliay", "Igor", 34),
(4, "Tsebryk", "Roman", 27),
(5, "Dus", "Ivan", 40),
(6, "Stetsyk", "Orest", 25),
(7, "Korol", "Oleksandr", 25),
(8, "Moroz", "Andriy", 30);

INSERT INTO profreadiness VALUES
(1, 1, "Boeing 747"),
(2, 1, "Airbus A320"),
(3, 2, "Boeing 747"),
(4, 2, "Airbus A320"),
(5, 3, "Boeing 747"),
(6, 4, "Airbus A320"),
(7, 5, "Airbus A320"),
(8, 6, "Airbus A320"),
(9, 7, "Airbus A320"),
(10, 8, "Airbus A320");