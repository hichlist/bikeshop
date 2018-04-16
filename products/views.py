from django.shortcuts import render
from products.models import Bikes


# Create your views here.
def bicycles(request):
    bike = Bikes.objects.all()
    return render(request, "bicycles.html", {'bike': bike})