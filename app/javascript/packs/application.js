// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

const city = document.querySelectorAll('.city');
const searchBar = document.querySelector('#search-bar');

searchBar.addEventListener('keyup', (e) => {
    city.forEach((el) => {
        if (el.innerHTML.toUpperCase().startsWith(searchBar.value.toUpperCase())) {
            el.parentNode.style.display = "";
        } else {
            el.parentNode.style.display = "none";
        }
    })
});

//import 'bootstrap';

// Start for mapbox
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initMapbox } from '../plugins/init_mapbox';

initMapbox();
// End mapbox
// import 'bootstrap';

// const isAvailable = document.querySelector('.details-singlecard .available');
// const btnBook = document.querySelector('.book');
// if (isAvailable.innerHTML === 'Not available') {
//     btnBook.classList.add('pointer')
// }


// isAvailable.addEventListener('click', (event) => {
//     console.log(isAvailable.innerHTML)
// })
// si available = false
// alors on rajoute une classe "pointer" pour disable
