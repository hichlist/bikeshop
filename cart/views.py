from django.http import HttpResponseRedirect
from django.shortcuts import render

from cart.models import Cart


def cart(request):
    context = dict()
    items = Cart.objects.all()
    context['products'] = items
    context['count'] = len(items)
    price = 0
    for i in items:
        price = price + int(i.product.price)
    context['total'] = price

    remove = request.GET.get('remove', '')
    if remove:
        Cart.objects.filter(id=remove).delete()
        return HttpResponseRedirect('/cart/')

    return render(request, 'cart.html', context)
