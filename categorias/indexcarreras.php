<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Categorias de carreras</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" />
  <link
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css"
    rel="stylesheet"
    integrity="sha384-4Q6Gf2aSP4eDXB8Miphtr37CMZZQ5oXLH2yaXMJ2w8e2ZtHTl7GptT4jmndRuHDT"
    crossorigin="anonymous"
  />
  <link rel="stylesheet" href="stylecarreras.css">

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
        <li class="nav-item"><a class="nav-link" href="indexcarreras.php">Buscar Carrera</a></li>
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
  <h1 class="hero-titulo">¿Qué deseas estudiar?</h1>
  <p class="hero-subtitulo">Elige la categoría de tu carrera ideal según tu nivel de estudio.</p>
  
</div>

      <div class="col-md-6 text-center">
        <img src="/Edumatch/Imagenes/student-girl.png" class="img-fluid hero-img" alt="Estudiante feliz" />
      </div>
    </div>
  </section>
  <!-- CATEGORÍAS -->
<section class="categorias-section py-5 text-center">
  <div class="container">
  <h2 class="categoria-titulo text-start">Categorías Disponibles</h2>
</div>

  <div class="decoracion-bolitas">
  <span class="bolita b1"></span>
  <span class="bolita b2"></span>
  <span class="bolita b3"></span>
</div>

  <div class="row g-4 justify-content-center mt-4">

<?php
// Conexión
$conn = new mysqli("localhost", "root", "", "edumatch_db");
if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

$sql = "SELECT * FROM categorias";
$result = $conn->query($sql);

if ($result && $result->num_rows > 0) {
    while ($cat = $result->fetch_assoc()) {
        ?>
        <div class="col-10 col-sm-6 col-md-4 col-lg-3">
          <div class="categoria-card h-100">
            <!-- Aquí podrías personalizar la imagen según nombre o ID -->
            <img src="/Edumatch/Imagenes/education.png" alt="<?php echo $cat['nombre']; ?>" width="50">
            <h5><?php echo $cat['nombre']; ?></h5>
            <a href="<?php echo $cat['ruta']; ?>" class="btn btn-ver">Ver Carreras</a>

          </div>
        </div>
        <?php
    }
} else {
    echo "No hay categorías registradas.";
}
$conn->close();
?>

</div>
<!-- /.row -->

</section>
  
  <div class="container steps-section position-relative">
    <img src="/Edumatch/Imagenes/Fondo.jpg" class="position-absolute top-0 start-0 w-100 h-100" alt="Fondo pasos" style="border-top-left-radius: 40px; border-top-right-radius: 40px; object-fit: cover;" />
    <div class="position-relative" style="z-index: 1;">
     

<!-- INFO FINAL -->
<section class="info-section d-flex justify-content-between  px-5 py-4">
  <div class="info-texto">
    <h4 class="info-titulo-negro">Nos aseguramos de ofrecer el</h4>
<h4 class="info-titulo-azul"  >"Mejor curso para tu aprendizaje"</h4>

    <ul>
      <li><strong>⚡ Rápido:</strong> Recibe recomendaciones al instante basadas en tus intereses.</li>
      <li><strong>🌟 Variedad:</strong> Explora varias carreras que se adapten a ti.</li>
    </ul>
  </div>
  <div class="info-img">
    <img src="/Edumatch/Imagenes/retrato-joven-pareja-sonriente-estudiantes-asiaticos.png" alt="Estudiante" width="200">
  </div>
</section>



  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js"></script>
  <script>
    window.addEventListener("load", () => {
      document.querySelector(".steps-section").classList.add("appear");
      document.querySelector(".hero-section").classList.add("appear");
      document.querySelectorAll(".benefit-card").forEach(card => card.classList.add("appear"));
    });
  </script>
</body>
</html>