<?php

include('conec.php');

if(isset($_POST['enviar'])){

    $nombre = $_POST['nombre'];
    $apellido_paterno=  $_POST['apellido_paterno'];
    $apellido_materno= $_POST['apellido_materno'];
    $telefono= $_POST['telefono'];
    $correo= $_POST['correo'];
    $usuario= $_POST['usuario'];
    $contraseña = $_POST['contraseña'];

    $insertarcuenta = "INSERT INTO cuenta (nombre,apellido_paterno,apellido_materno,telefono,correo,usuario,contraseña) VALUE ('$nombre','$apellido_paterno','$apellido_materno','$telefono','$correo','$usuario','$contraseña')";
    $resultado = mysqli_query($conexion,$insertarcuenta);
    if(!$resultado){
        echo '<script>alert("Los datos no se insertaron")</script>';
    }else{
        echo '<script>alert("Los datos se insertaron")</script>';
    }
}
header('location: index.html');
?>