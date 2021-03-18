ready = ->
    Typed.new '.element',
        strings: [
            'Welcome to my online home, feel free to stay awhile.'
            'I look forward to working with you. '
        ]
        typeSpeed: 0
    return

$(document).ready ready
$(document).on 'turbolinks:load', ready