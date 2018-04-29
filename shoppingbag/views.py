from django.shortcuts import render

def shoppingbag(request):
    return render(request, 'cart.html')
