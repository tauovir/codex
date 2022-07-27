from django.shortcuts import render, redirect
from django.http import HttpResponse, Http404
from .models import Profile, Employment, Projects, Technology_Category

from django.conf import settings
import json
# from ..errorMessage import getApiMsg
import re

from django.forms.models import model_to_dict


# Create your views here.

def resume_view(request):
    profile = Profile.objects.filter(email='taukir707@gmail.com').get()
    educationSet = Profile.objects.first().educations_set.filter(is_school=0)

    tech_set, other_tech = __get_technologies()
    context = {
        "profile": profile,
        "technology_data": tech_set,
        "other_tech": other_tech,
        "employment_data": __get_employement(),
        "educationSet": educationSet

    }
    return render(request, 'resume/resume_profile.html', context)


def __get_technologies():
    tech_set = []
    other_tech = []

    catTechSet = Technology_Category.objects.order_by('cat_order').all()

    for cat_obj in catTechSet:
        tech_list = []

        if cat_obj.name.lower() == 'others':
            tempOther = cat_obj.technologies_set.all()
            other_tech = [x.name for x in tempOther]

            continue

        cat_dict = {
            "name": cat_obj.name,
            "status": cat_obj.status,
            "created_at": cat_obj.created_at,
            "cat_order": cat_obj.cat_order,

        }
        for tech_obj in cat_obj.technologies_set.order_by('tech_order').all():
            technology_set = {
                "name": tech_obj.name,
                "version": tech_obj.version,
                "rate": tech_obj.rate,
                "is_other": tech_obj.is_other,
            }
            tech_list.append(technology_set)
        cat_dict['technology_set'] = tech_list

        tech_set.append(cat_dict)

    return tech_set, other_tech


def __get_employement():
    employment_set = []
    employment = Employment.objects.order_by('-start_date').all()

    for emp_obj in employment:
        pro_list = []
        emp_dict = {
            "position": emp_obj.position,
            "employer": emp_obj.employer,
            "location": emp_obj.location,
            "summary": emp_obj.summary,
            "start_date": emp_obj.start_date,
            "end_date": emp_obj.end_date,
            "is_current_org": emp_obj.is_current_org,
            "created_at": emp_obj.created_at,
            "updated_at": emp_obj.updated_at,
        }
        for pro_obj in emp_obj.projects_set.order_by('-start_date').all():
            project_set = {
                "name": pro_obj.name,
                "role_responsibility": pro_obj.role_responsibility,
                "team_size": pro_obj.team_size,
                "start_date": pro_obj.start_date,
                "end_date": pro_obj.end_date,
                "tech_stack": pro_obj.tech_stack,
                "created_at": pro_obj.created_at,
            }
            pro_list.append(project_set)

        emp_dict['project_set'] = pro_list

        employment_set.append(emp_dict)

    return employment_set



"""
cat = Technology_Category.objects.get(pk = 1)
cat.technologies_set.all()
cat1 = Technology_Category.objects.all();
for ct in cat1:
    ...:     print(ct.technologies_set.all())

"""
