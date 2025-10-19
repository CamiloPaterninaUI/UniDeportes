# 🏆 Proyecto UniDeportes

**UniDeportes** es una aplicación web desarrollada para la **Universidad de Ibagué**, cuyo objetivo es **gestionar torneos deportivos universitarios**.
Permite registrar estudiantes, administrar deportes, generar enfrentamientos, y visualizar la información desde una interfaz amigable.

---

## 📋 Características principales

* **Registro de estudiantes** con validación de datos.
* **Gestión de deportes y torneos** (Fútbol sala, Baloncesto, Voleibol, Tenis de mesa).
* **Inscripción automática** de jugadores en los torneos.
* **Sorteo de equipos y generación de enfrentamientos.**
* **Panel administrativo** para gestionar la base de datos.
* **Diseño adaptable (responsive)** con HTML5, CSS3 y JavaScript.
* **Base de datos MySQL** para almacenar toda la información.

---

## 🧰 Tecnologías utilizadas

| Tecnología     | Uso principal                                    |
| -------------- | ------------------------------------------------ |
| **HTML5**      | Estructura de las páginas                        |
| **CSS3**       | Diseño y estilos visuales                        |
| **JavaScript** | Validación y dinámicas del front-end             |
| **PHP**        | Lógica de servidor y conexión a la base de datos |
| **MySQL**      | Gestión y almacenamiento de datos                |
| **XAMPP/WAMP** | Servidor local para pruebas                      |

---

## 📂 Estructura del proyecto

```
📁 unideportes/
│
├── 📁 paginas/
│   ├── registro_estudiante.html
│   ├── login.html
│   ├── torneos.html
│   └── ...
│
├── 📁 php/
│   ├── conexion.php
│   ├── registrar_estudiante.php
│   ├── listar_torneos.php
│   └── ...
│
├── 📁 estilos/
│   ├── estilos_estudiante.css
│   ├── estilos_torneo.css
│   └── ...
│
├── 📁 imagenes/
│
├── 📁 sql/
│   └── unideportes.sql
│
└── README.md
```

---

## ⚙️ Instalación y ejecución

### 1️⃣ Clonar el repositorio

```bash
git clone https://github.com/tuusuario/unideportes.git
```

### 2️⃣ Configurar el entorno local

* Instala **XAMPP** o **WAMP**.
* Copia la carpeta del proyecto dentro de:

  ```
  C:\xampp\htdocs\
  ```

  o en la carpeta equivalente de tu servidor local.

### 3️⃣ Crear la base de datos

* Abre **phpMyAdmin**.
* Crea una base de datos llamada `unideportes`.
* Importa el archivo `unideportes.sql` que se encuentra en la carpeta `sql`.

### 4️⃣ Configurar la conexión

* Edita el archivo `php/conexion.php` y ajusta los valores según tu entorno:

  ```php
  $conexion = mysqli_connect("localhost", "root", "", "unideportes");
  ```

### 5️⃣ Ejecutar el proyecto

Abre tu navegador y entra a:

```
http://localhost/unideportes/paginas/registro_estudiante.html
```

---

## 🚀 Próximas mejoras

* Autenticación con roles (Administrador / Estudiante).
* Reportes automáticos de resultados.
* Generación de fixture con algoritmos balanceados.
* Panel de administración visual para gestión de torneos.

---

## 👨‍💻 Autor

**Camilo Andrés Paternina Puentes**
Desarrollador de Software — Universidad de Ibagué
📧 Contacto: [camilo.paternina@estudiantesunibague.edu.co](mailto:camilo.paternina@estudiantesunibague.edu.co)
📍 Ibagué, Colombia

---

> Proyecto académico desarrollado con fines educativos y de práctica en desarrollo web.
