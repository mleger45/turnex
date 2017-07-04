import json
import logging

from channels import Group
# from channels.sessions import channel_session

LOG = logging.getLogger(__name__)

def ws_connect(message):
    LOG.info('>>>>>  RECEIVED NEW CONNECTION <<<<<')
    message.reply_channel.send({"accept": True, "text": "welcome"})
    Group("turnex").add(message.reply_channel)


def ws_disconnect(message):
    Group('turnex').discard(message.reply_channel)


def ws_message(message):
    
    Group('turnex').send({"text": message.content['text']})
