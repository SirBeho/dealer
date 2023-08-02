<?php
try {
    $mysqli = new mysqli("localhost", "root", "", "mydb");
        echo "coneccionj exitosa";
} catch (mysqli_sql_exception $e) {
    echo "Error:". $e->getMessage();
}