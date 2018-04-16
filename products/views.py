from django.shortcuts import render


# Create your views here.
def bicycles(request):
    return render(request, "bicycles.html")