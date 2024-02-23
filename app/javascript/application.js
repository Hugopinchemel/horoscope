// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
function glitter() {
    const stars = document.querySelectorAll('.star');
  
    stars.forEach(star => {
      const size = Math.random() * 5;
      star.style.width = `${size}px`;
      star.style.height = `${size}px`;
      star.style.left = `${Math.random() * innerWidth}px`;
      star.style.top = `${Math.random() * innerHeight}px`;
    });
  }
  
setInterval(glitter, 1000);
alert('ok');