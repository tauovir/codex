from django.contrib import admin

# Register your models here.

from django.utils import timezone
from .models import Subjects, Topics, TopicSection, PostDetail, Posts, Notes


class SubjectAdmin(admin.ModelAdmin):

    list_display = ('name', 'slug','is_publish', 'status','icon', 'created_at')  # Show these element in admin
    list_filter = ('status',)
    search_fields = ('name', 'slug')
    prepopulated_fields = {'slug': ('name',)}  # It will automatically prefilled slug when we type title

    def days_since_creation(self, Subjects):
        diff = timezone.now().date() - Subjects.created_at
        return diff.days

    days_since_creation.short_description = 'Days Active'  # Rename new property



class TopicsAdmin(admin.ModelAdmin):

    list_display = ('name', 'slug', 'subject','is_publish', 'topic_order','created_at')  # Show these element in admin
    list_filter = ('status','subject')
    search_fields = ('name', 'slug')
    prepopulated_fields = {'slug': ('name',)}  # It will automatically prefilled slug when we type title
    list_per_page = 10  # record 10 per page

    def days_since_creation(self, Topics):
        diff = timezone.now().date() - Topics.created_at
        return diff.days

    days_since_creation.short_description = 'Days Active'  # Rename new property



class TopicSectionAdmin(admin.ModelAdmin):

    list_display = ('name', 'topic','is_publish', 'section_order', 'status','created_at')  # Show these element in admin
    list_filter = ('status','topic')
    search_fields = ('name',)

    def days_since_creation(self, Topics):
        diff = timezone.now().date() - Topics.created_at
        return diff.days

    days_since_creation.short_description = 'Days Active'  # Rename new property
    list_per_page = 10  # record 10 per page




class PostAdmin(admin.ModelAdmin):

    list_display = (
        'name', 'title', 'slug', 'is_publish', 'days_since_creation', 'publish_date',
        'created_at',)  # Show these element in admin
    list_filter = ('is_publish',)
    search_fields = ('title', 'slug')
    prepopulated_fields = {'slug': ('title',)}  # It will automatically prefilled slug when we type title

    def days_since_creation(self, Posts):
        diff = timezone.now().date() - Posts.publish_date
        return diff.days

    days_since_creation.short_description = 'Days Active'  # Rename new prperty


class NotesAdmin(admin.ModelAdmin):

    list_display = (
        'name', 'description','created_at',)  # Show these element in admin




admin.site.register(Subjects, SubjectAdmin)
admin.site.register(Topics,TopicsAdmin)
admin.site.register(TopicSection,TopicSectionAdmin)
admin.site.register(Posts, PostAdmin)
admin.site.register(PostDetail)
admin.site.register(Notes,NotesAdmin)

