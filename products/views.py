from django.shortcuts import render, get_object_or_404
from products.models import Products, Images


def bicycles(request):
    context = dict()
    context['mountain'] = Products.objects.filter(
        category__category='MOUNTAIN BIKES')
    context['single'] = Products.objects.filter(
        category__category='SINGLE SPEED-BIKES')
    context['road'] = Products.objects.filter(
        category__category='ROAD-BIKES')
    return render(request, "bicycles.html", context)


def item_card(request, id):
    context = dict()
    context['product'] = get_object_or_404(Products, id=id)
    context['images'] = Images.objects.filter(id=id)
    return render(request, 'single.html', context)


def parts(request):
    return render(request, 'parts.html')


def accessories(request):
    return render(request, 'accessories.html')
