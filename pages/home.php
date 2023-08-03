<?php session_start(); ?>
<!DOCTYPE html>
<html lang="en">
<!-- home -->
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

        <form action="../php/buscar.php" method="post" class="mt-14 ">
            <div class="flex justify-center gap-14  mb-12">

                <div class="flex flex-col gap-6 max-w-xs">
                    <span class="text-3xl font-bold mt-2">Buscar Vehiculo</span>

                    <div class="flex text-xl font-bold text-orange-600 gap-4 ">
                        Condición:
                        <label>
                            <input class="outline outline-orange-600" type="checkbox" name="condicion[]" value="Nuevo"> Nuevo
                        </label>
                        <label>
                            <input class="outline outline-orange-600" type="checkbox" name="condicion[]" value="Usado"> Usado
                        </label>
                    </div>

                    <div class="grid grid-cols-2 gap-4">


                        <select class="bg-gray-100 rounded-sm p-2 text-gray-500" name="marca" class="block w-full" placeholder="Marca">
                            <option value="" disabled   selected>Marca</option>
                            <option value="Toyota">Toyota</option>
                            <option value="Honda">Honda</option>
                            <!-- Agregar otras marcas aquí -->
                        </select>

                        <select class="bg-gray-100 rounded-sm p-2 text-gray-500" name="modelo" class="block w-full" placeholder="Modelo">
                            <option value="" disabled selected>Modelo</option>
                            <option value="Toyota">Toyota</option>
                            <option value="Honda">Honda</option>
                        </select>

                        <label class="bg-gray-100 rounded-sm p-2">

                            <input class="bg-transparent text-gray-500 outline-none custom-number-input " type="number" name="anio_min" placeholder="Año mínimo" class="block w-full">
                        </label>
                        <label class="bg-gray-100 rounded-sm p-2">

                            <input class="bg-transparent text-gray-500 outline-none custom-number-input  " type="number" name="anio_max" placeholder="Año máximo" class="block w-full">
                        </label>
                        <label class="bg-gray-100 rounded-sm p-2">

                            <input class="bg-transparent text-gray-500 outline-none custom-number-input " type="number" name="precio_min" placeholder="Precio mínimo" class="block w-full">
                        </label>
                        <label class="bg-gray-100 rounded-sm p-2 appearance-none">

                            <input class="bg-transparent text-gray-500 outline-none custom-number-input " type="number" name="precio_max" placeholder="Precio máximo" class="block w-full">
                        </label>

                    </div>




                </div>

                <div class="flex flex-col gap-8">
                    <span class="text-3xl font-bold">Tipo Vehiculo</span>
                    <div class="grid grid-cols-2 gap-6 gap-x-14   text-white">
                        <label class="bg-orange-600 rounded-lg p-1 text-center">
                            <input class="text-white" type="checkbox" name="tipo[]" value="Sedán"> Sedán
                        </label>
                        <label class="bg-orange-600 rounded-lg p-1 text-center">
                            <input type="checkbox" name="tipo[]" value="Sedán"> Sedán
                        </label>
                        <label class="bg-orange-600 rounded-lg p-1 text-center">
                            <input type="checkbox" name="tipo[]" value="Sedán"> Sedán
                        </label>
                        <label class="bg-orange-600 rounded-lg p-1 text-center">
                            <input type="checkbox" name="tipo[]" value="Sedán"> Sedán
                        </label>

                        <label class="bg-orange-600 rounded-lg p-1 text-center">
                            <input type="checkbox" name="tipo[]" value="SUV"> SUV
                        </label>

                        <label class="bg-orange-600 rounded-lg p-1 text-center">
                            <input type="checkbox" name="tipo[]" value="Camioneta"> Camioneta
                        </label>
                        <label class="bg-orange-600 rounded-lg p-1 text-center">
                            <input type="checkbox" name="tipo[]" value="Camioneta"> Camioneta
                        </label>
                        <label class="bg-orange-600 rounded-lg p-1 text-center">
                            <input type="checkbox" name="tipo[]" value="Camioneta"> Camioneta
                        </label>
                        <label class="bg-orange-600 rounded-lg p-1 text-center">
                            <input type="checkbox" name="tipo[]" value="Camioneta"> Camioneta
                        </label>
                        <label class="bg-orange-600 rounded-lg p-1 text-center">
                            <input type="checkbox" name="tipo[]" value="Camioneta"> Camioneta
                        </label>


                    </div>
                </div>

            </div>
            <div class="flex flex-col items-center w-full gap-14">
                <button class="text-center w-28 py-4 bg-orange-600 rounded-lg text-sm leading-normal font-semibold text-white" type="submit">Buscar</button>
                <a class="text-center w-44 py-4 bg-orange-600 rounded-lg text-sm leading-normal font-semibold text-white">Vender tu carro</a>
            </div>
        </form>

    </div>

</body>


</html>