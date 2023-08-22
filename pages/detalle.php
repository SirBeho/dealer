<?php session_start();
require("../php/connection.php");

if (!isset($_GET["id"])) {
    header("Location: ./home.php");
    die();
}
$caracteristicas = $mysqli->query("SELECT * FROM `vehiculo_categoria`");
$resultado = $mysqli->query("SELECT * from vehiculos_venta left JOIN vehiculos_modelos on idVehiculos_Modelos = vehiculo_modelo  join vehiculos_marcas on vehiculos_modelos.marca = vehiculos_marcas.idVehiculos_Marca join vehiculo_categoria on vehiculos_venta.vehiculo_Categoria = vehiculo_categoria.idVehiculo_Categoria where vehiculos_venta.idVehiculos_Venta =" . $_GET["id"])->fetch_assoc();
var_dump($resultado);
extract($resultado);

/* $data = $mysqli->query("SELECT * FROM `vehiculo_categoria`");
$categoria = $mysqli->query("SELECT * FROM `vehiculo_categoria`");
$marcas = $mysqli->query("SELECT * FROM `vehiculos_marcas`");
$modelos = $mysqli->query("SELECT * FROM `vehiculos_modelos`"); */

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Incluir archivo de Js y estilos CSS -->
    <script src="../js/funciones.js" defer></script>

    <link href="../css/output.css" rel="stylesheet">
    <link href="../css/input.css" rel="stylesheet">
    <title>Login</title>

</head>

<body>
    <div class="w-screen p-6 ">
        <div class=" flex justify-between items-center mt-2">
            <span class="text-3xl font-bold ">
                <?php echo $year . " " . $marca_nombre . " " . $Modelo_nombre . " "; ?>
                <span class="text-gray-500"> RD$ <?php echo number_format($precio, 2, '.', ','); ?> </span>
            </span>
            <div class="w-20">
                <img src="../pictures/auto.png" alt="">
            </div>
        </div>

        <div class="flex flex-col gap-6 items-center ">
            <div class="flex gap-12">
                 
            </div>
            <div class="flex flex-col font-semibold">
                <span>Datos Generales</span>
                <span>Precio: <span class="text-gray-500"><?php echo number_format($precio, 2, '.', ',');  ?> </span></span>
                <span>Motor: <span class="text-gray-500"><?php echo $precio; ?> </span></span>
                <span>Tipo: <span class="text-gray-500"><?php echo $nombre_Categoria; ?> </span></span>
                <span>Transmision: <span class="text-gray-500"><?php echo $precio; ?> </span></span>
                <span>Puertas: <span class="text-gray-500"><?php echo $precio; ?> </span></span>
                <span>Traccion: <span class="text-gray-500"><?php echo $precio; ?> </span></span>
                <span>Pasajeros: <span class="text-gray-500"><?php echo $precio; ?> </span></span>
                <span>Caracteristicas</span>
                <div class="grid grid-cols-2 gap-1 gap-x-14 h-80  pr-4 ">

                    <?php
                    if ($caracteristicas) {
                        if ($caracteristicas->num_rows > 0) {

                            while ($datos = $caracteristicas->fetch_assoc()) {
                    ?>
                                <label class=" rounded-lg ">
                                    <input class="me-1" type="checkbox" name="tipo[]" value="<?php echo $datos['idVehiculo_Categoria'] ?>">
                                    <?php echo $datos['nombre_Categoria'] ?>
                                </label>
                    <?php
                            }
                        }
                        $caracteristicas->free();
                    } else {
                        echo "<option >Error executing the query: " . $mysqli->error . "</option>";
                    }
                    ?>


                </div>
                <div class="grid grid-cols-2 gap-3 gap-x-14  pr-4 mt-6 ">
                    <span>Benjmanin Tavarez</span>
                    <button  class="w-full text-center p-2 bg-orange-600 rounded-lg text-sm  font-semibold text-white" type="submit">Solicitar test Driver</button>
                    <span>809-889-2235</span>
                    <button  class="w-full text-center  p-2 bg-orange-600 rounded-lg text-sm  font-semibold text-white" type="submit">Agendar Compra</button>
                </div>
            </div>
        </div>

    </div>
</body>

</html>