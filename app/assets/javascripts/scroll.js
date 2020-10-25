document.addEventListener('DOMContentLoaded', function () {
  const el = document.querySelector('.domination__text');
  const el2 = document.querySelector('#slide-x');
  const cb =  (entries, observe) => {
    entries.forEach(entry => {
      if (entry.isIntersecting) {
        entry.target.classList.add('scroll')
        // observer.unobserve(entry.target)
      } else {
        entry.target.classList.remove('scroll')
      }
    })
  }
  const options = {
    root: null,
    rootMargin: "0px 0px -30px 0px "
  }
  const io = new IntersectionObserver(cb, options);
  io.observe(el);
  io.observe(el2);
})
