from django.db import models

# Create your models here.
import datetime
from django_ckeditor_5.fields import CKEditor5Field
import jsonfield


class Technology_Category(models.Model):
    name = models.CharField(max_length=120, null=False)  # max_length required

    class status(models.IntegerChoices):
        active = 1
        not_active = 0

    status = models.IntegerField(default=1, choices=status.choices)
    created_at = models.DateField(default=datetime.date.today)
    cat_order = models.SmallIntegerField(default=1)

    def __str__(self):
        return self.name


class Technologies(models.Model):
    category = models.ForeignKey(Technology_Category, on_delete=models.CASCADE)
    name = models.CharField(max_length=120, null=False)  # max_length required
    version = models.CharField(max_length=120, default='', blank=True)  # max_length required
    rate = models.SmallIntegerField(default=70)  # max_length required

    class isOther(models.IntegerChoices):
        yes = 1
        no = 0

    class status(models.IntegerChoices):
        active = 1
        not_active = 0

    status = models.IntegerField(default=1, choices=status.choices)
    is_other = models.IntegerField(default=0, choices=isOther.choices)
    tech_order = models.IntegerField()

    def __str__(self):
        return self.name


# ==========================Master Tables end===================================

# Create your models here.
class Profile(models.Model):
    first_name = models.CharField(max_length=120, default='')  # max_length required
    middle_name = models.CharField(max_length=120, default='')  # max_length required
    last_name = models.CharField(max_length=120, default='')  # max_length required
    profile_title = models.CharField(max_length=120, default='')  # max_length required
    brief_summary = models.TextField(max_length=800, null=False)  # max_length required
    email = models.EmailField(max_length=50, default='')  # max_length required
    mobile_number = models.CharField(max_length=15, default='')  # max_length required
    profile_pic = models.ImageField(upload_to='resume',null=True)
    data = jsonfield.JSONField()
    created_at = models.DateField(default=datetime.date.today)
    updated_at = models.DateField(auto_now_add=True)

    def __str__(self):
        return self.first_name + " " + self.middle_name + " " + self.last_name


class Employment(models.Model):
    profile = models.ForeignKey(Profile, on_delete=models.CASCADE)
    position = models.CharField(max_length=120, default='')  # max_length required
    employer = models.CharField(max_length=120, null=False)  # max_length required
    location = models.CharField(max_length=120, null=True)  # max_length required
    summary = models.TextField(max_length=800, null=False)  # max_length required
    start_date = models.DateField()
    end_date = models.DateField(blank=True, null=True)

    class isCurrent(models.IntegerChoices):
        yes = 1
        no = 0

    is_current_org = models.IntegerField(default=0, choices=isCurrent.choices)
    created_at = models.DateField(default=datetime.date.today)
    updated_at = models.DateField(auto_now_add=True)

    def __str__(self):
        return self.employer


class Projects(models.Model):
    employment = models.ForeignKey(Employment, on_delete=models.CASCADE)
    name = models.CharField(max_length=120, null=False)  # max_length required
    description = CKEditor5Field('Description', config_name='extends', default='')
    # description = models.TextField(max_length=800, null=False)  # max_length required
    role_responsibility = CKEditor5Field('Role_Responsibility', config_name='extends', default='')
    team_size = models.PositiveSmallIntegerField(default=0)
    start_date = models.DateField()
    end_date = models.DateField(blank=True, null=True)
    tech_stack = jsonfield.JSONField()
    created_at = models.DateField(default=datetime.date.today)

    # technology = models.ManyToManyField(Technologies,through='Project_Technology')

    def __str__(self):
        return self.name

    class Meta:
        verbose_name = 'Projects'
        verbose_name_plural = 'Projects'



class Educations(models.Model):
    profile = models.ForeignKey(Profile, on_delete=models.CASCADE)
    course_short_name = models.CharField(max_length=100, null=True)  # max_length required
    course_full_name = models.CharField(max_length=100, null=True)  # max_length required
    institute_short_name = models.CharField(max_length=50, null=True)  # max_length required
    institute_full_name = models.CharField(max_length=100, null=True)  # max_length required
    university = models.CharField(max_length=100, null=True)  # max_length required
    start_year = models.PositiveSmallIntegerField()
    end_year = models.PositiveSmallIntegerField()
    duration = models.CharField(max_length=100, null=True)  # max_length required
    created_at = models.DateField(default=datetime.date.today)

    class isSchool(models.IntegerChoices):
        yes = 1
        no = 0

    is_school = models.IntegerField(default=0, choices=isSchool.choices)

    def __str__(self):
        return self.course_full_name

