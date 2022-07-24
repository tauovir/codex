
from django.urls import path

from . import views

urlpatterns = [
    path('', views.get_post_list, name='get_post_list'),
    path('/<slug:slug>', views.post, name='post'),
]
