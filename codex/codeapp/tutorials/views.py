from django.shortcuts import render

# Create your views here.

from .models import Subjects, Topics
from codeapp.analytics.models import WebAccessLog
from ipware import get_client_ip

from codeapp.weblog.models import Post


def index(request):
    subject_data = []
    for sub in Subjects.objects.filter(status=1, is_publish=True).all()[0:10]:
        topic = Topics.objects.filter(subject=sub, is_publish=True).first()
        temp_data = {"subject_id": sub.id, "subject_name": sub.name, "subject_icon": sub.icon.url if sub.icon else None,
                     "subject_description": sub.description, "subject_slug": sub.slug,
                     "topic_slug": topic.slug if topic else '#'
                     }
        subject_data.append(temp_data)

    post_list = __get_post()
    resp_data = {"subjects": subject_data, "post_list": post_list}

    return render(request, 'tutorials/index.html', resp_data)


def topic_detail(request, subject_slug, topic_slug):
    resp = []
    page_title = ''
    indx = 0

    sidebar = get_sidebar_list(subject_slug, topic_slug)

    for topic in Topics.objects.filter(slug=topic_slug, status=1, is_publish=True).all():
        indx +=1
        if indx == 1:
            page_title = topic.name

        temp = {"topic": topic.name, "topic_id": "topic" + str(topic.id), "description": topic.description,
                "section": []}

        for sec in topic.topicsection_set.order_by('section_order').filter(status=1, is_publish=True).all():
            sec_temp = {"topic_section": sec.name, "section": get_scroll_section(sec.name),
                        "description": sec.description}
            temp['section'].append(sec_temp)
        resp.append(temp)

    _store_access_log(request, topic_slug)

    return render(request, 'tutorials/topics_detail.html', {"records": resp, "sidebar": sidebar,"page_title" : page_title})


def _store_access_log(request, slug):
    topic = Topics.objects.get(slug=slug, status=1, is_publish=True)
    if not topic:
        return 0
    try:
        ip, is_routable = get_client_ip(request)
        if ip:
            log_obj = WebAccessLog(ip_address=ip, topic_id=topic.id)
            log_obj.save()
    except:
        pass


def get_sidebar_list(subject_slug, topic_slug):
    sidebar_list = []

    subject = Subjects.objects.filter(slug=subject_slug, status=1, is_publish=True).first()
    for topic in subject.topics.filter(status=1, is_publish=True).order_by('topic_order').all():

        temp = {"topic": topic.name, "topic_id": "topic" + str(topic.id), 'topic_slug': topic.slug,
                "subject_slug": subject.slug, "current_topic": topic_slug,
                "section": []}

        for sec in topic.topicsection_set.order_by('section_order').filter(status=1, is_publish=True).all():
            sec_temp = {"topic_section": sec.name, "section": get_scroll_section(sec.name)}
            temp['section'].append(sec_temp)

        sidebar_list.append(temp)

    return sidebar_list


def get_scroll_section(section):
    return section.strip().lower().replace(" ", "-")


def __get_post():

    post_list = Post.objects.filter(is_publish=1).all()
    return post_list
