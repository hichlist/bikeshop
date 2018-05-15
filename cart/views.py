from django.shortcuts import render

from cart.models import Cart


def cart(request):
    context = dict()
    context['products'] = Cart.objects.all()
    context['test'] = Cart.objects.get(id=1)
    print(context['test'])
    return render(request, 'cart.html', context)
