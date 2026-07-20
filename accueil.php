<?php

include("../function/function.php");

$voir = show_all_product();
$by = $_GET['id_produit_membre'];

acheter_produit($by);

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1><strong> -Accueil : Voir produit - </strong></h1>
    <table border="1">
        <tr>
            <th>ID produit membre</th>
            <th>Nom</th>
            <th>Quantité disponible</th>
            <th>Prix</th>
            <th>Nom catégorie</th>
            <th>Action</th>
        </tr>
        <?php foreach($voir as $row) { ?>
        <tr>
            <td><?php echo $row['id_produit_membre']; ?></td>
            <td><?php echo $row['nom']; ?></td>
            <td><?php echo $row['quantite_dispo']; ?></td>
            <td><?php echo $row['prix_vente']; ?></td>
            <td><?php echo $row['nom_categorie']; ?></td>
            <td><a href="accueil.php?id_produit_membre=<?php echo $row['id_produit_membre']; ?>">Acheter</a></td>
        </tr>
        <?php }  ?>
    </table>

    <p><a href="vendre.php?etu=<?php echo $etu ?>"> Vendre produit</a></p>
</body>
</html>