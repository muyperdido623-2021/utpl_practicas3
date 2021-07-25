<?php
$usuario=$_POST['usuario'];
$contraseña=$_POST['contrasenia'];
session_start();
$_SESSION['usuario']=$usuario;
include('conect_db.php');
$consulta="SELECT*FROM users where usuario='$usuario' and contrasenia='$contraseña'";
$result=mysqli_query($conexion,$consulta);
$filas=mysqli_num_rows($result);

if($filas){
    header('location: home.html');
}else{
    ?>
    <?php
    include('index.php');
    ?>
    <h1> Error autenticación</h1>
    <?php
}
mysqli_free_result($result);
mysqli_close($conexion);
