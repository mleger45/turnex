from django.conf.urls import url, include
from . import views


urlpatterns = [
    url(r'^forms/', views.forms, name="main_view"),
    url(r'^board/', views.board, name="main_view"),
    url(r'^config/', views.config, name="main_view"),
    url(r'^$', views.main, name="main")
]
