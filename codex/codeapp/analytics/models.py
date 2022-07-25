from django.db import models

# Create your models here.
from django.db import models
from django.utils import timezone
from codeapp.weblog.models import Post
from codeapp.tutorials.models import Topics


# Create your models here.

class WebAccessLog(models.Model):
    ip_address = models.CharField(max_length=200, null=True)
    post = models.ForeignKey(Post, on_delete=models.CASCADE)
    topic = models.ForeignKey(Topics, on_delete=models.CASCADE)
    city = models.CharField(max_length=200, null=True)
    state = models.CharField(max_length=200, null=True)
    country = models.CharField(max_length=200, null=True)
    created_at = models.DateField(default=timezone.now)

    # It will show the title in admin panel instead of objects(id)
    def __str__(self):
        return self.ip_address

    class Meta:
        db_table = 'web_access_log'
        verbose_name = 'Web Access Log'
        verbose_name_plural = 'Web Access Log'
