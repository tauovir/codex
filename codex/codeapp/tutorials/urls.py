
from django.urls import path

from . import views

urlpatterns = [
    path('', views.index, name='index'),
    # path('document/<slug:topic>', views.documents_detail, name='post_detail'),
    path('<slug:subject_slug>/<slug:topic_slug>', views.topic_detail, name='topic_detail'),
]
