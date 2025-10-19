document.getElementById("form-registro").addEventListener("submit", function (event) {
  event.preventDefault();

  const nombre = document.getElementById("nombre").value.trim();
  const correo = document.getElementById("correo").value.trim();
  const password = document.getElementById("password").value.trim();
  const codigo = document.getElementById("codigo").value.trim();
  const edad = document.getElementById("edad").value.trim();
  const tipo_sangre = document.getElementById("tipo_sangre").value;
  const telefono = document.getElementById("telefono").value.trim();
  const emergencia = document.getElementById("emergencia").value.trim();
  const activo = document.getElementById("activo").value;

  // Validar correo
  const patronCorreo = /^[a-zA-Z0-9._%+-]+@(gmail\.com|estudiantesunibague\.edu\.co)$/i;
  if (!patronCorreo.test(correo)) {
    alert("Solo se permiten correos Gmail o institucionales (@estudiantesunibague.edu.co).");
    return;
  }

  // Validar contraseña
  if (password.length < 6) {
    alert("La contraseña debe tener al menos 6 caracteres.");
    return;
  }

  // Crear objeto estudiante
  const estudiante = {
    nombre,
    correo,
    password,
    codigo,
    edad,
    tipo_sangre,
    telefono,
    emergencia,
    activo
  };

  // Guardar datos en localStorage (simulación de base de datos)
  localStorage.setItem("estudiante", JSON.stringify(estudiante));

  alert("✅ Registro exitoso. Ahora puede iniciar sesión.");
  window.location.href = "login_estudiante.html";
});
