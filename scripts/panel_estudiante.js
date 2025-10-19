document.addEventListener("DOMContentLoaded", () => {
  const usuarioActivo = JSON.parse(localStorage.getItem("usuarioActivo"));

  if (!usuarioActivo || usuarioActivo.tipo !== "estudiante") {
    alert("Debe iniciar sesión como estudiante para acceder a su panel.");
    window.location.href = "login_estudiante.html";
    return;
  }

  document.getElementById("nombre-estudiante").textContent = usuarioActivo.nombre;
  document.getElementById("correo").textContent = usuarioActivo.correo;
  document.getElementById("codigo").textContent = usuarioActivo.codigo;
  document.getElementById("edad").textContent = usuarioActivo.edad;
  document.getElementById("tipo_sangre").textContent = usuarioActivo.tipo_sangre;
  document.getElementById("telefono").textContent = usuarioActivo.telefono;
  document.getElementById("emergencia").textContent = usuarioActivo.emergencia;
  document.getElementById("activo").textContent = usuarioActivo.activo;

  document.getElementById("cerrar-sesion").addEventListener("click", (e) => {
    e.preventDefault();
    localStorage.removeItem("usuarioActivo");
    alert("Sesión cerrada correctamente.");
    window.location.href = "login_estudiante.html";
  });
});
