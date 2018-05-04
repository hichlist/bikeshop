from django.shortcuts import render
from products.models import Bikes, Images


def bicycles(request):
    bikes = Bikes.objects.all()
    return render(request, "bicycles.html", {'bikes': bikes})


def item_card(request, id):
    bike = Bikes.objects.get(id=id)
    images = Images.objects.filter(id=id)
    print(images)
    return render(request, 'single.html', {'bike': bike, 'images': images})


def parts(request):
    return render(request, 'parts.html')


def accessories(request):
    return render(request, 'accessories.html')
