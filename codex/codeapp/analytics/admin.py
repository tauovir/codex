
# Register your models here.
from django.contrib import admin

# Register your models here.

from django.utils import timezone
from .models import WebAccessLog
from codeapp.weblog.models import Post
from codeapp.tutorials.models import Topics


class WebAccessLogAdmin(admin.ModelAdmin):
    list_display = ('ip_address', 'created_at', 'topic_name', 'post_title')
    list_per_page = 10  # record 10 per page

    def post_title(self, obj):
        post = Post.objects.get(id=obj.post_id)
        return post.title

    post_title.short_description = 'Post Title'  # Rename new property

    def topic_name(self, obj):
        topic = Topics.objects.get(id=obj.topic_id)
        return topic.name

    topic_name.short_description = 'Topic Name'  # Rename new property


admin.site.register(WebAccessLog, WebAccessLogAdmin)
