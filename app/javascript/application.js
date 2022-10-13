// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
let menu = document.querySelector('nav ul')
let show = document.querySelector('.menu')
show.addEventListener('click', ()=>{
    menu.style.display = 'block'
})

let close = document.querySelector('.close')
close.addEventListener('click', ()=>{
    menu.style.display = 'none'
})