from django.db import models


class BikeCategory(models.Model):
    category = models.CharField(verbose_name="Category name", max_length=50)

    def __str__(self):
        return self.category


# Create your models here.
class Bikes(models.Model):
    name = models.CharField("bike's name", max_length=30)
    model = models.CharField("model number", max_length=10)
    price = models.CharField("price", max_length=10)
    size = models.CharField("frame size", max_length=5)
    brand = models.CharField("brand", max_length=30)
    description = models.TextField("description")
    category = models.ForeignKey(BikeCategory, verbose_name="category",
                                 on_delete=models.CASCADE)

    class Meta:
        verbose_name = 'Bike'
        verbose_name_plural = 'Bikes'

    def show_img(self):
        return r'<a herf="{0}"><img src="{0}" width="100"/></a>'

    def get_images(self):
        return Images.objects.filter(item=self)

    def __str__(self):
        return self.name


class Images(models.Model):
    bike = models.ForeignKey(Bikes, verbose_name="Bike's name",
                             on_delete=models.CASCADE,
                             related_name='bikes_images')
    image = models.ImageField("Bike's image", upload_to='bikes',
                              null=True)
