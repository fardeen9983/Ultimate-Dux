const navSlide = () => {
  const burger = document.querySelector(".burger");
  const nav = document.querySelector(".nav-links");
  const navLinks = document.querySelectorAll(".nav-links li");

  // Toggle nav
  burger.addEventListener("click", () => {
    nav.classList.toggle("nav-active");
    // Animate Links
    navLinks.forEach((link, index) => {
      if (!link.style.animation) {
        link.style.animation = `navLinkFade 0.5s ease forwards ${index / 7 +
          0.3}s`;
      } else {
        link.style.animation = "";
      }
    });

    //Rotate Hamburger
    burger.classList.toggle('toggle');
  });
};
const app = () => {
  navSlide();
};

app();
