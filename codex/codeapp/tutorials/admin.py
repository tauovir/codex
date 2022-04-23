from django.contrib import admin

# Register your models here.


from .models import Subjects, Topics, TopicSection

admin.site.register(Subjects)
admin.site.register(Topics)
admin.site.register(TopicSection)
