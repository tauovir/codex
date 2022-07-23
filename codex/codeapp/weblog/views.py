from django.shortcuts import render

# Create your views here.

from django.shortcuts import render

# Create your views here.



def post(request):

    return render(request, 'weblog/post.html')