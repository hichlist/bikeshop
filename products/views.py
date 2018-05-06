from django.shortcuts import render
from products.models import Products, Images


def bicycles(request):
    bikes = Products.objects.all()
    return render(request, "bicycles.html", {'bikes': bikes})


def item_card(request, id):
    product = Products.objects.get(id=id)
    images = Images.objects.filter(id=id)
    print(images)
    return render(request, 'single.html', {'product': product, 'images': images})


def parts(request):
    return render(request, 'parts.html')


def accessories(request):
    return render(request, 'accessories.html')
