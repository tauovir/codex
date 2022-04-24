# Generated by Django 3.0.6 on 2022-03-15 17:33

from django.db import migrations
import django_ckeditor_5.fields


class Migration(migrations.Migration):

    dependencies = [
        ('tutorials', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='topics',
            name='description',
            field=django_ckeditor_5.fields.CKEditor5Field(verbose_name='Text'),
        ),
        migrations.AlterField(
            model_name='topicsection',
            name='description',
            field=django_ckeditor_5.fields.CKEditor5Field(default=None, verbose_name='Text'),
        ),
    ]