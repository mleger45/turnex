
class EventTurnex(object):
    FORM_REGISTER = 'form-register'
    BOARD_REGISTER = 'board-register'
    NEXT_TICKET = 'next-ticket'
    WEATHER_NOTIFY = 'weather-notify'
    SERVER_ACK_REGISTER = 'server-ack-register'
    SERVER_TICKET_BROADCAST = 'server-ticket-broadcast'

    EVENT_LIST = {
        FORM_REGISTER,
        BOARD_REGISTER,
        NEXT_TICKET,
        WEATHER_NOTIFY,
        SERVER_ACK_REGISTER,
        SERVER_TICKET_BROADCAST,
    }


