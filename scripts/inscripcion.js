document.addEventListener("DOMContentLoaded", () => {
  const listaJugadores = document.getElementById("lista-jugadores");
  const btnAgregar = document.getElementById("btn-agregar-jugador");

  btnAgregar.addEventListener("click", () => {
    const index = document.querySelectorAll(".jugador-card").length + 1;

    const card = document.createElement("div");
    card.classList.add("jugador-card");
    card.innerHTML = `
      <h3>Jugador ${index}</h3>
      <div class="campo"><label>Nombre:</label><input type="text" class="nombre" required></div>
      <div class="campo"><label>Correo (Gmail o institucional):</label><input type="email" class="correo" required></div>
      <div class="campo"><label>Edad:</label><input type="number" class="edad" required></div>
      <div class="campo"><label>Tipo de sangre:</label>
        <select class="tipo-sangre" required>
          <option value="">Seleccione...</option>
          <option>O+</option><option>O-</option><option>A+</option><option>A-</option>
          <option>B+</option><option>B-</option><option>AB+</option><option>AB-</option>
        </select>
      </div>
      <div class="campo"><label>Teléfono:</label><input type="tel" class="telefono" required></div>
      <div class="campo"><label>Contacto de emergencia:</label><input type="text" class="emergencia" required></div>
      <div class="campo"><label>¿Activo en la universidad?</label>
        <select class="activo" required>
          <option value="">Seleccione...</option>
          <option>Sí</option>
          <option>No</option>
        </select>
      </div>
      <button type="button" class="btn-eliminar">Eliminar jugador</button>
    `;
    card.querySelector(".btn-eliminar").addEventListener("click", () => card.remove());
    listaJugadores.appendChild(card);
  });

  document.getElementById("form-inscripcion").addEventListener("submit", (event) => {
    event.preventDefault();

    const jugadores = document.querySelectorAll(".jugador-card");
    if (jugadores.length < 5) {
      alert("Debe agregar al menos 5 jugadores.");
      return;
    }

    for (let i = 0; i < jugadores.length; i++) {
      const correo = jugadores[i].querySelector(".correo").value.trim();
      const patronCorreo = /^[a-zA-Z0-9._%+-]+@(gmail\.com|estudiantesunibague\.edu\.co)$/i;
      if (!patronCorreo.test(correo)) {
        alert(`El jugador ${i + 1} tiene un correo no permitido.`);
        return;
      }
    }

    alert("✅ Equipo inscrito exitosamente. Todos los jugadores han sido registrados.");
    event.target.reset();
    listaJugadores.innerHTML = "";
  });
});
