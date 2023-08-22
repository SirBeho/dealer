<?php session_start(); ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Incluir archivo de Js y estilos CSS -->
    <script src="../js/funciones.js" defer></script>
    <link href="../css/output.css" rel="stylesheet">
    <title>Login</title>
</head>

<body>
    <div class="min-h-screen flex flex-wrap justify-center sm:content-center font-['Open_Sans']">
        <div class="flex flex-col items-center w-full max-w-md  sm:p-12  rounded-3xl  text-[#333]">

            <div class="w-20">
                <img src="../pictures/auto.png" alt="">
            </div>

            <div class="my-8">
                <h3 class="font-bold text-lg text-center "> Registro </h3>
                <h3 class="font-semibold text-sm text-center "> Your Cart Spot </h3>
            </div>

            <!-- Formulario de inicio de sesión -->
            <form action="../php/register.php" method="post" class=" flex  w-full flex-col gap-4 relative text-gray-500">

                
                <div class="flex items-center gap-3 border border-gray-BD rounded-lg p-3 ps-4">
                    <div class="w-4"><img src="../svg/password.svg" alt="logo"></div>
                    <input class="bg-transparent" type="text" name="name" autocomplete="off" placeholder="Nombre" required>
                </div>

               
                <div class="flex items-center gap-3 border border-gray-BD rounded-lg p-3 ps-4">
                    <div class="w-4"><img src="../svg/email.svg" alt="logo"></div>
                    <input class="bg-transparent " type="email" name="email" autocomplete="off" placeholder="Correo" value="<?php echo isset($_SESSION['login_email']) ? ($_SESSION['login_email']) : '';                                                                                                          unset($_SESSION['login_email']); ?>" required>
                </div>
             
                <div class="flex items-center gap-3 border border-gray-BD rounded-lg p-3 ps-4">
                    <div class="w-4"><img src="../svg/password.svg" alt="logo"></div>
                    <input class="bg-transparent" type="text" name="telefono" autocomplete="off" placeholder="Telefono" required>
                </div>

                <div class="flex items-center gap-3 border border-gray-BD rounded-lg p-3 ps-4">
                    <div class="w-4"><img src="../svg/password.svg" alt="logo"></div>
                    <input class="bg-transparent" type="password" name="password" autocomplete="off" placeholder="Contraseña" required>
                </div>


                <!-- Mostrar mensaje de error si está configurado -->
                <?php
                if (isset($_SESSION['error_message'])) {
                    echo '<p id="msj" class="text-red-500 w-full text-center absolute transform duration-500 ease-in-out mb-8 bottom-8" >' . $_SESSION['error_message'] . '</p>';
                    unset($_SESSION['error_message']);
                }
                ?>
       

                <!-- Botón para enviar el formulario -->
                <button class="w-full py-4 mt-2 bg-orange-600 rounded-lg text-sm leading-normal font-semibold text-white" type="submit">Unirse</button>
            </form>

            <!-- Sección de inicio de sesión con redes sociales -->
            <div class="mt-8 flex flex-col gap-6 items-center text-sm text-gray-500">


                <!-- Enlace para registrarse si no se tiene una cuenta -->
                <p class="w-fit text-[17px] text-gray-33">¿Ya tienes una cuenta? <a href="../index.php" class="text-orange-600"> Iniciar Secion</a></p>
            </div>

        </div>
    </div>
</body>

</html>