from django.conf.urls import url
from . import views


urlpatterns = [
    url(r'^forms/', views.forms, name="view"),
    url(r'^board/', views.board, name="board"),
    url(r'^config/', views.config, name="config"),
    url(r'^$', views.main, name="main")
]
