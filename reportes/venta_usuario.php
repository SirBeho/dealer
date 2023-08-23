<?php session_start();
require("../php/connection.php");




$marcas = $mysqli->query("SELECT * FROM `vehiculos_marcas`");





$marcas2 = $mysqli->query("SELECT * FROM `vehiculos_marcas`");

$modelo = $mysqli->query("SELECT * FROM `vehiculos_modelos` join vehiculos_marcas on marca = idVehiculos_Marca ");
$caracteristicas = $mysqli->query("SELECT * FROM `vehiculo_caracteristicas`");
$categoria = $mysqli->query("SELECT * FROM `vehiculo_categoria`");
?>
<!DOCTYPE html>
<html lang="en">
<!-- home -->

<head>
    <!-- Incluir archivo de Js y estilos CSS -->
    <script src="../js/funciones.js" defer></script>
    <script src="../js/menu.js" defer></script>

    <link href="../css/output.css" rel="stylesheet">
    <link href="../css/input.css" rel="stylesheet">


    <script src="../node_modules/flowbite/dist/flowbite.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
    <script src="../DataTables/datatables.min.js"></script>
    <link href="../DataTables/datatables.min.css" rel="stylesheet">


    <title>Login</title>

</head>

<body>
    <?php include "../pages/nav.php" ?>
    <script>
        $(document).ready(function() {
            $('#table_marcas').DataTable();
            $('#table_modelos').DataTable();
            $('#table_caracteristica').DataTable();
            $('#table_categoria').DataTable();
        });
    </script>

    <div class="w-screen p-6 mt-14">
        <div class="w-full  flex gap-5 items-center relative">

            <div class="flex gap-5">

                <button mostrar="#marcas" class="activar bg-orange-400 rounded-md p-2 ">Marcas</button>
                <button mostrar="#modelos" class="activar bg-orange-400 rounded-md p-2">Modelos</button>
                <button mostrar="#caracteristica" class="activar bg-orange-400 rounded-md p-2">Caracteristica</button>
                <button mostrar="#categoria" class="activar bg-orange-400 rounded-md p-2">Categoria</button>
            </div>
            <?php
            if (isset($_SESSION['error_message'])) {
                echo '<p id="msj" class="text-red-500 w-full text-center absolute transform duration-500 ease-in-out -mb-16 bottom-8">' . $_SESSION['error_message'] . '</p>';
                unset($_SESSION['error_message']);
            }
            if (isset($_SESSION['success_message'])) {
                echo '<span id="msj" class="text-green-500 w-full text-center absolute transform duration-500 ease-in-out left-0 -mb-16 bottom-8">' . $_SESSION['success_message'] . '</span>';
                unset($_SESSION['success_message']);
            }
            ?>
        </div>
        <div id="marcas" class="contenedor ">
            <div class="flex justify-end">
                <button class="flex items-cent gap-2 bg-green-500 p-2 rounded-md text-white" data-modal-target="marca-modal" data-modal-toggle="marca-modal">
                    <span>Añadir Marca</span>
                    <div class="w-5">
                        <img class="w-full h-full" src="../svg/add.svg" alt="">
                    </div>
                </button>
            </div>
            <table id="table_marcas" class="display table bg-gray-50 py-2 ">
                <thead>
                    <tr>
                        <th>id</th>
                        <th>Marca</th>
                        <th>Accion</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    if ($marcas) {
                        if ($marcas->num_rows > 0) {

                            while ($datos = $marcas->fetch_assoc()) {
                                $eliminar = array(
                                    'query' => "delete from vehiculos_marcas where idVehiculos_Marca = " . $datos['idVehiculos_Marca'],
                                    'msj' =>  "Eliminar  " . $datos['marca_nombre']
                                );
                    ?>
                                <tr>
                                    <td><?php echo $datos['idVehiculos_Marca']; ?></td>
                                    <td><?php echo $datos['marca_nombre']; ?></td>
                                    <td>
                                        <div class="flex gap-2 w-12 justify-center overflow-hidden bg-transparent">
                                            <div>
                                                <img onclick='EditarMarca(<?php echo json_encode($datos); ?>)' data-modal-target="marca-modal" data-modal-toggle="marca-modal" class="cursor-pointer" src="../svg/edit.svg" alt="">
                                            </div>
                                            <div>
                                                <img onclick='Eliminar(<?php echo json_encode($eliminar); ?> )' data-modal-target="delete-modal" data-modal-toggle="delete-modal" src="../svg/trash.svg" class="cursor-pointer" alt="">
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                    <?php
                            }
                        }
                    } else {
                        echo "<tr><td colspan='5'>Error executing the query: " . $mysqli->error . "</td></tr>";
                    }
                    ?>
                </tbody>
                <tfoot>
                    <tr>
                        <th>id</th>
                        <th>Marca</th>
                        <th>Accion</th>
                    </tr>
                </tfoot>
            </table>
        </div>



    </div>
    <?php include  '../modales/modal_delete.php' ?>
    <?php include  '../modales/modal_create_update.php' ?>

</body>

</html>