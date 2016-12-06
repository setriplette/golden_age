var layers; 

function init() {
    var wrappers = document.getElementsByClassName('wrapper');
    for (var i = 0; i < wrappers.length; i++) {
        wrappers[i].addEventListener('click', speakers, false);
    }
    layers = document.getElementById('layer-FINEA');
}

function speakers() {
    hide_last();
    layers = document.getElementById('layer-' + this.id);
    layers.style.display = 'block';
}

function hide_last() {
    layers = document.getElementsByClassName('floater');
    for (var i =0; i < layers.length; i++) {
        layers[i].style.display = 'none';
    }
}

window.onload = init;