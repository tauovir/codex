from django.shortcuts import render

# Create your views here.
from django.shortcuts import render, redirect
from django.http import HttpResponse, Http404
from django.shortcuts import render
from .models import Post
from codeapp.analytics.models import WebAccessLog
from ipware import get_client_ip


# Create your views here.


def get_post_list(request):
    try:
        post_list = Post.objects.get(is_publish=1)
        context = {
            'post_list': post_list,
        }
    except Post.DoesNotExist:
        raise Http404("Page Not exist")

    return render(request, 'weblog/post.html', context)


def post(request, slug):
    ip, is_routable = get_client_ip(request)

    try:
        post = Post.objects.get(slug=slug)
        if ip:
            log_obj = WebAccessLog(ip_address=ip, post_id=post.id)
            log_obj.save()
        context = {
            'post': post,
        }
    except Post.DoesNotExist:
        raise Http404("Page Not exist")

    return render(request, 'weblog/post.html', context)
