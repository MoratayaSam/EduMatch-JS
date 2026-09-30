<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Ver mas</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" />
  <link
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css"
    rel="stylesheet"
    integrity="sha384-4Q6Gf2aSP4eDXB8Miphtr37CMZZQ5oXLH2yaXMJ2w8e2ZtHTl7GptT4jmndRuHDT"
    crossorigin="anonymous"
  />
  <link rel="stylesheet" href="index.css">
  <link rel="stylesheet" href="stylevermas.css">

</head>

<body>
  <!-- NAV -->
      <!-- NAVBAR CORREGIDO -->
    <nav class="navbar navbar-expand-lg bg-light px-3">
        <div class="container-fluid">
            <a class="navbar-brand" href="index.html">
      <img src="Imagenes/LocgoaColor.png" alt="EduMatch Logo" class="logo-navbar">
    </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav ms-auto">
        <li class="nav-item"><a class="nav-link active" href="index.html">Home</a></li>
        <li class="nav-item"><a class="nav-link" href="indexcarreras.html">Buscar Carrera</a></li>
        <li class="nav-item"><a class="nav-link" href="#">Sobre Nosotros</a></li>
        <li class="nav-item"><a class="nav-link" href="login.php">Iniciar sesión</a></li>
      </ul>
    </div>
  </div>
</nav>

<!-- HERO -->
  <section class="container-fluid hero-section ">
    <img src="Imagenes/Fondo.jpg" class="hero-bg-img" alt="Fondo decorativo" />
    <div class="row align-items-center flex-nowrap">
      <div class="col-md-6 px-2 text-start d-flex flex-column justify-content-center hero-texto">
  <h1 class="hero-titulo">Informacion de la Universidad</h1>

  
</div>

      <div class="col-md-6 text-center">
        <img src="Imagenes/student-girl.png" class="img-fluid hero-img" alt="Estudiante feliz" />
      </div>
    </div>
  </section>
 
 <div class="container text-center">
  <a href="indexlicenciaturas.php" class="btn btn-primary mt-4"><- Regresar</a>

  <?php
 $id = intval($_GET['id']);
$conn = new mysqli("localhost", "root", "", "edumatch_db");

// Buscar la licenciatura
$sql = "SELECT * FROM licenciaturas WHERE id = $id";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    $lic = $result->fetch_assoc();
    $universidad_id = $lic['universidad_id'];

    // Buscar universidad correspondiente
    $sql_uni = "SELECT * FROM universidads WHERE id = $universidad_id";
    $res_uni = $conn->query($sql_uni);

    if ($res_uni->num_rows > 0) {
        $uni = $res_uni->fetch_assoc();
        echo '<h1 class="titulo">' . $uni['nombre'] . '</h1>';
      echo '<div class="row justify-content-center align-items-center">';
      
      echo '<div class="col-md-4 text-center">';
      echo '<img src="img/' . $uni['image'] . '" class="logo-universidad" alt="Logo Universidad">';
      echo '</div>';
      
      echo '<div class="col-md-4 text-start info-box">';
      echo '<p><span class="info-label">UBICACIÓN:</span> ' . $uni['ciudad'] . '</p>';
      echo '<p><span class="info-label">NÚMERO:</span> ' . $uni['telefono'] . '</p>';
      echo '<p><span class="info-label">SITIO WEB:</span> <a href="' . $uni['sitio_web'] . '" target="_blank">' . $uni['sitio_web'] . '</a></p>';
      echo '</div>';

      echo '</div>'; 

      echo '<div class="descripcion-box mt-5">';
      echo ($uni['descripcion']);  
      echo '</div>';
    } else {
        echo "Universidad no encontrada.";
    }
} else {
    echo "Licenciatura no encontrada.";
}

  ?>
</div>


</body>
</html>
 
