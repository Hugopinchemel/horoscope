function createStar() {
    const star = document.createElement('div');
    star.className = 'star';
    const size = Math.random() * 5;
    star.style.width = `${size}px`;
    star.style.height = `${size}px`;
    star.style.left = `${Math.random() * window.innerWidth}px`;
    star.style.top = `${Math.random() * window.innerHeight}px`;
    document.body.appendChild(star);
    return star;
}

function glitter() {
    for(let i = 0; i < 100; i++) {
        const star = createStar();
        setTimeout(() => {
            star.style.opacity = 0;
            setTimeout(() => {
                star.style.opacity = 1;
            }, Math.random() * 2000);
        }, Math.random() * 2000);
        setTimeout(() => {
            star.style.opacity = 0;
            setTimeout(() => {
                star.remove();
            }, 1000);
        }, Math.random() * 5000 + 3000);
    }
    setTimeout(glitter, 5000);
}

glitter();

setInterval(createStar, 1000);
