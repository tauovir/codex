from django.shortcuts import render

# Create your views here.

from .models import Subjects


def index(request):
    data = Subjects.objects.all()
    resp_data = {"subjects": data}
    return render(request, 'tutorials/index.html', resp_data)


def documents_detail(request, slug):
    resp = []
    subject = Subjects.objects.filter(slug=slug).first()
    for topic in subject.topics_set.all():
        temp = {"topic": topic.name, "topic_id": "topic" + str(topic.id), "description": topic.description,
                "section": []}

        for sec in topic.topicsection_set.all():
            sec_temp = {"topic_section": sec.name, "section_id": "section" + str(sec.id),
                        "description": sec.description}
            temp['section'].append(sec_temp)
        resp.append(temp)

    return render(request, 'tutorials/docs-page.html', {"records": resp})
