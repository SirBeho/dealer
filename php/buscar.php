
<?php


if ($_SERVER["REQUEST_METHOD"] === "POST") {


    session_start();
    require("connection.php");

    $_POST["condicion"] = (isset($_POST["condicion"]) and $_POST["condicion"][0] !== '' and count($_POST["condicion"]) === 1)  ? $_POST["condicion"][0] : '';
    $_POST["marca"] = isset($_POST["marca"]) ? $_POST["marca"] : "";
    $_POST["modelo"] = isset($_POST["modelo"]) ? $_POST["modelo"] : "";
    // Obtener los valores seleccionados
    $tiposSeleccionados = isset($_POST["tipo"]) ? $_POST["tipo"] : array();
    $condicionesSeleccionadas = $_POST["condicion"];
    $marcaSeleccionada = $_POST["marca"];
    $modeloSeleccionado = $_POST["modelo"];
    $anioMin = $_POST["anio_min"];
    $anioMax = $_POST["anio_max"];
    $precioMin = $_POST["precio_min"];
    $precioMax = $_POST["precio_max"];

    // Construir las condiciones para la consulta SQL
    $condiciones = array();
    
    if (!empty($tiposSeleccionados)) {
        $tiposSeleccionados = "'" . implode("','", $tiposSeleccionados) . "'";
        $condiciones[] = "tipo IN ($tiposSeleccionados)";
    }

  /*   if (!empty($condicionesSeleccionadas)) {
        $condicionesSeleccionadas = "'" . implode("','", $condicionesSeleccionadas) . "'";
        $condiciones[] = "condicion IN ($condicionesSeleccionadas)";
    } */

    if (!empty($condicionesSeleccionadas)) {
        $condiciones[] = "condicion = '$condicionesSeleccionadas'";
    }

    if (!empty($marcaSeleccionada)) {
        $condiciones[] = "marca = '$marcaSeleccionada'";
    }

    if (!empty($modeloSeleccionado)) {
        $condiciones[] = "modelo = '$modeloSeleccionado'";
    } 

    if (!empty($anioMin)) {
        $condiciones[] = "year >= $anioMin";
    }

    if (!empty($anioMax)) {
        $condiciones[] = "year <= $anioMax";
    }

    if (!empty($precioMin)) {
        $condiciones[] = "precio >= $precioMin";
    }

    if (!empty($precioMax)) {
        $condiciones[] = "precio <= $precioMax";
    }

    // Construir la consulta SQL
    $sql = "SELECT * FROM vehiculos_venta";

    if (!empty($condiciones)) {
        $sql .= " WHERE " . implode(" AND ", $condiciones);
    }


    $_SESSION['query'] = $sql;
    $_SESSION['post'] = $_POST;
  

   
     header("Location: ../pages/resultado.php");
}

?>
