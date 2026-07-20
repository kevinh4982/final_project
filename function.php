<?php
include("connect.php");

function get_all_lines($sql){
    //echo $sql;
    $req = mysqli_query(dbconnect(),$sql );
    if (!$req) {
        die('Erreur SQL : ' . mysqli_error(dbconnect()));
    }
    $result = array();
    while ($line = mysqli_fetch_assoc($req)) {
        $result[] = $line;
    }
    mysqli_free_result($req);
    return $result;
}

function get_one_line($sql){

    $req = mysqli_query(dbconnect(),$sql );
    if (!$req) {
        die('Erreur SQL : ' . mysqli_error(dbconnect()));
    }
    $result = mysqli_fetch_assoc($req);
    mysqli_free_result($req);
    return $result;
}
function get_etu($etu){
    $sql = 'SELECT * FROM membre WHERE numero_itu = "%s"';
    $sql = sprintf($sql,$etu);
}
function sign_up_etu($etu,$name){
    $sql = 'INSERT INTO membre (nom,numero_itu) VALUE ("%s","%s")';
    $sql = sprintf($name,$etu);
    return $sql;
}

function show_all_product(){
    $sql = 'select produit_membre.id_produit_membre, produit.nom, produit_membre.quantite_dispo, 
    produit_membre.prix_vente, categorie.nom_categorie 
    from produit_membre 
    join produit on produit_membre.id_produit = produit.id_produit 
    join categorie on produit.id_categorie = categorie.id_categorie 
    where produit_membre.quantite_dispo > 0;';

    return get_all_lines($sql);
}

function acheter_produit($id_produit_membre){
    $sql = 'select quantite_dispo from produit_membre where id_produit_membre = "%s"';
    $sql = sprintf($sql, $id_produit_membre);
    $result = get_one_line($sql);
    if ($result['quantite_dispo'] > 0 ){
        $sql = 'update produit_membre set quantite_dispo = quantite_dispo - 1 where id_produit_membre = "%s"';
        $sql = sprintf($sql, $id_produit_membre);
        $req1 = mysqli_query(dbconnect(), $sql);
        if (!$req1){
            die('Erreur SQL update produit_membre : ' . mysqli_error(dbconnect()));
        }
        $sql = 'insert into vente (date_vente, heure, id_produit_membre, quantite) values (CURDATE(), CURTIME(), "%s", 1)';
        $sql = sprintf($sql, $id_produit_membre);
        $req2 = mysqli_query(dbconnect(), $sql);
        if (!$req2){
            die('Erreur SQL insert vente : ' . mysqli_error(dbconnect()));
        }

        return true;
    } else {
        return false;
    }
}
?>