from django.db import models
import datetime
from django_ckeditor_5.fields import CKEditor5Field
from django.utils import timezone

# Create your models here.

class PostCategory(models.Model):

    name = models.CharField(max_length=200, null=True)
    description = CKEditor5Field(blank=False, null=True)

    class ActiveStatus(models.IntegerChoices):
        active = 1
        inactive = 0

    status = models.IntegerField(choices=ActiveStatus.choices, default=ActiveStatus.inactive)
    created_at = models.DateField(default=datetime.date.today)

    # It will show the title in admin panel instead of objects(id)
    def __str__(self):
        return self.name

    class Meta:
        db_table = 'post_category_tbl_dm'
        verbose_name = 'Post Category'
        verbose_name_plural = 'Post Category'


class Post(models.Model):

    post_category = models.ForeignKey(PostCategory, on_delete=models.CASCADE)
    title = models.CharField(max_length=200)
    slug = models.SlugField(max_length=200)
    summary = CKEditor5Field(blank=False, null=False, config_name='extends')
    post_image = models.ImageField(upload_to='post', null=True, blank=True)

    class IsPublish(models.IntegerChoices):
        publish = 1
        not_publish = 0

    is_publish = models.IntegerField(choices=IsPublish.choices, default=IsPublish.not_publish)
    publish_date = models.DateField(auto_now_add=False, default=None, null=True)

    # It will show the title in admin panel instead of objects(id)
    def __str__(self):
        return self.title

    created_at = models.DateField(default=datetime.date.today)
    updated_at = models.DateField(auto_now_add=True)

    class Meta:
        db_table = 'post_tbl_dm'
        verbose_name = 'Post'
        verbose_name_plural = 'Posts'

    def get_absolute_url(self):
        return f"post/{self.slug}"

    @property
    def days_since_creation(self):
        diff = timezone.now().date() - self.publish_date
        return diff.days



