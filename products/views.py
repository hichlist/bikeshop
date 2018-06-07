import requests

from django.shortcuts import render, get_object_or_404
from cart.models import Cart
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

    if request.method == 'POST':

        Cart.objects.create(product=context['product'], user_id=1, quantity=1)

    return render(request, 'single.html', context)


def parts(request):
    context = dict()
    context['accessories'] = Products.objects.filter(
        category__category='ACCESSORIES')
    return render(request, 'parts.html', context)


def accessories(request):
    return render(request, 'accessories.html')
