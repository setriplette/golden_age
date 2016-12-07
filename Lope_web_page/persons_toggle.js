function init() {
    var fieldset = document.getElementsByTagName('input');
    for (var i = 0; i < fieldset.length; i++) {
        fieldset[i].addEventListener('click', toggle, false);
    }
}

function toggle() {
    var id = this.id;
    switch (id) {
        case "TGhistPerson": {
            var histPerson = document.getElementsByClassName("histPerson");
            for (var i = 0; i < histPerson.length; i++) {
                histPerson[i].classList.toggle("on")
            }
        };
        break;
        case "TGmythPerson": {
            var mythPerson = document.getElementsByClassName("mythPerson");
            for (var i = 0; i < mythPerson.length; i++) {
                mythPerson[i].classList.toggle("on")
            }
        };
        break;
case "TGbiblPerson": {
            var biblPerson = document.getElementsByClassName("biblPerson");
            for (var i = 0; i < biblPerson.length; i++) {
                biblPerson[i].classList.toggle("on")
            }
        };
        break;
        case "TGfictPerson": {
            var fictPerson = document.getElementsByClassName("fictPerson");
            for (var i = 0; i < fictPerson.length; i++) {
                fictPerson[i].classList.toggle("on")
            }
        };
        break;
    }
  }
window.onload = init;