# -*- content:UTF-8 -*-

from channels import Group

from .events import EventTurnex
import logging
db_logger = logging.getLogger(__name__)
event_dispatcher = EventTurnex()


def ws_connect(message):
    db_logger.info('connect successFULLAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA')
    message.reply_channel.send({"accept": True})
    Group("turnex").add(message.reply_channel)


def ws_disconnect(message):
    Group('turnex').discard(message.reply_channel)


def ws_message(message):
    response = event_dispatcher.process(message['text'])
    Group('turnex').send({"text": response})
