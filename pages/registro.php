<?php session_start();
require("../php/connection.php");

$caracteristicas = $mysqli->query("SELECT * FROM `vehiculo_categoria`");
$categoria = $mysqli->query("SELECT * FROM `vehiculo_categoria`");
$marcas = $mysqli->query("SELECT * FROM `vehiculos_marcas`");
$modelos = $mysqli->query("SELECT * FROM `vehiculos_modelos`")

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
            <span class="text-3xl font-bold ">Registro de Vehiculo</span>
            <div class="w-20">
                <img src="../pictures/auto.png" alt="">
            </div>
        </div>
        <form action="./detalle.php?id=1" method="post" class="flex flex-col gap-6 items-center ">
            <div class="flex gap-12">
                <div class="flex flex-col gap-5">
                    <div class="grid grid-cols-2 gap-4">
                        <label>
                            <span>marca</span></br>
                            <select id="marca" name="marca" onchange="updateModelos()" >

                                <option value="" selected>Marca</option>
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
                        <label>
                            <span>Modelo</span></br>
                            <select id="modelo" name="modelo" >

                                <option value="" selected>Modelo</option>
                            </select>
                        </label>


                        <label>
                            <span>Tipo de Vehiculo</span></br>
                            <select id="categoria" name="categoria" >

                                <option value="" selected>Tipo</option>
                                <?php

                                if ($categoria) {

                                    if ($categoria->num_rows > 0) {
                                        while ($datos = $categoria->fetch_assoc()) {

                                            echo "<option value=\"{$datos['idVehiculo_Categoria']}\">{$datos['nombre_Categoria']}</option>";
                                        }
                                    }
                                    $categoria->free();
                                } else {
                                    echo "<option >Error executing the query: " . $mysqli->error . "</option>";
                                }
                                ?>
                            </select>
                        </label>



                        <label >
                            <span>Año</span></br>
                            <input  type="number" name="anio_max" placeholder="Año ">
                        </label>



                    </div>
                    <div class="flex text-xl font-bold  gap-4 ">
                        Condición:
                        <label>
                            <input  type="checkbox" name="condicion[]" value="1"> Nuevo
                        </label>
                        <label>
                            <input  type="checkbox" name="condicion[]" value="0"> Usado
                        </label>
                    </div>
                    <div>
                        <span>Caracteristicas</span>
                        <div class="grid grid-cols-2 gap-1 gap-x-14 h-80  pr-4 ">

                            <?php
                            if ($caracteristicas) {
                                if ($caracteristicas->num_rows > 0) {

                                    while ($datos = $caracteristicas->fetch_assoc()) {
                            ?>
                                        <label class="  ">
                                            <input  type="checkbox" name="tipo[]" value="<?php echo $datos['idVehiculo_Categoria'] ?>">
                                            &nbsp;<?php echo $datos['nombre_Categoria'] ?>
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
                    </div>
                    <label >
                        <span>Precio</span>
                        <input  type="number" name="precio" placeholder="Precio ">
                    </label>
                </div>
                <div class="flex flex-col gap-5 text-xl font-bold   ">
                    <span>Datos tecnicos</span>
                    <label >
                        <span>Motor</span></br>
                        <input  type="number" name="precio" placeholder="Precio ">
                    </label>

                    <label >
                        <span>Trasmision</span></br>
                        <input  type="number" name="precio" placeholder="Precio ">
                    </label>
                    <label >
                        <span>Traccion</span></br>
                        <input  type="number" name="precio" placeholder="Precio ">
                    </label>
                    <label >
                        <span>Pasajeros</span></br>
                        <input  type="number" name="precio" placeholder="Precio ">
                    </label>
                    <label >
                        <span>Puertas</span></br>
                        <input  type="number" name="precio" placeholder="Precio ">
                    </label>
                </div>
            </div>
            <div class="w-full max-w-sm  ">

                <label class="  ">
                    <span>Descripcion</span>
                    <textarea  rows="5" name="precio" placeholder="Escriba una descripcion sobre su vehiculo "></textarea>
                </label>
                <label>
                    <span>Subir Fotos</span>
                    <input type="file" class="hidden">

                </label>
                
                <button  class="w-full text-center  py-4 mt-5 bg-orange-600 rounded-lg text-sm  font-semibold text-white" type="submit">Registrar Vehiculo</a>
            </div>
        </div>
    </div>
</body>
</html>