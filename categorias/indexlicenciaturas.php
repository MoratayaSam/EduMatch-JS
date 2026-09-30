
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Licenciaturas</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" />
  <link
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css"
    rel="stylesheet"
    integrity="sha384-4Q6Gf2aSP4eDXB8Miphtr37CMZZQ5oXLH2yaXMJ2w8e2ZtHTl7GptT4jmndRuHDT"
    crossorigin="anonymous"
  />
  <link rel="stylesheet" href="/Edumatch/categorias/stylelic.css">

</head>

<body>
  <!-- NAV -->
    
    <nav class="navbar navbar-expand-lg bg-light px-0">
        <div class="container-fluid">
            <a class="navbar-brand" href="index.html">
      <img src="/Edumatch/Imagenes/LocgoaColor.png" alt="EduMatch Logo" class="logo-navbar">
    </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav ms-auto">
        <li class="nav-item"><a class="nav-link active" href="index.html">Home</a></li>
        <li class="nav-item"><a class="nav-link" href="/Edumatch/categorias/indexcarreras.php">Buscar Carrera</a></li>
        <li class="nav-item"><a class="nav-link" href="#">Sobre Nosotros</a></li>
        <li class="nav-item"><a class="nav-link" href="login.php">Iniciar sesión</a></li>
      </ul>
    </div>
  </div>
</nav>


  <!-- HERO -->
  <section class="container-fluid hero-section ">
    <img src="/Edumatch/Imagenes/Fondo.jpg" class="hero-bg-img" alt="Fondo decorativo" />
    <div class="row align-items-center flex-nowrap">
      <div class="col-md-6 px-2 text-start d-flex flex-column justify-content-center hero-texto">
  <h1 class="hero-titulo">Licenciaturas</h1>
  <p class="hero-subtitulo">Subcategorias por area:</p>
  
</div>

      <div class="col-md-6 text-center">
        <img src="/Edumatch/Imagenes/student-girl.png" class="img-fluid hero-img" alt="Estudiante feliz" />
      </div>
    </div>
  </section>

  <div class="container mt-5">
    <a href="indexcarreras.php" class="btn btn-primary mb-4">
            ← Volver a categorias
          </a>
  </div>

  <?php
// Conexión a la base de datos
$conn = new mysqli("localhost", "root", "", "edumatch_db");
if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

// Obtener el ID de la categoría desde la URL
$id_categoria = isset($_POST['id']) ? intval($_POST['id']) : 0;

// Consulta a la base de datos
$sql = "SELECT * FROM carreras WHERE id_categoria = $id_categoria";
$result = $conn->query($sql);
?>


  <section class="licenciaturas">
  <!-- EDUCACIÓN -->
  <div class="area">
    <h2>Educación</h2>
    <div class="cuadros">
      <div class="cuadro naranja">
        <i class="bi bi-book"></i>
        <div>Educación Inicial</div>
        <button class="btn-ver">Ver más</button>
      </div>
      <div class="cuadro naranja">
        <i class="bi bi-pencil"></i>
        <div>Educación Básica</div>
        <button class="btn-ver">Ver más</button>
      </div>
      <div class="cuadro naranja">
        <i class="bi bi-heart-pulse"></i>
        <div>Educación Especial</div>
        <button class="btn-ver">Ver más</button>
      </div>
      <div class="cuadro naranja">
        <i class="bi bi-bicycle"></i>
        <div>Educación Física</div>
        <button class="btn-ver">Ver más</button>
      </div>
      <div class="cuadro naranja">
        <i class="bi bi-translate"></i>
        <div>Enseñanza del Inglés</div>
        <button class="btn-ver">Ver más</button>
      </div>
    </div>
  </div>

  <!-- CIENCIAS SOCIALES Y HUMANIDADES -->
  <div class="area">
    <h2>Ciencias Sociales y Humanidades</h2>
    <div class="cuadros">
      <div class="cuadro azul">
        <i class="bi bi-person-heart"></i>
        <div>Psicología</div>
        <a href="indexpsicologia.php" class="btn btn-ver">Ver más</a>
      </div>
      <div class="cuadro azul">
      <i class="bi bi-shield-check"></i>
        <div>Derecho</div>
        <a href="indexderecho.php" class="btn btn-ver">Ver más</a>
      </div>
      <div class="cuadro azul">
        <i class="bi bi-people-fill"></i>
        <div>Trabajo Social</div>
        <a href="indextrabajosocial.php" class="btn btn-ver">Ver más</a>
      </div>
      <div class="cuadro azul">
        <i class="bi bi-lightbulb"></i>
        <div>Filosofía</div>
        <a href="indexfilo.php" class="btn btn-ver">Ver más</a>
      </div>
      <div class="cuadro azul">
        <i class="bi bi-chat-left-text"></i>
        <div>Sociología</div>
        <a href="indexsociologia.php" class="btn btn-ver">Ver más</a>
      </div>
      <div class="cuadro azul">
        <i class="bi bi-megaphone"></i>
        <div>Comunicación</div>
        <a href="indexcomu.php" class="btn btn-ver">Ver más</a>
      </div>
      <div class="cuadro azul">
        <i class="bi bi-book-half"></i>
        <div>Historia</div>
        <a href="indexhistoria.php" class="btn btn-ver">Ver más</a>
      </div>
    </div>
  </div>

  <!-- CIENCIAS ECONÓMICAS Y ADMINISTRATIVAS -->
  <div class="area">
    <h2>Ciencias Económicas y Administrativas</h2>
    <div class="cuadros">
      <div class="cuadro azul">
        <i class="bi bi-briefcase"></i>
        <div>Administración de Empresas</div>
        <button class="btn-ver">Ver más</button>
      </div>
      <div class="cuadro azul">
        <i class="bi bi-calculator"></i>
        <div>Contaduría Pública</div>
        <button class="btn-ver">Ver más</button>
      </div>
      <div class="cuadro azul">
        <i class="bi bi-bar-chart-line"></i>
        <div>Economía</div>
        <button class="btn-ver">Ver más</button>
      </div>
      <div class="cuadro azul">
        <i class="bi bi-currency-dollar"></i>
        <div>Finanzas</div>
        <button class="btn-ver">Ver más</button>
      </div>
      <div class="cuadro azul">
        <i class="bi bi-basket"></i>
        <div>Mercadeo</div>
        <button class="btn-ver">Ver más</button>
      </div>
    </div>
  </div>

  <!-- CIENCIAS NATURALES Y EXACTAS -->
  <div class="area">
    <h2>Ciencias Naturales y Exactas</h2>
    <div class="cuadros">
      <div class="cuadro naranja">
        <i class="bi bi-calculator-fill"></i>
        <div>Matemáticas</div>
        <button class="btn-ver">Ver más</button>
      </div>
      <div class="cuadro naranja">
        <i class="bi bi-lightning-fill"></i>
        <div>Física</div>
        <button class="btn-ver">Ver más</button>
      </div>
      <div class="cuadro naranja">
        <i class="bi bi-droplet-half"></i>
        <div>Biología</div>
        <button class="btn-ver">Ver más</button>
      </div>
      <div class="cuadro naranja">
        <i class="bi bi-droplet"></i>
        <div>Química</div>
        <button class="btn-ver">Ver más</button>
      </div>
      <div class="cuadro naranja">
        <i class="bi bi-graph-up"></i>
        <div>Estadística</div>
        <button class="btn-ver">Ver más</button>
      </div>
    </div>
  </div>

  <!-- ARTE Y DISEÑO -->
  <div class="area">
    <h2>Arte y Diseño</h2>
    <div class="cuadros">
      <div class="cuadro azul">
        <i class="bi bi-palette"></i>
        <div>Diseño Gráfico</div>
        <button class="btn-ver">Ver más</button>
      </div>
      <div class="cuadro azul">
        <i class="bi bi-scissors"></i>
        <div>Diseño de Modas</div>
        <button class="btn-ver">Ver más</button>
      </div>
      <div class="cuadro azul">
        <i class="bi bi-brush"></i>
        <div>Artes Plásticas</div>
        <button class="btn-ver">Ver más</button>
      </div>
      <div class="cuadro azul">
        <i class="bi bi-music-note-beamed"></i>
        <div>Música</div>
        <button class="btn-ver">Ver más</button>
      </div>
      <div class="cuadro azul">
        <i class="bi bi-person"></i>
        <div>Teatro</div>
        <button class="btn-ver">Ver más</button>
      </div>
    </div>
  </div>

  <!-- CIENCIAS DE LA SALUD -->
  <div class="area">
    <h2>Ciencias de la Salud</h2>
    <div class="cuadros">
      <div class="cuadro naranja">
        <i class="bi bi-hospital"></i>
        <div>Enfermería</div>
        <button class="btn-ver">Ver más</button>
      </div>
      <div class="cuadro naranja">
        <i class="bi bi-egg-fried"></i>
        <div>Nutrición</div>
        <button class="btn-ver">Ver más</button>
      </div>
      <div class="cuadro naranja">
        <i class="bi bi-person"></i>
        <div>Terapia Física</div>
        <button class="btn-ver">Ver más</button>
      </div>
      <div class="cuadro naranja">
        <i class="bi bi-volume-up"></i>
        <div>Fonoaudiología</div>
        <button class="btn-ver">Ver más</button>
      </div>
      <div class="cuadro naranja">
        <i class="bi bi-shield-plus"></i>
        <div>Salud Pública</div>
        <button class="btn-ver">Ver más</button>
      </div>
    </div>
  </div>
</section>
 <?php

    $conn->close();
    ?>
  
</body>
</html>