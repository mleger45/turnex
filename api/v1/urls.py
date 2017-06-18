from django.conf.urls import url
from api.v1.views import TurnexFormView


urlpatterns = [
    url(r'^forms/$', TurnexFormView.as_view({
        'get': 'list',
    })),
]
