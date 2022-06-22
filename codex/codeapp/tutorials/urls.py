
from django.urls import path

from . import views,draft_views

urlpatterns = [
    path('', views.index, name='index'),
    path('drafts/', draft_views.draft_index, name='draft_index'),
    # path('document/<slug:topic>', views.documents_detail, name='post_detail'),
    path('<slug:subject_slug>/<slug:topic_slug>', views.topic_detail, name='topic_detail'),
    path('drafts/<slug:subject_slug>/<slug:topic_slug>', draft_views.draft_topic_detail, name='draft_topic_detail'),

]
