const menu = document.querySelector('.menu')
const burgerIcon = document.querySelector('.burger-icon')

burgerIcon.addEventListener("click", () => {
	menu.classList.toggle("active");
})
