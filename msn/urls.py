from django.conf.urls import url
from . import views

from django.conf import settings
from django.conf.urls.static import static


urlpatterns = [
    url(r'^forms/$', views.forms, name="view"),
    url(r'^board/$', views.board, name="board"),
    url(r'^config/$', views.config, name="config"),
    url(r'^$', views.main, name="main")
]


if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)