# -*- content:UTF-8 -*-

from channels import Group

from .events import EventTurnex
event_dispatcher = EventTurnex()


def ws_connect(message):
    message.reply_channel.send({"accept": True})
    Group("turnex").add(message.reply_channel)


def ws_disconnect(message):
    Group('turnex').discard(message.reply_channel)


def ws_message(message):
    response = event_dispatcher.process(message['text'])
    Group('turnex').send({"text": response})
