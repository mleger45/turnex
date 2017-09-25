$(document).ready(function() {
    var types = [];
    var colors = [];
    $.getJSON("/api/v1/forms/?format=json", function(data) {
        $.each(data, function(key, form) {
            $.each(form.types, function(key, userType) {
                types.push("<p class=\"title\">" + userType.user_type + "</p><p class=\"text\">" + userType.description + "</p>");
                colors.push(userType.color);
            })
        });
    });

    document.getElementsByClassName('front')[0].innerHTML = types[0];
    document.getElementsByClassName('front')[0].style.backgroundColor = colors[0];

    document.getElementsByClassName('back')[0].innerHTML = types[1];
    document.getElementsByClassName('back')[0].style.backgroundColor = colors[1];
    var global = 1;
    var isFront = true;

    function next(arr) {
        var frontHtml = document.getElementsByClassName('front')[0];
        var backHtml = document.getElementsByClassName('back')[0];
        var elem = "";
        if (global + 1 === arr.length) {
            global = 0;
        } else {
            global++;
        }

        elem = arr[global];
        col = colors[global];
        if (!isFront) {
            backHtml.innerHTML = elem;
            backHtml.style.backgroundColor = col;
        } else {
            frontHtml.innerHTML = elem;
            frontHtml.style.backgroundColor = col;
        }
        isFront = !isFront;
    }

    function switchTypes() {
        next(types);
        document.getElementsByClassName('flip-container')[0].classList.toggle('hover');
    }

    setInterval(switchTypes, 5000);


    function clearStorage() {
        localStorage.clear('oldTicket');
    }

    function updateTicket(obj) {
        //document.getElementsByClassName('board-sidebar-type')[0].innerHTML = obj.type;
        document.getElementsByClassName('board-ticket')[0].style.backgroundColor = obj.color;
        document.getElementsByClassName('board-ticket')[0].innerHTML = obj.value;
    }

    function createTicket(ticket) {
        var li = document.createElement('li');
        li.innerHTML = "<div class=\"list-ticket\">" + ticket.value + "</div><div class=\"list-box\" style=\"background: " + ticket.color + "\"></div>";
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
        if (elem == 6) {
            list.lastElementChild.remove();
        }
    }

    function makeSomeNoise() {
        document.getElementById("audio").play();
    }

    function shine() {
        document.getElementsByClassName('board-ticket')[0].classList.add('animate-blink');
        setTimeout(unshine, 2000);
    }

    function unshine() {
        document.getElementsByClassName('board-ticket')[0].classList.remove('animate-blink');
    }

    clearStorage();
    var socket = new WebSocket("wss://" + window.location.host + "/"); // TODO: Provide ws routes from BE
    socket.onmessage = function(e) {
        try {
            var a = JSON.parse(e.data);

            console.log('EVENT:', a.event)

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
                makeSomeNoise();
                shine();

            } else if (a.event === 'server-ack-register') {
                console.info(a.body);
            } else if (a.event === 'exec:ring-the-bell') {
                makeSomeNoise();
                shine();
            } else if (a.event === 'weather-ack-notify') {
                updateWeather(a.weather);
            }


        } catch (err) {
            console.error('ERROR:', err, 'DATA:', e.data);
        }

    }
    socket.onopen = function() {
            var eventRegister = {
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
        document.getElementById("show-date").innerHTML = spanishDays[day] + " " + d.toLocaleDateString();
    }

    setInterval(showTime, 1000);
    setInterval(weather, 60 * 60 * 1000); // 1 hour

    function weather() {
        eventWeather = {
            'event': 'weather-notify'
        };
        socket.send(JSON.stringify(eventWeather));
    }

    function updateWeather(weather) {
        document.getElementById('js-img-weather').setAttribute('src', weather.url);
        document.getElementById('js-temperature').innerHTML = weather.temperature + " &#8451;";
    }
});