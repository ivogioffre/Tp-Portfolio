
// script.js — funcionalidad mínima del portfolio
// Año dinámico en el footer
document.getElementById("year").textContent = new Date().getFullYear();

// Cerrar el menu colapsable al hacer click en un link
document.querySelectorAll("#navMenu a").forEach((link) => {
  link.addEventListener("click", () => {
    const navMenu = document.getElementById("navMenu");
    if (navMenu.classList.contains("show")) {
      new bootstrap.Collapse(navMenu).hide();
    }
  });
});
