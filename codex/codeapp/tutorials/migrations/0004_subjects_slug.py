# Generated by Django 3.0.6 on 2022-04-17 11:01

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('tutorials', '0003_topics_slug'),
    ]

    operations = [
        migrations.AddField(
            model_name='subjects',
            name='slug',
            field=models.SlugField(default='pppp', max_length=120),
        ),
    ]
