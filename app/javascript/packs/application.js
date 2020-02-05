// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
window.Noty = require("noty")

import {
    library,
    dom
} from '@fortawesome/fontawesome-svg-core'
import {
    fas
} from '@fortawesome/free-solid-svg-icons'
import {
    faTwitter
} from '@fortawesome/free-brands-svg-icons'
library.add(fas, faTwitter) // Kicks off the process of finding <i> tags and replacing with <svg>
dom.watch()
import 'bootstrap'
import './stylesheets/application.scss'



document.addEventListener("turbolinks:load", () => {
    $('[data-toggle="tooltip"]').tooltip()
    $('[data-toggle="popover"]').popover()
})

$(document).ready(() => {
    $('.toggle').on('click', (e) => {
        e.stopPropagation();
        e.preventDefault();
        $('#' + e.target.getAttribute('aria-controls')).toggleClass('d-none');
    })
})