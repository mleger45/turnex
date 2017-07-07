
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
    var spanishDays = ['Lunes', 'Martes', 'Miercoles', 'Jueves', 'Viernes', 'Sábado', 'Dommingo'];
    var d = new Date();
    var day = d.getDay()-1; 
    document.getElementById("show-date").innerHTML =  spanishDays[day]+" "+d.toLocaleDateString();
}

setInterval(showTime,1000);