from django.contrib import admin

# Register your models here.

from django.utils import timezone
from .models import PostCategory, Post


class PostCategoryAdmin(admin.ModelAdmin):
    list_display = ('name', 'description', 'status', 'created_at')  # Show these element in admin
    list_filter = ('status',)
    search_fields = ('name',)


class PostAdmin(admin.ModelAdmin):
    list_display = ('post_category', 'title', 'slug', 'is_publish', 'publish_date', 'created_at',
                    'days_since_creation')  # Show these element in admin
    search_fields = ('title', 'slug')
    prepopulated_fields = {'slug': ('title',)}  # It will automatically prefilled slug when we type title
    list_per_page = 10  # record 10 per page


admin.site.register(PostCategory, PostCategoryAdmin)
admin.site.register(Post, PostAdmin)
