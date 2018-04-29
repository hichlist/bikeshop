from django.shortcuts import render


# Create your views here.
def main(request):
    mainpage = True
    return render(request, "index.html", {'mainpage': mainpage})
