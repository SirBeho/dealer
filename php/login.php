<?php

if($_SERVER["REQUEST_METHOD"]=="POST"){
    session_start();
    extract($_POST);

    require("connection.php");
    
    $resultado = $mysqli -> query("select * from usuario where NombreUser = '$user'");
    $resultado = $resultado-> fetch_assoc();
    var_dump($resultado);


    
    /* if($resultado && password_verify($password, $resultado['password'])){ */
        if($resultado && $password == $resultado['PasswUser']){
            $persona = $mysqli -> query("select * from persona where idPersona = '".$resultado['idPersona']."'");
            $persona = $persona-> fetch_assoc();
            $_SESSION['persona'] = $persona;
            header("Location: ../pages/profile.php");
            exit;
        } else {
            $_SESSION['login_email'] = $user;
            $_SESSION['error_message'] = "Usuario o contraseña incorecta";
            header("Location: ../index.php");
            exit;
        }  
};