<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $email = $_POST["email"];
    $contraseña = $_POST["contraseña"];
    header('location:indexperfil.html');
    exit();
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> Login Form</title>
    <link rel="stylesheet" href="styless.css">
</head>
<body>
    <div class="container">
       <a href="index.html" class="back-button">
         <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" viewBox="0 0 24 24">
         <path d="M15 18l-6-6 6-6"/>
         </svg>
       </a>
      <form action="" class="form" method="post">
          <h1>BIENVENIDOS</h1>
          <input type="email" name="email" class="box" placeholder="Email">
          <input type="password" name="contraseña" class="box" placeholder="Contraseña">
          <a href="#">¿Olvidaste tu contraseña?</a>
          <input type="submit" value="LOGIN" id="submit">
          <div class="register-link">
  ¿No tienes una cuenta?
  <a href="registro.php">Regístrate</a>
          </div>
      </form>
      <div class="side">
        <img src="Imagenes/logoNegro.png" alt="">
      </div>
    </div>
</body>
</html>