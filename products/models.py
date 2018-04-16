from django.db import models


# Create your models here.
class Bikes(models.Model):
    name = models.CharField("Bike's name", max_length=30)
    model = models.CharField("Model number", max_length=10)
    price = models.CharField("Price", max_length=10)
    size = models.CharField("frame size", max_length=5)
    biketype = models.CharField("bike type", max_length=30)
    brand = models.CharField("brand", max_length=30)
    description = models.TextField("description")
