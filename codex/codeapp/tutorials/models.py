# Create your models here.
from django.db import models
import datetime
from django_ckeditor_5.fields import CKEditor5Field
from django.utils import timezone


# ==========================Master Tables===================================
PUBLISH = True
UNPUBLISH = False

PUBLISH_CHOICE = [(PUBLISH, 'Publish'), (UNPUBLISH, 'Unpublish'),]

class Subjects(models.Model):



    name = models.CharField(max_length=200, null=False)  # max_length required
    slug = models.SlugField(max_length=120, null=False, unique=True)  # max_length required
    description = CKEditor5Field('Text', config_name='extends', default='')
    image = models.ImageField(upload_to='subjects', null=True, blank=True)
    icon = models.ImageField(upload_to='subjects_icons', null=True, blank=True)

    class Status(models.IntegerChoices):
        active = 1
        inactive = 0

    status = models.IntegerField(choices=Status.choices, default=Status.active)
    created_at = models.DateField(default=datetime.date.today)
    updated_at = models.DateField(auto_now_add=True)

    is_publish = models.BooleanField(choices=PUBLISH_CHOICE, default=UNPUBLISH)

    def __str__(self):
        return self.name

    class Meta:
        db_table = 'subject_tbl_dm'
        verbose_name = 'Subject'
        verbose_name_plural = 'Subjects'


class Topics(models.Model):
    name = models.CharField(max_length=200, null=False)  # max_length required
    slug = models.SlugField(max_length=120, null=False, default='')  # max_length required
    # description = models.TextField(max_length=200, null=True)  # max_length required
    description = CKEditor5Field('Text', config_name='extends')
    subject = models.ForeignKey(Subjects, on_delete=models.CASCADE, related_name="topics")
    topic_order = models.IntegerField(default=1)
    image = models.ImageField(upload_to='topics', null=True, blank=True)

    class Status(models.IntegerChoices):
        active = 1
        inactive = 0

    is_publish = models.BooleanField(choices=PUBLISH_CHOICE, default=UNPUBLISH)

    created_at = models.DateField(default=datetime.date.today)
    status = models.IntegerField(choices=Status.choices, default=1)
    updated_at = models.DateField(auto_now_add=True)

    class Meta:
        db_table = 'topics_tbl_dm'
        verbose_name = 'Subject Topics'
        verbose_name_plural = 'Subjects Topics'

    def __str__(self):
        return self.name


class TopicSection(models.Model):
    name = models.CharField(max_length=200, null=False)  # max_length required
    # description = CKEditor5Field('Text', config_name='extends')
    description = CKEditor5Field('Text', config_name='extends', default=None)
    topic = models.ForeignKey(Topics, on_delete=models.CASCADE)
    section_order = models.IntegerField(default=1)

    class Status(models.IntegerChoices):
        active = 1
        inactive = 0

    status = models.IntegerField(choices=Status.choices, default=1)
    is_publish = models.BooleanField(choices=PUBLISH_CHOICE, default=UNPUBLISH)
    created_at = models.DateField(default=datetime.date.today)
    updated_at = models.DateField(auto_now_add=True)

    class Meta:
        db_table = 'topic_section_tbl'
        verbose_name = 'Topic Section'
        verbose_name_plural = 'Topic Section'

    def __str__(self):
        return self.name


class Posts(models.Model):
    name = models.CharField(max_length=200, null=True)  # max_length required
    title = models.CharField(max_length=200)  # max_length required
    slug = models.SlugField(max_length=200)  # max_length required
    desciption = CKEditor5Field(blank=False, null=True)
    post_image = models.ImageField(upload_to='post', null=True, blank=True)

    class ActiveStatus(models.IntegerChoices):
        active = 1
        inactive = 0

    class IsPublish(models.IntegerChoices):
        publish = 1
        not_publish = 0

    is_publish = models.IntegerField(choices=IsPublish.choices, default=IsPublish.not_publish)
    publish_date = models.DateField(auto_now_add=False, default=None, null=True)
    status = models.IntegerField(choices=ActiveStatus.choices, default=ActiveStatus.inactive)
    created_at = models.DateField(default=datetime.date.today)

    # It will show the title in admin panel instead of objects(id)
    def __str__(self):
        return self.name

    class Meta:
        verbose_name = 'post'
        verbose_name_plural = 'posts'

    def get_absolute_url(self):
        return f"post/{self.slug}"

    @property
    def days_since_creation(self):
        diff = timezone.now().date() - self.publish_date
        return diff.days


class PostDetail(models.Model):
    post = models.ForeignKey(Posts, on_delete=models.CASCADE)
    summary = CKEditor5Field(blank=False, null=False, config_name='extends')
    reference_url = models.URLField(max_length=200, default='https://github.com/tauovir', blank=True)
    comment_count = models.IntegerField(default=0)

    # It will show the title in admin panel instead of objects(id)
    def __str__(self):
        return self.post.name

    created_at = models.DateField(default=datetime.date.today)
    updated_at = models.DateField(auto_now_add=True)

    class Meta:
        verbose_name = 'post detail'
        verbose_name_plural = 'post details'



class Notes(models.Model):

    name = models.CharField(max_length=200, null=False)  # max_length required
    description = CKEditor5Field('Text', config_name='extends', default='')

    created_at = models.DateField(default=datetime.date.today)

    def __str__(self):
        return self.name

    class Meta:
        db_table = 'notes_dm'
        verbose_name = 'Note'
        verbose_name_plural = 'Notes'

# ==========================Master Tables end===================================
