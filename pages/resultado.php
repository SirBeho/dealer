<?php session_start();
require("../php/connection.php");

if (!isset($_SESSION['query'])) {
    header("Location: ./home.php");
    die();
}

extract($_SESSION['post']);
$resultado = $mysqli->query($_SESSION['query']);
$marcas = $mysqli->query("SELECT * FROM `vehiculos_marcas`");
$modelo = $mysqli->query("SELECT * FROM `vehiculos_modelos`");

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
    <div class="w-screen m-6 ">
        <div class="w-full  flex gap-5 items-center">
            <span class="text-2xl font-bold">Your Car spot</span>
            <div class="flex items-center gap-3 border w-3/5  bg-gray-300 rounded-lg p-3 ps-4">
                <input class="w-full outline-none bg-transparent text-gray-600" type="text" name="search" placeholder="Buscar">
                <div class="w-4"><img src="../svg/password.svg" alt="logo"></div>
            </div>
        </div>
        <div class="flex gap-10 m-10">
            <!-- IZQUIERDA -->
            <form action="../php/buscar.php" method="post" class=" ">
                <div class="flex justify-center gap-16  mb-12">

                    <div class="flex flex-col  gap-6 max-w-xs">
                        <span class="text-3xl font-bold ">Buscar Vehiculo</span>
                        <div class=" flex flex-col gap-6 ">

                            <!-- Resto del código HTML del formulario ... -->
                            <label class="flex flex-col w-full">
                                <span>Marca</span>
                                <select class="bg-gray-100 rounded-sm p-2 text-gray-500" name="marca" class="block w-full" placeholder="Marca">
                                     <option value="" disabled selected>Marca</option>
                                      <?php
                                        if ($marcas) {
                                            if ($marcas->num_rows > 0) {
                                                while ($datos = $marcas->fetch_assoc()) {
                                                    echo "<option value=\"{$datos['idVehiculos_Marca']}\">{$datos['marca_nombre']}</option>";
                                                }
                                            } 
                                            $marcas->free();
                                        } else {
                                            echo "<option >Error executing the query: " . $mysqli->error . "</option>";
                                        }
                                        ?>
                                </select>
                            </label>

                            <label class="flex flex-col w-full">
                                <span>Modelo</span>
                                <select class="bg-gray-100 rounded-sm p-2 text-gray-500" name="modelo" class="block w-full" placeholder="Modelo">
                                    <option value="" disabled selected>Modelo</option>
                                    <?php
                                        if ($modelo) {
                                            if ($modelo->num_rows > 0) {
                                                while ($datos = $modelo->fetch_assoc()) {
                                                    echo "<option value=\"{$datos['idVehiculos_Modelos']}\">{$datos['Modelo_nombre']}</option>";
                                                }
                                            } 
                                            $modelo->free();
                                        } else {
                                            echo "<option >Error executing the query: " . $mysqli->error . "</option>";
                                        }
                                        ?>
                                </select>
                            </label>

                            <label class="flex flex-col w-full">
                                <span>Año desde</span>
                                <input class="bg-gray-100 rounded-sm p-2  text-gray-500 outline-none custom-number-input  " type="number" name="anio_min" placeholder="Año" class="block w-full" value="<?php echo $anio_min; ?>">
                            </label>
                            <label class="flex flex-col w-full">
                                <span>Año hasta</span>
                                <input class="bg-gray-100 rounded-sm p-2  text-gray-500 outline-none custom-number-input  " type="number" name="anio_max" placeholder="Año" class="block w-full" value="<?php echo $anio_max; ?>">
                            </label>
                            <label class="flex flex-col w-full">
                                <span>Precio desde</span>
                                <input class="bg-gray-100 rounded-sm p-2 text-gray-500 outline-none custom-number-input " type="number" name="precio_min" placeholder="Precio mínimo" class="block w-full" value="<?php echo $precio_min; ?>">
                            </label>
                            <label class="flex flex-col w-full">
                                <span>Precio hasta</span>
                                <input class="bg-gray-100 rounded-sm p-2 text-gray-500 outline-none custom-number-input " type="number" name="precio_max" placeholder="Precio máximo" class="block w-full" value="<?php echo $precio_max; ?>">
                            </label>
                            <label class="flex flex-col w-full">
                                <span>Estado</span>
                                <select class="bg-gray-100 rounded-sm p-2 text-gray-500" name="condicion[]" class=" w-full" placeholder="Marca">
                                    <option value="Nuevo" <?php echo ($condicion === 'Nuevo') ? 'selected' : ''; ?>>Nuevo</option>
                                    <option value="Usado" <?php echo ($condicion === 'Usado') ? 'selected' : ''; ?>>Usado</option>
                                    <option value="" <?php echo ($condicion == '') ? 'selected' : ''; ?>>Ambos</option>
                                </select>
                            </label>
                            <!-- Resto del código HTML del formulario ... -->


                        </div>
                    </div>
                </div>
                <div class="flex flex-col items-center w-full gap-14">
                    <button class="text-center w-full py-4 bg-orange-600 rounded-lg text-sm leading-normal font-semibold text-white" type="submit">Ajustar Busqueda</button>
                </div>
            </form>
            <!-- DERECHA -->
            <div class="flex flex-wrap  gap-8 content-start w-full">

                <?php
                if ($resultado) {
                    if ($resultado->num_rows > 0) {
                        while ($datos = $resultado->fetch_assoc()) {
                ?>


                            <div class="h-fit bg-gray-300 rounded-xl p-1">
                                <div class="w-72 h-48 object-fill rounded-xl bg-white overflow-hidden">
                                    <img src="../pictures/<?php echo is_file("../pictures/carro_" . $datos['idVehiculos_Venta']) ? "carro_" . $datos['idVehiculos_Venta'] : "default.jpg" ?> " alt="">
                                </div>
                                <p class="font-bold text-black"><?php echo  $datos['marca_nombre']. " " . $datos['Modelo_nombre'] . " " . $datos['year'] ; ?> </p>
                                <p class="text-gray-600">RD$ <?php echo number_format($datos['precio'], 2, ',', '.'); ?></p>
                            </div>

                <?php
                        }
                    } else {
                        echo "<div class='w-full  text-center'> 
                                <span class='text-xl font-semibold'>No hay vehiculos con las caracteristicas especificadas.</span>
                             </div>";
                    }
                    $resultado->free();
                } else {
                    echo "<tr><td colspan='5'>Error executing the query: " . $mysqli->error . "</td></tr>";
                }
                ?>
            </div>
        </div>
    </div>
</body>
</html>