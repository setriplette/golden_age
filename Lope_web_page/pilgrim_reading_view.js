function init() {
    var fieldset = document.getElementsByTagName('input');
    for (var i = 0; i < fieldset.length; i++) {
        fieldset[i].addEventListener('click', toggle, false);
    }
}

function toggle() {
    var id = this.id;
    switch (id) {
        case "persNametoggle": {
            var persName = document.getElementsByClassName("persName");
            for (var i = 0; i < persName.length; i++) {
                persName[i].classList.toggle("on")
            }
        };
        break;
        case "placeNametoggle": {
            var placeName = document.getElementsByClassName("placeName");
            for (var i = 0; i < placeName.length; i++) {
                placeName[i].classList.toggle("on")
            }
        };
        break;
        case "emotiontoggle": {
            var emotion = document.getElementsByClassName("emotion");
            for (var i = 0; i < emotion.length; i++) {
                emotion[i].classList.toggle("on")
            }
        };
        break;
        case "bodytoggle":{
            var body = document.getElementsByClassName("body");
            for (var i = 0; i < body.length; i++) {
                body[i].classList.toggle("on")
            }
        };
        break;
    }
  }

window.onload = init;