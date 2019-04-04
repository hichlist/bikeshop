from django.shortcuts import render
from django.contrib.auth.models import User, Group

from rest_framework import viewsets

from products.models import Products, Images
from main.serializers import UserSerializer, GroupSserializer


class UserViewSet(viewsets.ModelViewSet):
    queryset = User.objects.all().order_by('-date_joined')
    serializer_class = UserSerializer


class GroupViewSet(viewsets.ModelViewSet):
    queryset = Group.objects.all()
    serializer_class = GroupSserializer


def main(request):
    context = dict()
    context['mainpage'] = True
    context['all_bikes'] = Products.objects.all()
    for bike in context['all_bikes']:
        bike.image = Images.objects.filter(product_id=bike.id)

    return render(request, "index.html", context)
