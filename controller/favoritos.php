<?php
require("../php/connection.php");

if (isset($_GET)) {
    extract($_GET);
    
    $resultado = $mysqli->query("SELECT * FROM favoritos WHERE idUsuario = $id_u and idVehiculo = $id_v")->fetch_assoc();
    $lsita = array();
    

    if($resultado){
        
        $mysqli->query("delete FROM favoritos WHERE idFavorito =".$resultado['idFavorito']);
    }else{
       
        $mysqli->query("insert into favoritos (`idUsuario`, `idVehiculo`) values ('$id_u','$id_v')");
    }

    echo json_encode($resultado);
}
?>
