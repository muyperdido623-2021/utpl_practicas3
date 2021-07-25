<?php
include("login_db.php");
$empresa=$_POST['empresa'];
$paginaweb=$_POST['paginaweb'];
$email=$_POST['email'];
$nombre=$_POST['nombre'];
$apellido=$_POST['apellido'];
$usuario=$_POST['usuario'];
$contrasenia=$_POST['contrasenia'];
$conn=$conexion;

if(!empty($empresa) || !empty($paginaweb) ||!empty($email) ||!empty($nombre) ||!empty($apellido) ||!empty($contrasenia))
{
    if(mysql_error())
    {
        die('connect error('.mysqli_connect_errno().')'.mysqli_connect_error());
    }
    else
    {
        
        $SELECT = "SELECT usuario from usuario where usuario = ? limit 1";
        $SELECT = "INSERT INTO usuario (empresa,paginaweb,email,nombre,apellido,usuario,contrasenia) values(?,?,?,?,?,?,?)";
        $stmt = $conn->prepare($SELECT);
        $stmt ->bind_param("s",$usuario);
        $stmt ->execute();
        $stmt ->bind_result($usuario);
        $stmt ->store_result();
        $rnum =$stmt->num_rows;
        if($rnum == 0)
        {
            $stmt ->close();
            $stmt = $conn->prepare($INSERT);
            $stmt ->bind_param("sssssss",$empresa,$paginaweb,$email,$nombre,$apellido,$usuario,$contrasenia);
            $stmt ->execute();
            echo "Registro exitoso";
        }
        else
        {
            echo "Usuario ya registrado";
        }
        $stmt ->close();
        $conn ->close();
                
    }
    

}
else
{
    echo "Todos los datos son obligatorios ";
    die();
}
?>