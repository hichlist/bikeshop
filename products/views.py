from django.shortcuts import render
from products.models import Bikes, Images


# Create your views here.
def bicycles(request):
    bike = Bikes.objects.all()
    images = Images.objects.all()
    return render(request, "bicycles.html", {'bike': bike, 'images': images})