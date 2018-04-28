from django.conf.urls import url

from . import views

urlpatterns = [
    url(r'^$', views.bicycles, name='bicycles'),
    url(r'(?P<id>\d+)$', views.item_card, name='item_card')
]
