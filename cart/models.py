from django.contrib.auth.models import User
from django.db import models
from products.models import Products


class Status(models.Model):
    name = models.CharField(max_length=30, default='New')


class Cart(models.Model):
    product = models.ForeignKey(Products, on_delete=models.CASCADE)
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    quantity = models.IntegerField(verbose_name='quantity')
    status = models.ForeignKey(Status, on_delete=models.CASCADE, default=1)
    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now_add=True, blank=True)
