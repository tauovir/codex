from django.contrib import admin

# Register your models here.


from codeapp.tutorials.models import *



admin.site.register(Subjects)
admin.site.register(Topics)
admin.site.register(TopicSection)
