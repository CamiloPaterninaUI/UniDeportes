document.addEventListener("DOMContentLoaded", () => {
  const form = document.getElementById("form-registro");

  form.addEventListener("submit", (event) => {
    event.preventDefault();

    // === CAPTURAR VALORES DEL FORMULARIO ===
    const nombre = document.getElementById("nombre").value.trim();
    const correo = document.getElementById("correo").value.trim();
    const password = document.getElementById("password").value.trim();
    const codigo = document.getElementById("codigo").value.trim();
    const edad = document.getElementById("edad").value.trim();
    const tipo_sangre = document.getElementById("tipo_sangre").value;
    const telefono = document.getElementById("telefono").value.trim();
    const emergencia = document.getElementById("emergencia").value.trim();
    const activo = document.getElementById("activo")?.value || "N/A";

    // === VALIDACIONES ===
    if (!nombre || !correo || !password || !codigo || !edad || !telefono || !emergencia || !tipo_sangre || !activo) {
      alert("Por favor, complete todos los campos requeridos.");
      return;
    }

    const patronCorreo = /^[a-zA-Z0-9._%+-]+@(gmail\.com|estudiantesunibague\.edu\.co)$/i;
    if (!patronCorreo.test(correo)) {
      alert("Solo se permiten correos Gmail o institucionales (@estudiantesunibague.edu.co).");
      return;
    }

    if (password.length < 6) {
      alert("La contraseña debe tener al menos 6 caracteres.");
      return;
    }

    // === CREAR OBJETO DE USUARIO ===
    const estudiante = {
      tipo: "estudiante",
      nombre,
      correo,
      password,
      codigo,
      edad,
      tipo_sangre,
      telefono,
      emergencia,
      activo,
      fecha_registro: new Date().toLocaleString(),
    };

    // === GUARDAR ===
    let lista = JSON.parse(localStorage.getItem("estudiantes") || "[]");
    if (lista.some(u => u.correo === correo)) {
      alert("Este correo ya está registrado. Intente con otro.");
      return;
    }

    lista.push(estudiante);
    localStorage.setItem("estudiantes", JSON.stringify(lista));

    alert("✅ Registro exitoso. Ahora puede iniciar sesión.");
    window.location.href = "login_estudiante.html";
  });
});
