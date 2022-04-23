# Create your models here.
from django.db import models
import datetime
from django_ckeditor_5.fields import CKEditor5Field


# ==========================Master Tables===================================

class Subjects(models.Model):
    name = models.CharField(max_length=20, null=False)  # max_length required
    slug = models.SlugField(max_length=120, null=False, default='pppp')  # max_length required
    description = models.TextField(max_length=200, null=True)  # max_length required
    image = models.ImageField(upload_to='subjects', null=True, blank=True)

    class status(models.IntegerChoices):
        active = 1
        inactive = 0

    created_at = models.DateField(default=datetime.date.today)
    updated_at = models.DateField(auto_now_add=True)

    def __str__(self):
        return self.name

    class Meta:
        db_table = 'subject_tbl_dm'
        verbose_name = 'Subject'
        verbose_name_plural = 'Subjects'


class Topics(models.Model):
    name = models.CharField(max_length=20, null=False)  # max_length required
    slug = models.SlugField(max_length=120, null=False, default='pppp')  # max_length required
    # description = models.TextField(max_length=200, null=True)  # max_length required
    description = CKEditor5Field('Text', config_name='extends')
    subject = models.ForeignKey(Subjects, on_delete=models.CASCADE)
    topic_order = models.IntegerField(default=1)
    image = models.ImageField(upload_to='topics', null=True, blank=True)

    class status(models.IntegerChoices):
        active = 1
        inactive = 0

    created_at = models.DateField(default=datetime.date.today)
    updated_at = models.DateField(auto_now_add=True)

    class Meta:
        db_table = 'topics_tbl_dm'
        verbose_name = 'Subject Topics'
        verbose_name_plural = 'Subjects Topics'

    def __str__(self):
        return self.name


class TopicSection(models.Model):
    name = models.CharField(max_length=20, null=False)  # max_length required
    # description = CKEditor5Field('Text', config_name='extends')
    description = CKEditor5Field('Text', config_name='extends', default=None)
    topic = models.ForeignKey(Topics, on_delete=models.CASCADE)
    topic_order = models.IntegerField(default=1)

    class status(models.IntegerChoices):
        active = 1
        inactive = 0

    created_at = models.DateField(default=datetime.date.today)
    updated_at = models.DateField(auto_now_add=True)

    class Meta:
        db_table = 'topic_section_tbl'
        verbose_name = 'Topic Section'
        verbose_name_plural = 'Topic Section'

    def __str__(self):
        return self.name

# ==========================Master Tables end===================================
