from django.shortcuts import render
from products.models import Bikes, Images


def bicycles(request):
    bikes = Bikes.objects.all()
    images = Images.objects.all()
    return render(request, "bicycles.html", {'bikes': bikes, 'images': images})


def item_card(request, id):
    bike = Bikes.objects.get(id=id)
    return render(request, 'single.html', {'bike': bike})
