ready = ->
  new Typed '.element',
    strings: [
      "This is my portfolio's home page."
      "Build solutions that improve and ease people's lives."
    ]
    typeSpeed: 0
  return

$(document).on 'turbolinks:load', ready