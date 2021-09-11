// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

require("jquery")
// yarn add @popperjs/core
require("popper.js")
require("bootstrap")

require("channels/jquery.raty")

import $ from "jquery";
window.jQuery = $;
window.$ = $;

import 'bootstrap/dist/css/bootstrap'

$(function() {
	$(".close").click(() => {
		$(".modal").modal("hide");
	})

	$('#rating-form').raty({
    path: '/assets/',
    scoreName: 'feedback[rating]',
    half: true
  });
})

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
