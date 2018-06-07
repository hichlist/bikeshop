from django.shortcuts import render

from products.models import Products, Images


def main(request):
    context = dict()
    context['mainpage'] = True
    context['all_bikes'] = Products.objects.all()
    for bike in context['all_bikes']:
        bike.image = Images.objects.filter(product_id=bike.id)

    return render(request, "index.html", context)
