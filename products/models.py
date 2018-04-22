from django.db import models


class BikeCategory(models.Model):
    category = models.CharField("Category name", max_length=50, unique=True)

    def __str__(self):
        return self.category


# Create your models here.
class Bikes(models.Model):
    bike_name = models.CharField("Bike's name", max_length=30)
    model = models.CharField("Model number", max_length=10)
    price = models.CharField("Price", max_length=10)
    size = models.CharField("frame size", max_length=5)
    biketype = models.CharField("bike type", max_length=30)
    brand = models.CharField("brand", max_length=30)
    description = models.TextField("description")
    category = models.OneToOneField(BikeCategory, "category", unique=True)

    class Meta:
        verbose_name = 'Bike'
        verbose_name_plural = 'Bikes'

    def __str__(self):
        return self.bike_name


class Images(models.Model):
    bike_name = models.ForeignKey(Bikes, verbose_name="Bike's name")
    image = models.ImageField("Bike's image")
