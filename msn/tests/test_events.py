# -*- coding:utf-8 -*-
import json

from django.test import TestCase

from unittest.mock import patch, MagicMock
from msn.events import EventTurnex


class EventTurnexTest(TestCase):
    
    def setUp(self):
        self.events = EventTurnex()
    
    @patch('msn.events.EventTurnex.valid')
    def test_process_with_valid_message(self, valid):
        valid.return_value = True
        message = json.dumps({
            'event': 'sample'
        })
        self.events.dispatcher = {
            'sample': MagicMock(return_value={'result': 'ok'})
        }
        self.events.process(message)
        self.assertTrue(self.events.dispatcher['sample'].called)

    @patch('msn.events.EventTurnex.error')
    @patch('msn.events.EventTurnex.valid')
    def test_process_with_invalid_message(self, valid, error):
        valid.return_value = False
        message = json.dumps({
            'event': 'sample'
        })
        self.events.dispatcher = {
            'sample': MagicMock(return_value={'result': 'ok'})
        }
        self.events.process(message)
        error.assert_called()
        
        
        
    
    def test_form_register(self):
        event = {
            'event': self.events.FORM_REGISTER,
            'userAgent': 'sample'
        }
        data = json.dumps(event)
        result = self.events.form_register(data)
        
        expected = json.dumps({
            "event": self.events.SERVER_ACK_REGISTER,
            "body": 'registered successfully',
        })
        
        self.assertEquals(result, expected)

    def test_board_register(self):
        event = {
            'event': self.events.BOARD_REGISTER,
            'userAgent': 'sample'
        }
        data = json.dumps(event)
        result = self.events.board_register(data)
    
        expected = json.dumps({
            "event": self.events.SERVER_ACK_REGISTER,
            "body": 'registered successfully',
        })
    
        self.assertEquals(result, expected)
        
    def test_server_ack_register(self):
        result = self.events.server_ack_register()
        self.assertEquals(type(result), str)
    
    @patch('msn.events.EventTurnex.server_ticket_broadcast')
    def test_next_ticket(self, broadcast):
        self.events.next_ticket(None)
        self.assertTrue(broadcast.called)

    def test_server_ticket_broadcast(self):
        data = {
            'event': 'sample'
        }
        broadcast = self.events.server_ticket_broadcast(data)
        result = json.loads(broadcast)
        expected = result['event'] == self.events.SERVER_TICKET_BROADCAST
        self.assertTrue(expected)
        self.assertIsInstance(broadcast, str)
       
    def test_ring_the_bell(self):
        data = {
            'event': 'ring'
        }
        bell = self.events.ring_the_bell(data)
        result = json.loads(bell)
        expected = 'exec:ring'
        self.assertIsInstance(bell, str)
        self.assertEquals(result['event'], expected)
        
        
    def test_weather_notify(self):
        
        weather = self.events.weather_notify(None)
        result = json.loads(weather)
        self.assertIsInstance(weather, str)
        self.assertEquals(result['event'], self.events.WEATHER_ACK_NOTIFY)
        
    
        
    def test_valid_message_is_valid(self):
        message = {
            'event': 'server-ack-register'
        }
        raw_message = json.dumps(message)
        valid = self.events.valid(raw_message)
        self.assertTrue(valid)
        
    def test_valid_meesage_is_not_valid(self):
        message = {
            'events': 'server-ack-register'
        }
        raw_message = json.dumps(message)
        valid = self.events.valid(raw_message)
        self.assertFalse(valid)
        
    def test_valid_message_empty(self):
        message = None
        raw_message = json.dumps(message)
        valid = self.events.valid(raw_message)
        self.assertFalse(valid)
        
        
    def test_error(self):
        error = self.events.error()
        result = json.loads(error)
        self.assertEquals(result['event'], 'error')
        self.assertEquals(result['body'], 'Stop Hacking.')
