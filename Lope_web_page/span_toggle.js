function init() {
    var fieldset = document.getElementsByTagName('input');
    for (var i = 0; i < fieldset.length; i++) {
        fieldset[i].addEventListener('click', toggle, false);
    }
}

function toggle() {
    var id = this.id;
    switch (id) {
        case "TGemotions": {
            var emotion = document.getElementsByClassName("emotion");
            for (var i = 0; i < emotion.length; i++) {
                emotion[i].classList.toggle("on")
            }
        };
        break;
        case "TGbodies": {
            var body = document.getElementsByClassName("body");
            for (var i = 0; i < body.length; i++) {
                body[i].classList.toggle("on")
            }
        };
        break;
    }
  }

window.onload = init;