-- nom base de données: itu  

CREATE TABLE menbre (    
    id_menbre INT PRIMARY KEY,
    nom VARCHAR(100),
    numero_itu INT ,
    image_profil VARCHAR(255)
);

CREATE TABLE categorie (
    id_categorie INT PRIMARY KEY,
    nom_categorie VARCHAR(100)
);

CREATE TABLE produit (
    id_produit INT PRIMARY KEY,
    nom VARCHAR(100),
    id_categorie INT 
);

CREATE TABLE produit_menbre (
    id_produit_menbre INT PRIMARY KEY,
    id_produit INT,
    id_menbre INT,
    prix_vente INT
    quantite_dispo INT,
    date_dispo DATE
);

CREATE TABLE vente (
    id_vente INT PRIMARY KEY,
    date_vente DATE,
    heure DATETIME,
    id_produit_menbre INT,
    quantite INT 
);


INSERT INTO menbre (id_menbre, nom, numero_itu, image_profil) VALUES
(1, 'John Doe', 4700, NULL),
(2, 'Jane Smith', 4701, NULL),
(3, 'Alice Johnson', 4702, NULL),
(4, 'Bob Brown', 4703, NULL),
(5, 'Charlie Davis', 4704, NULL),
(6, 'Diana Evans', 4705, NULL),
(7, 'Frank Green', 4706, NULL),
(8, 'Grace Harris', 4707, NULL),
(9, 'Henry Jackson', 4708, NULL),
(10, 'Ivy King', 4709, NULL);

INSERT INTO categorie (id_categorie, nom_categorie) VALUES
(1, 'plat'),
(2, 'boisson'),
(3, 'snack'),
(4, 'dessert');

INSERT INTO produit (id_produit, nom, id_categorie) VALUES
(1, 'Pizza', 1),
(2, 'Burger', 1),
(3, 'banane', 4),
(4, 'Salad', 1),
(5, 'Soda', 2),
(6, 'gateau', 4),
(7, 'Water', 2),
(8, 'Chips', 3),
(9, 'Chocolate', 3),
(10, 'Ice Cream', 4),
(11, 'Pasta', 1),
(12, 'Juice', 2),
(13, 'Cookie', 3),
(14, 'Fruit Salad', 4),
(15, 'Sandwich', 1);

INSERT INTO produit_menbre (id_produit_menbre, id_produit, id_menbre, prix_vente, quantite_dispo, date_dispo) VALUES
(1, 1, 1, 10, 50, '2026-06-01'),
(2, 2, 2, 8, 30, '2026-06-02'),
(3, 3, 3, 5, 20, '2026-06-03'),
(4, 4, 4, 7, 25, '2026-06-04'),
(5, 5, 5, 3, 40, '2026-06-05'),
(6, 6, 6, 6, 15, '2026-06-06'),
(7, 7, 7, 2, 60, '2026-06-07'),
(8, 8, 8, 4, 35, '2026-06-08'),
(9, 9, 9, 5.5, 45, '2026-06-09'),
(10, 10, 10, 7.5, 20, '2026-06-10');

INSERT INTO vente (id_vente, date_vente, heure, id_produit_menbre, quantite) VALUES
(1, '2026-06-01', '10:00:00', 1, 2),
(2, '2026-06-02', '11:30:00', 2, 1),
(3, '2026-06-03', '12:15:00', 3, 3),
(4, '2026-06-04', '13:45:00', 4, 2),
(5, '2026-06-05', '14:20:00', 5, 5),
(6, '2026-06-06', '15:10:00', 6, 1),
(7, '2026-06-07', '16:30:00', 7, 4),
(8, '2026-06-08', '17:50:00', 8, 2),
(9, '2026-06-09', '18:25:00', 9, 3),
(10, '2026-06-10', '19:40:00', 10, 1),
(11, '2026-06-11', '20:15:00', 1, 2),
(12, '2026-06-12', '21:30:00', 2, 1),
(13, '2026-06-13', '22:45:00', 3, 3),
(14, '2026-06-14', '23:10:00', 4, 2),
(15, '2026-06-15', '09:50:00', 5, 5),
(16, '2026-06-16', '10:25:00', 6, 1),
(17, '2026-06-17', '11:40:00', 7, 4),
(18, '2026-06-18', '12:55:00', 8, 2),
(19, '2026-06-19', '13:30:00', 9, 3),
(20, '2026-06-20', '14:45:00', 10, 1);