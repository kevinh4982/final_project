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

