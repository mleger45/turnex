import logging

from channels import Group
# from channels.sessions import channel_session

LOG = logging.getLogger(__name__)

# TODO: Take a look on best practices to handle websockets in django


def ws_connect(message):
    print('<<< CONNECTED >>>')

    Group('queue').add(message.reply_channel)
    LOG.info('>>>>>  RECEIVED NEW CONNECTION <<<<<')
    message.reply_channel.send({"accept": True, "text": "welcome"})
    Group("chat").add(message.reply_channel)


def ws_disconnect(message):
    Group('test').discard(message.reply_channel)


def ws_message(message):
    Group('chat').send({"text": message.content['text']})
