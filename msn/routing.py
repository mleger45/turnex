from msn import consumer
from channels import route

channel_routing = [
    route('websocket.connect', consumer.ws_connect),
    route('websocket.receive', consumer.ws_message),
    route("websocket.disconnect", consumer.ws_disconnect),
]
