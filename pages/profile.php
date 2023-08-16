<?php
// Iniciar sesión y redirigir a la página de inicio de sesión si no hay una sesión activa
session_start();
 if (!isset($_SESSION['persona'])) {
    header("Location: ../index.php");
    die();
}

// Extraer información del persona de la sesión activa
extract($_SESSION['persona']);

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Incluir archivo de Js y estilos CSS -->
    <script src="../js/funciones.js" defer></script>
    <script src="../js/menu.js" defer></script>
    <link href="../css/output.css" rel="stylesheet">
    <title>Login</title>
</head>

<body>
    <div class="min-h-screen flex flex-wrap justify-center sm:content-center font-['Open_Sans']">
        <div class="flex flex-col items-center w-full max-w-md  sm:p-12  rounded-3xl  text-[#333]">

            <div class="my-8">
                <h3 class="font-bold text-lg text-center mb-2 "> Perfil </h3>
                <div class="w-20">
                <img src="../pictures/auto.png" alt="">
            </div>
            </div>

            <!-- Formulario de inicio de sesión -->
            <form  method="post" class=" flex  w-full flex-col gap-4 relative text-gray-500">

                <div class="flex items-center gap-3 border border-gray-BD rounded-lg p-3 ps-4">
                    <div class="w-4"><img src="../svg/password.svg" alt="logo"></div>
                    <input class="outline-none w-full" type="text" name="name" autocomplete="off" placeholder="Nombre" value="<?php  echo $nombre." ".$apellido?>" disabled>
                </div>

                <div class="flex items-center gap-3 border border-gray-BD rounded-lg p-3 ps-4">
                    <div class="w-4"><img src="../svg/email.svg" alt="logo"></div>
                    <input class="outline-none w-full " type="email" name="email" autocomplete="off" placeholder="Correo" value="<?php echo $correo?>" disabled>
                </div>
             
                <div class="flex items-center gap-3 border border-gray-BD rounded-lg p-3 ps-4">
                    <div class="w-4"><img src="../svg/password.svg" alt="logo"></div>
                    <input class="outline-none w-full" type="text" name="telefono" autocomplete="off" placeholder="Telefono" value="<?php echo $numTel?>" disabled>
                </div>

                <?php
                if (isset($_SESSION['error_message'])) {
                    echo '<p id="msj" class="text-red-500 w-full text-center absolute transform duration-500 ease-in-out mb-8 bottom-8" >' . $_SESSION['error_message'] . '</p>';
                    unset($_SESSION['error_message']);
                }
                ?>

                <!-- Botón para enviar el formulario -->
                <a  class="w-full text-center  py-4 mt-2 bg-orange-600 rounded-lg text-sm  font-semibold text-white" type="submit">Vender Vehiculo</a>
                <a href="./home.php" class="w-full text-center py-4 mt-2 bg-orange-600 rounded-lg text-sm  font-semibold text-white" type="submit">Ver catalogo de Ventas</a>
                <button data-modal-target="authentication-modal" data-modal-toggle="authentication-modal" id="edit_password" class="w-full text-center py-4 mt-2 bg-orange-600 rounded-lg text-sm  font-semibold text-white" type="button">Cambiar Contraseña</button>
                <a href="../php/logout.php" class="w-full py-4 mt-2 bg-orange-600 text-center  rounded-lg text-sm leading-normal font-semibold text-white" type="submit">Cerrar Sesion</a>
            </form>
            <?php include "./modal_password.php" ?>
        </div>
    </div>

</body>

</html>