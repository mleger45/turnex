

var types = [
    "<p class=\"title\">Mandatario</p><p class=\"text\">Aquellos con credencial y vienen a hacer gestoría en nombre de terceros.</p>", 
    "<p class=\"title\">Usuario</p><p class=\"text\">Titulares o terceros de dominio que no son acreedores de credencial, y no han hecho turnos online.</p>", 
    "<p class=\"title\">Site</p> <p class=\"text\">Aquellos que reservan su turno electrónicamente por Internet</p>"
];
var colors = ["#f0c944","#ff8484", "#6ab9ec"];
document.getElementsByClassName('front')[0].innerHTML = types[0];
document.getElementsByClassName('front')[0].style.backgroundColor = colors[0];

document.getElementsByClassName('back')[0].innerHTML = types[1];
document.getElementsByClassName('back')[0].style.backgroundColor = colors[1];
var global = 1;
var isFront = true;


function clearStorage() {
    localStorage.clear('oldTicket');
}

function updateTicket(obj) {
    //document.getElementsByClassName('board-sidebar-type')[0].innerHTML = obj.type;
    document.getElementsByClassName('board-ticket')[0].style.backgroundColor = obj.color;
    document.getElementsByClassName('board-ticket')[0].innerHTML = obj.value;
}

function createTicket(ticket){
    var li = document.createElement('li');
    li.innerHTML = "<div class=\"list-ticket\">"+ticket.value + "</div><div class=\"list-box\" style=\"background: "+ticket.color+"\"></div>";
    return li;
}

function existOldTicket() {
    return localStorage.hasOwnProperty('oldTicket');
}

function getOldTicket() {
    return JSON.parse(localStorage.oldTicket);
}

function saveTicket(ticket) {
    localStorage.oldTicket = JSON.stringify(ticket);
}

function updateList(ticket) {
    var list = document.getElementById('list');
    var ticketElement = createTicket(ticket);
    list.prepend(ticketElement);
    var elem = list.children.length;
    if(elem == 6) {
        list.lastElementChild.remove();
    }
}

function makeSomeNoise() {
    document.getElementById("audio").play();
}

function shine(){
    document.getElementsByClassName('board-ticket')[0].classList.add('animate-blink');
    setTimeout(unshine, 2000);
}

function unshine(){
    document.getElementsByClassName('board-ticket')[0].classList.remove('animate-blink');
}

clearStorage();
var socket = new WebSocket("ws://" + window.location.host + "/");
socket.onmessage = function(e) {
    try {
        var a = JSON.parse(e.data);

        console.log('EVENT:', a.event)

        if(a.event === 'server-ticket-broadcast'){
        var tuple = a.body.type.split("*");

        var newTicket = {
            type: tuple[0],
            value: a.body.value,
            color: tuple[1],
        };

        updateTicket(newTicket);
        
        if(existOldTicket()) {
            var oldTicket = getOldTicket();
            updateList(oldTicket);
            saveTicket(newTicket);
        }
        else {
            saveTicket(newTicket);
        }
        makeSomeNoise();
        shine();

        }
        else if(a.event === 'server-ack-register'){
            console.info(a.body);
        }
        else if(a.event === 'exec:ring-the-bell'){
            makeSomeNoise();
            shine();
        }
        else if(a.event === 'weather-ack-notify'){
            updateWeather(a.weather);
        }


    } catch(err) {
        console.error('ERROR:', err, 'DATA:', e.data);
    }

}
socket.onopen = function() {
    var eventRegister =
    {
        event: 'board-register',
        userAgent: navigator.userAgent
    };
    socket.send(JSON.stringify(eventRegister));
    console.log('...conexion starting...');
}
// Call onopen directly if socket is already open
if (socket.readyState == WebSocket.OPEN) socket.onopen();

function showTime() {
    var spanishDays = ['Domingo', 'Lunes', 'Martes', 'Miercoles', 'Jueves', 'Viernes', 'Sábado'];
    var d = new Date();
    var day = d.getDay();
    document.getElementById("show-date").innerHTML = spanishDays[day]+" "+d.toLocaleDateString();
}

function switchTypes(){
    next(types);
    document.getElementsByClassName('flip-container')[0].classList.toggle('hover');
}


setInterval(switchTypes, 5000);
setInterval(showTime,1000);
setInterval(weather, 60*60*1000); // 1 hour

function next(arr){
    var frontHtml = document.getElementsByClassName('front')[0];
    var backHtml = document.getElementsByClassName('back')[0];
    var elem = "";
    if(global + 1 === arr.length){
         global = 0;
     }else {
        global++;
    }

    elem = arr[global];
    col = colors[global];
    if(!isFront){
        backHtml.innerHTML = elem;
        backHtml.style.backgroundColor = col;
    }else
    {
        frontHtml.innerHTML = elem;
        frontHtml.style.backgroundColor = col;
    }
    isFront = !isFront;
}

function weather(){
    eventWeather = {
        'event': 'weather-notify'
    };
    socket.send(JSON.stringify(eventWeather));
}

function updateWeather(weather){
    document.getElementById('js-img-weather').setAttribute('src', weather.url);
    document.getElementById('js-temperature').innerHTML = weather.temperature + " &#8451;";
}
