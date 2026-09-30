<?php
include ("conexion.php");
 
$error = "";
$usuarios = [];
 
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nombre = trim($_POST["name"]);
    $correo = trim($_POST["email"]);
    $password = $_POST["password"];
    $confirm = $_POST["confirm"];
 
    if ($nombre && $correo && $password && $confirm) {
        if ($password === $confirm) {
 
            // Verificar si el correo ya existe
            $verificar = $conexion->prepare("SELECT id_usuarios FROM usuarios WHERE correo = ?");
            $verificar->bind_param("s", $correo);
            $verificar->execute();
            $verificar->store_result();
 
            if ($verificar->num_rows > 0) {
                $error = "⚠️ El correo ya está registrado.";
            } else {
                $password_segura = password_hash($password, PASSWORD_DEFAULT);
                $fecha_registro = date("Y-m-d");
 
                $stmt = $conexion->prepare("INSERT INTO usuarios (nombre, correo, fecha_registro, contraseña) VALUES (?, ?, ?, ?)");
                $stmt->bind_param("ssss", $nombre, $correo, $fecha_registro, $password_segura);
 
                if ($stmt->execute()) {
                    $stmt->close();
                    header("Location:login.php");
                    exit();
                } else {
                    $error = "❌ Error al registrar: " . $stmt->error;
                    $stmt->close();
                }
            }
            $verificar->close();
        } else {
            $error = "❌ Las contraseñas no coinciden.";
        }
    } else {
        $error = "❌ Todos los campos son obligatorios.";
    } 

}
 
// Obtener usuarios registrados
$resultado = $conexion->query("SELECT nombre, correo, fecha_registro FROM usuarios ORDER BY id_usuarios DESC");
if ($resultado) {
    while ($fila = $resultado->fetch_assoc()) {
        $usuarios[] = $fila;
    }
}
?>
 
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>Registro EduMatch</title>
  <link rel="stylesheet" href="style.css"/>
</head>
<body>
 
  <div class="container">
 
    <a href="login.php" class="back-button" style="text-decoration:none;">
<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" viewBox="0 0 24 24">
        <path d="M15 18l-6-6 6-6"/>
      </svg>
    </a>
 
    <form class="form" id="signupForm" method="POST" action="">
      <label for="name">Nombre:</label>
      <input type="text" id="name" name="name" placeholder="Ingrese su nombre" required />
 
      <label for="email">Email:</label>
      <input type="email" id="email" name="email" placeholder="Ingrese su correo" required />
 
      <label for="password">Contraseña:</label>
      <input type="password" id="password" name="password" placeholder="Ingrese su contraseña" required />
 
      <label for="confirm">Confirmar contraseña:</label>
      <input type="password" id="confirm" name="confirm" placeholder="Confirme su contraseña" required />
 
      <button type="submit">Registrarse</button>
 
      <p>¿Ya tienes una cuenta? <a href="login.php">Inicia sesión</a></p>
    </form>

     <div class="side">
        <img src="Imagenes/logoNegro.png" alt="">
      </div>
 
  <script src="../Js/script.js"></script>
</body>
</html>