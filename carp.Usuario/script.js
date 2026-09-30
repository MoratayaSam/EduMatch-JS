document.getElementById("signupForm").addEventListener("submit", function(e) {
    e.preventDefault();
  
    const password = document.getElementById("password").value;
    const confirm = document.getElementById("confirm").value;
  
    if (password !== confirm) {
      alert("❌ Las contraseñas no coinciden");
    } else {
      alert("✅ ¡Registro exitoso!");
      
    }
  });
   