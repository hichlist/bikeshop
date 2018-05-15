from django.shortcuts import render

from cart.models import Cart


def cart(request):
    context = dict()
    context['products'] = Cart.objects.all()

    remove = request.GET.get('remove', '')
    if remove:
        Cart.objects.filter(id=remove).delete()
        print('--->', remove)

    return render(request, 'cart.html', context)
