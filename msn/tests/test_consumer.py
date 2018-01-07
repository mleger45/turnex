# -*- coding: utf-8 -*-

from channels import Group
from channels.test import ChannelTestCase, WSClient, apply_routes

#TODO: use apply_routes here, these tests are wrong.
from msn import consumer

class MSNConsumerTest(ChannelTestCase):
    
    def test_ws_connect(self):
        client = WSClient()
        default = 'turnex'
        # Inject a message onto the channel to use in a consumer
        #Channel("input").send({"value": 33})
        # Run the consumer with the new Message object
        #message = self.get_next_message("input", require=True)
        #consumer.ws_connect(message)
        # Verify there's a reply and that it's accurate
        #result = self.get_next_message(message.reply_channel.name,
        #                               require=True)
        #self.assertIsNotNone(result)

        client.send_and_consume('websocket.connect', path='/')
        self.assertIsNone(client.receive())

        Group(default).send({'text': 'ok'}, immediately=True)
        self.assertEqual(client.receive(json=False), 'ok')

        client.send_and_consume('websocket.receive',
                                text={'message': 'hey'},
                                path='/')

        self.assertEqual(client.receive(), {'event': 'error', 'body': 'Stop Hacking.'})

        client.send_and_consume('websocket.disconnect',
                                text={'message': 'hey'},
                                path='/')
