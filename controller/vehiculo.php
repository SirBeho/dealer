<?php
include '../functions/error.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    session_start();

    
    extract($_POST);
    var_dump($_POST);
        $user_id = $_SESSION['persona']['idUsuario'];
        $condicion = $condicion[0];

    require("../php/connection.php");
    
        try {
            
           $query = "INSERT INTO vehiculos_venta  (`vehiculo_matricula`, `precio`, `year`, `vehiculo_modelo`, `vehiculo_Categoria`, `nuevo`,  `puertas`, `motor`, `trasmision`, `traccion`, `pasajeros`, `color`) 
            VALUES ('$matricula ','$precio ','$year ','$modelo','$categoria','$condicion','$puertas','$motor','$trasmision','$traccion','$pasajeros','$puertas')";
        
            $mysqli->query($query);
            $_SESSION['success_message'] = "El Vehiculo fue registrado correctamente";
           
       } catch (Exception $e) {
            $_SESSION['error_message'] = Error_SQL($e);
      }

      $UltimoID =  $mysqli->query("SELECT MAX(id) AS ultimo_id FROM vehiculos_venta")->fetch_assoc();

foreach ($caracteristicas as $caracteristica) {
            
    $mysqli -> query("INSERT INTO caracteristicasvsvehiculoventa (`IdCaracteristica`, `IdVehiculoVenta`) VALUES ('$caracteristica ','$UltimoID')"); 
} 



//   header("Location: ../pages/home.php");
//    exit;
}
