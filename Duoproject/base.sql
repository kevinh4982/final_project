-- nom base de données: itu  

CREATE TABLE membre (    
    id_membre INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(100),
    numero_itu INT ,
    image_profil VARCHAR(255)
);

CREATE TABLE categorie (
    id_categorie INT PRIMARY KEY AUTO_INCREMENT,
    nom_categorie VARCHAR(100)
);

CREATE TABLE produit (
    id_produit INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(100),
    id_categorie INT,
    prix_refrence INT
);

CREATE TABLE produit_membre (
    id_produit_membre INT PRIMARY KEY AUTO_INCREMENT,
    id_produit INT,
    id_membre INT,
    prix_vente INT,
    quantite_dispo INT,
    date_dispo DATE
);

CREATE TABLE vente (
    id_vente INT PRIMARY KEY AUTO_INCREMENT,
    date_vente DATE,
    heure TIME,
    id_produit_membre INT,
    quantite INT 
);


INSERT INTO membre ( nom, numero_itu, image_profil) VALUES
('John Doe', 4700, NULL),
('Jane Smith', 4701, NULL),
('Alice Johnson', 4702, NULL),
('Bob Brown', 4703, NULL),
('Charlie Davis', 4704, NULL),
('Diana Evans', 4705, NULL),
('Frank Green', 4706, NULL),
('Grace Harris', 4707, NULL),
('Henry Jackson', 4708, NULL),
( 'Ivy King', 4709, NULL);

INSERT INTO categorie ( nom_categorie) VALUES
( 'plat'),
( 'boisson'),
( 'snack'),
( 'dessert');

INSERT INTO produit (nom, id_categorie,prix_refrence) VALUES
('Pizza', 1 , 10000),
('Burger', 1, 8000),
('banane', 4, 5000),
('Salad', 1, 7000),
('Soda', 2, 3000),
('Coffee', 2, 6000),
('Tea', 2, 2000),
('Smoothie', 2, 4000),
('Yogurt', 4, 5000),
( 'Pancakes', 4, 7500),
('gateau', 4, 10000),
('Water', 2, 2000),
('Chips', 3, 3000),
('Chocolate', 3, 5000),
( 'Ice Cream', 4, 8000),
( 'Pasta', 1, 9000),
( 'Juice', 2, 4000),
( 'Cookie', 3, 3000),
( 'Fruit Salad', 4, 6000),
( 'Sandwich', 1, 8000);

INSERT INTO produit_membre (id_produit, id_membre, prix_vente, quantite_dispo, date_dispo) VALUES
(1, 1, 10000, 50, '2026-06-01'),
(2, 2, 8000, 30, '2026-06-02'),
(3, 3, 5000, 20, '2026-06-03'),
(4, 4, 7000, 25, '2026-06-04'),
(5, 5, 3000, 40, '2026-06-05'),
(6, 6, 6000, 15, '2026-06-06'),
(7, 7, 2000, 60, '2026-06-07'),
(13, 8, 4000, 35, '2026-06-08'),
(9, 9, 5000, 45, '2026-06-09'),
( 10, 10, 7500, 20, '2026-06-10'),
( 15, 1, 10000, 50, '2026-06-11'),
( 12, 2, 8000, 30, '2026-06-12'),
( 3, 3, 5000, 20, '2026-06-13'),
( 14, 4, 7000, 25, '2026-06-14'),

(10 ,10 ,7500 ,20 , '2026-06-20');

INSERT INTO vente ( date_vente, heure, id_produit_membre, quantite) VALUES
('2026-06-01', '10:00:00', 1, 2),
('2026-06-02', '11:30:00', 2, 1),
('2026-06-03', '12:15:00', 3, 3),
('2026-06-04', '13:45:00', 4, 2),
('2026-06-05', '14:20:00', 5, 5),
('2026-06-06', '15:10:00', 6, 1),
('2026-06-07', '16:30:00', 7, 4),
('2026-06-08', '17:50:00', 8, 2),
('2026-06-09', '18:25:00', 9, 3),
( '2026-06-10', '19:40:00', 10, 1),
( '2026-06-11', '20:15:00', 1, 2),
( '2026-06-12', '21:30:00', 2, 1),
( '2026-06-13', '22:45:00', 13, 3),
( '2026-06-14', '23:10:00', 4, 2),
( '2026-06-15', '09:50:00', 15, 5),
( '2026-06-16', '10:25:00', 6, 1),
( '2026-06-17', '11:40:00', 7, 4),
( '2026-06-18', '12:55:00', 12, 2),
( '2026-06-19', '13:30:00', 11, 3),
( '2026-06-20', '14:45:00', 10, 1);