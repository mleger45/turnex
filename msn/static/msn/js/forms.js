function clearStorage() {
    localStorage.clear('oldTicket');
}

function updateTicket(obj) {
    //document.getElementsByClassName('board-sidebar-type')[0].innerHTML = obj.type;
    document.getElementsByClassName('sidebar-ticket')[0].style.backgroundColor = obj.color;
    document.getElementsByClassName('sidebar-ticket')[0].innerHTML = obj.value;
}

function createTicket(ticket) {
    var li = document.createElement('li');
    li.innerHTML = ticket.value + " <div class=\"sidebar-list-box\" style=\"background: " + ticket.color + "\"></div>";
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
    if (elem == 3) {
        list.lastElementChild.remove();
    }
}

clearStorage();



var socket = new WebSocket("wss://" + window.location.host + "/"); // TODO: Provide ws routes from BE
socket.onmessage = function(e) {
    try {
        var a = JSON.parse(e.data);

        if (a.event === 'server-ticket-broadcast') {
            var tuple = a.body.type.split("*");
            var newTicket = {
                type: tuple[0],
                value: a.body.value,
                color: tuple[1],
            };

            updateTicket(newTicket);

            if (existOldTicket()) {
                var oldTicket = getOldTicket();
                updateList(oldTicket);
                saveTicket(newTicket);
            } else {
                saveTicket(newTicket);
            }
        } else if (a.event === 'server-ack-register') {
            console.info(a.body);
        }

    } catch (err) {
        console.error('ERROR:', err, 'DATA:', e.data);
    }
}

socket.onopen = function() {
        var eventRegister = {
            event: 'form-register',
            userAgent: navigator.userAgent
        };
        socket.send(JSON.stringify(eventRegister));
        console.log('...conexion starting...');

    }
    // Call onopen directly if socket is already open
if (socket.readyState == WebSocket.OPEN) socket.onopen();

function valid(ticket) {

    var tuple = ticket.type.split("*");
    var type = tuple[0];
    var color = tuple[1];
    var value = ticket.value;
    var isValid = type != "" && color != "" && value != "";
    return isValid;
}

function sendTicket(event) {
    var form = event.form.id;
    var value = document.getElementById('input-' + form).value;
    var radio = document.getElementById(form).elements["rd-" + form].value;

    var body = {
        source: form,
        value: value,
        type: radio
    };

    var payload = {
        event: 'next-ticket',
        body: body
    };

    if (valid(payload.body)) {
        socket.send(JSON.stringify(payload));
        document.getElementById(form).reset();
    }
}

function ring() {
    var payload = {
        event: 'ring-the-bell'
    };
    socket.send(JSON.stringify(payload));
    return false;
}