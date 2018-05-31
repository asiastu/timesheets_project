function initUpdateNavbarOnScroll() {
  const navbar = document.querySelector('.navbar-wagon');
  const banner = document.querySelector(".banner")
  window.addEventListener('scroll', () => {
    if (window.scrollY) {
      navbar.classList.add('navbar-wagon-solid')
      if (window.location.pathname === '/') {
        navbar.classList.add('navbar-home-solid')
      }
    } else {
      navbar.classList.remove('navbar-wagon-solid')
       if (window.location.pathname === '/') {
        navbar.classList.remove('navbar-home-solid')
      }
    }
  });
}

export { initUpdateNavbarOnScroll };
