import logging

from channels import Group
from channels.sessions import channel_session

LOG = logging.getLogger(__name__)

# TODO: Take a look on best practices to handle websockets in django

def ws_connect(message):
    Group('queue').add(message.reply_channel)
    # message.reply_channel.send({'text': 'welcome!!'})
    LOG.info('>>>>>  RECEIVED NEW CONNECTION <<<<<')


def ws_receive(message):
    message.reply_channel.send({'text': 'response'})
    Group('queue').send({
        'text': 'Envio informacion: {}'.format(message['text'])})


def ws_disconnect(message):
    Group('test').discard(message.reply_channel)
