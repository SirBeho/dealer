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
            <div class=" gap-12">
                
                    <div class="grid grid-cols-2 gap-4">

                        <label>
                            <span>Nombre Cliente</span></br>
                            <input type="text" disabled >
                        </label>


                        <label>
                            <span>Cedula Cliente</span></br>
                            <input type="text" disabled >
                        </label>

                        <label>
                            <span>Marca</span></br>
                            <input type="text" disabled >
                        </label>


                        <label>
                            <span>Modelo</span></br>
                            <input type="text" disabled >
                        </label>

                        <label>
                            <span>Tipo de Vehiculo</span></br>
                            <input type="text" disabled >
                        </label>

                        <label>
                            <span>Año</span></br>
                            <input type="text" disabled >
                        </label>


                        <div class=" text-xl font-bold  gap-4 ">
                            <span>Condición</span></br>

                            <label>
                                <input class="outline " type="checkbox" name="condicion[]" value="1"> Nuevo
                            </label>
                            <label>
                                <input class="outline" type="checkbox" name="condicion[]" value="0"> Usado
                            </label>
                        </div>
                        <label>
                            <span>Color</span></br>
                            <input type="text" disabled >
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
                                        <label class=" rounded-lg ">
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
                    <label class="">
                        <span>Precio</span>
                        <input   name="precio" placeholder="Precio ">
                    </label>
               
                
            </div>
            <div class="w-full max-w-sm  ">

                <label class="  ">
                    <span>Notas de recepcion</span>
                    <textarea  rows="5" name="precio" placeholder="Escriba una descripcion sobre su vehiculo "></textarea>
                </label>

                <button class="w-full text-center  py-4 mt-5 bg-orange-600 rounded-lg text-sm  font-semibold text-white" type="submit">Vehiculo Recibido</a>
            </div>
    </div>
    </div>
</body>

</html>