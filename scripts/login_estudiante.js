document.addEventListener("DOMContentLoaded", () => {
  const formLogin = document.getElementById("form-login");

  formLogin.addEventListener("submit", (event) => {
    event.preventDefault();

    const correo = document.getElementById("correo").value.trim();
    const password = document.getElementById("password").value.trim();

    if (!correo || !password) {
      alert("Por favor, complete todos los campos.");
      return;
    }

    const patronCorreo = /^[a-zA-Z0-9._%+-]+@(gmail\.com|estudiantesunibague\.edu\.co)$/i;
    if (!patronCorreo.test(correo)) {
      alert("Solo se permiten correos Gmail o institucionales (@estudiantesunibague.edu.co).");
      return;
    }

    const estudiantes = JSON.parse(localStorage.getItem("estudiantes") || "[]");
    const estudiante = estudiantes.find(e => e.correo === correo && e.password === password);

    if (estudiante) {
      localStorage.setItem("usuarioActivo", JSON.stringify(estudiante));
      alert(`✅ Inicio de sesión exitoso. Bienvenido/a ${estudiante.nombre}.`);
      window.location.href = "panel_estudiante.html";
    } else {
      alert("❌ Credenciales incorrectas. Verifique su correo y contraseña.");
    }
  });
});
