from django.conf.urls import url
from api.v1.views import TurnexFormView, VideoView


urlpatterns = [
    url(r'^forms/$', TurnexFormView.as_view(), name="forms"),
    url(r'^videos/$', VideoView.as_view(), name="videos"),
]
