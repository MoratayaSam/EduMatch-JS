<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Derecho</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" />
  <link
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css"
    rel="stylesheet"
    integrity="sha384-4Q6Gf2aSP4eDXB8Miphtr37CMZZQ5oXLH2yaXMJ2w8e2ZtHTl7GptT4jmndRuHDT"
    crossorigin="anonymous"
  />
  <link rel="stylesheet" href="stlederecho.css">
</head>

<body>
  <!-- NAV -->
    
    <nav class="navbar navbar-expand-lg bg-light px-0">
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
        <li class="nav-item"><a class="nav-link" href="indexcarreras.php">Buscar Carrera</a></li>
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
  <h1 class="hero-titulo">Universidades que ofrecen Derecho</h1>

  
</div>

      <div class="col-md-6 text-center">
        <img src="Imagenes/student-girl.png" class="img-fluid hero-img" alt="Estudiante feliz" />
      </div>
    </div>
  </section>

  <div class="container mt-5"> 
  <a href="indexlicenciaturas.php" class="btn btn-primary mb-4">
    ← Volver a Licenciaturas
  </a>
  <div class="row g-4">
    <?php
    // Conexión a la base de datos
    $conn = new mysqli("localhost", "root", "", "edumatch_db");
    if ($conn->connect_error) {
        die("Conexión fallida: " . $conn->connect_error);
    }

    // Consulta: solo los registros con id_psico <= 12
    $sql = "SELECT * FROM licenciaturas WHERE id >= 13 AND id <= 22";
    $result = $conn->query($sql);

    // Verificar si hay resultados
    if ($result && $result->num_rows > 0) {
        while ($uni = $result->fetch_assoc()) {
    ?>
            <div class="col-sm-6 col-md-4 col-lg-3">
                <div class="card h-100 shadow-sm">
                    <img src="img/<?php echo $uni['logo']; ?>" class="card-img-top" alt="Logo Universidad">
                    <div class="card-body">
                        <h5 class="card-title">
                            <?php echo $uni['universidad']; ?>
                            <i class="bi bi-heart like-btn" style="cursor: pointer; color: #dc3545;"></i>
                        </h5>
                        <p class="card-text"><strong>Precio Mensual:</strong> <?php echo $uni['precio_mensual']; ?></p>
                        <p class="card-text"><strong>Modalidad:</strong> <?php echo $uni['modalidad']; ?></p>
                        <p class="card-text"><strong>Duración:</strong> <?php echo $uni['duracion']; ?></p>
                        <a href="vermas.php?id=<?php echo $uni['id']; ?>" class="btn btn-primary btn-sm">Más Información →</a>
                    </div>
                </div>
            </div>
    <?php
        }
    } else {
        echo "<p>No se encontraron resultados.</p>";
    }

    $conn->close();
    ?>
  </div>
</div>

  <script>
  document.addEventListener('DOMContentLoaded', function () {
    const likeButtons = document.querySelectorAll('.like-btn');

    likeButtons.forEach(button => {
      button.addEventListener('click', function () {
        this.classList.toggle('bi-heart');
        this.classList.toggle('bi-heart-fill');
      });
    });
  });
</script>


</body>
</html>