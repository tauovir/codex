"""codex URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path, include
# Below tow package for Media_URL
from django.conf import settings
from django.conf.urls.static import static

admin.site.site_header = "CodeX Control Panel"
admin.site.site_title = "Codex Site Management"
admin.site.index_title = "CodeX Control Site"

urlpatterns = [
    path('codexadmin/', admin.site.urls),
    path('', include('codeapp.tutorials.urls')),
    path('', include('codeapp.resume.urls')),
    path('', include('contacts.urls')),
]

urlpatterns += [path("ckeditor5/", include('django_ckeditor_5.urls')), ] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
