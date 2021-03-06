# -*- coding:utf-8 -*-
import logging
import json
db_logger = logging.getLogger('db')

from msn import services


class EventTurnex(object):
    """Event Handler"""
    FORM_REGISTER = 'form-register'
    BOARD_REGISTER = 'board-register'
    NEXT_TICKET = 'next-ticket'
    WEATHER_NOTIFY = 'weather-notify'
    WEATHER_ACK_NOTIFY = 'weather-ack-notify'
    SERVER_ACK_REGISTER = 'server-ack-register'
    SERVER_TICKET_BROADCAST = 'server-ticket-broadcast'
    RING_THE_BELL = 'ring-the-bell'

    EVENT_LIST = [
        FORM_REGISTER,
        BOARD_REGISTER,
        NEXT_TICKET,
        WEATHER_NOTIFY,
        SERVER_ACK_REGISTER,
        SERVER_TICKET_BROADCAST,
        RING_THE_BELL,
    ]

    def __init__(self):
        self.dispatcher = {
            self.FORM_REGISTER: self.form_register,
            self.BOARD_REGISTER: self.board_register,
            self.NEXT_TICKET: self.next_ticket,
            self.RING_THE_BELL: self.ring_the_bell,
            self.WEATHER_NOTIFY: self.weather_notify,
        }

    def process(self, message):
        """ Process all the events on the socket"""
        if not self.valid(message):
            db_logger.error('Not valid message detected: {}'.format(message))
            return self.error()
        db_logger.info('processing message: {}'.format(message))
        data = json.loads(message)
        return self.dispatcher[data['event']](data)

    def form_register(self, data):
        ''' event emitted by a form view '''
        return self.server_ack_register()

    def board_register(self, data):
        return self.server_ack_register()

    def server_ack_register(self):
        data = {
            "event": self.SERVER_ACK_REGISTER,
            "body": 'registered successfully',
        }
        return json.dumps(data)

    def next_ticket(self, data):
        """This is a function for tracking purposes"""
        return self.server_ticket_broadcast(data)

    def server_ticket_broadcast(self, data):
        server_data = data
        server_data['event'] = self.SERVER_TICKET_BROADCAST
        return json.dumps(server_data)

    def ring_the_bell(self, data):
        exec_data = {
            "event": 'exec:{}'.format(data['event'])
        }
        return json.dumps(exec_data)

    def weather_notify(self, data):
        weather = services.get_weather()
        result = {
            'event': self.WEATHER_ACK_NOTIFY,
            'weather': weather
        }
        return json.dumps(result)

    def valid(self, raw_message):
        try:
            data = json.loads(raw_message)
            event = data['event']
            return event is not None and event in self.EVENT_LIST
        except:
            return False

    def error(self):
        data = {
            "event": 'error',
            "body": 'Stop Hacking.'
        }
        return json.dumps(data)
