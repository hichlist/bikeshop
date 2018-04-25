from django.db import models


class BikeCategory(models.Model):
    category = models.CharField(verbose_name="Category name", max_length=50)

    def __str__(self):
        return self.category


class Images(models.Model):
    # bike = models.ForeignKey(Bikes, verbose_name="Bike's name",
    #                          on_delete=models.CASCADE)
    image = models.ImageField("Bike's image", upload_to='bikes',
                              null=True)


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
    images = models.ManyToManyField(Images, verbose_name="Images")

    class Meta:
        verbose_name = 'Bike'
        verbose_name_plural = 'Bikes'

    def show_img(self):
        return u'<a herf="{0}"><img src="{0}" width="100"/></a>'.\
            format(self.images)

    def __str__(self):
        return self.name


