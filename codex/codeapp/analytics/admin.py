from django.contrib import admin

# Register your models here.
from django.contrib import admin

# Register your models here.

from django.utils import timezone
from .models import WebAccessLog



class WebAccessLogAdmin(admin.ModelAdmin):

    list_display = ('ip_address', 'post_id', 'topic_id', 'created_at')
    list_per_page = 10  # record 10 per page


admin.site.register(WebAccessLog, WebAccessLogAdmin)
