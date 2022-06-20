from django.shortcuts import render

# Create your views here.

from .models import Subjects, Topics


def index(request):
    subject_data = []
    for sub in Subjects.objects.filter(status=1).all()[0:10]:
        topic = Topics.objects.filter(subject=sub).first()
        temp_data = {"subject_id": sub.id, "subject_name": sub.name,
                     "subject_description": sub.description, "subject_slug": sub.slug,
                     "topic_slug": topic.slug if topic else '#'
                     }
        subject_data.append(temp_data)

    resp_data = {"subjects": subject_data}

    return render(request, 'tutorials/index.html', resp_data)


def topic_detail(request, subject_slug, topic_slug):
    resp = []

    sidebar = get_sidebar_list(subject_slug, topic_slug)

    for topic in Topics.objects.filter(slug=topic_slug).all():
        temp = {"topic": topic.name, "topic_id": "topic" + str(topic.id), "description": topic.description,
                "section": []}

        for sec in topic.topicsection_set.order_by('section_order').all():
            sec_temp = {"topic_section": sec.name, "section": get_scroll_section(sec.name),
                        "description": sec.description}
            temp['section'].append(sec_temp)
        resp.append(temp)

    return render(request, 'tutorials/topics_detail.html', {"records": resp, "sidebar": sidebar})


def get_sidebar_list(subject_slug, topic_slug):
    sidebar_list = []

    subject = Subjects.objects.filter(slug=subject_slug).first()
    for topic in subject.topics.order_by('topic_order').all():

        temp = {"topic": topic.name, "topic_id": "topic" + str(topic.id), 'topic_slug': topic.slug,
                "subject_slug": subject.slug, "current_topic": topic_slug,
                "section": []}

        for sec in topic.topicsection_set.order_by('section_order').all():
            sec_temp = {"topic_section": sec.name, "section": get_scroll_section(sec.name)}
            temp['section'].append(sec_temp)

        sidebar_list.append(temp)

    return sidebar_list


def get_scroll_section(section):
    return section.strip().lower().replace(" ", "-")
