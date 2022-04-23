
from django.urls import path

from . import views

urlpatterns = [
    path('', views.index, name='index'),
    path('document/<slug:slug>', views.documents_detail, name='post_detail'),
]
