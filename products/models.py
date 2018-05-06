from django.db import models


class ProductCategory(models.Model):
    category = models.CharField(verbose_name="Category name", max_length=50)

    def __str__(self):
        return self.category


# Create your models here.
class Products(models.Model):
    name = models.CharField("product's name", max_length=30)
    model = models.CharField("model number", max_length=10)
    price = models.CharField("price", max_length=10)
    size = models.CharField("frame size", max_length=5, blank=True)
    brand = models.CharField("brand", max_length=30)
    description = models.TextField("description")
    category = models.ForeignKey(ProductCategory, verbose_name="category",
                                 on_delete=models.CASCADE)

    class Meta:
        verbose_name = 'Bike'
        verbose_name_plural = 'Products'

    def show_img(self):
        return r'<a herf="{0}"><img src="{0}" width="100"/></a>'

    def get_images(self):
        return Images.objects.filter(item=self)

    def __str__(self):
        return self.name


class Images(models.Model):
    product = models.ForeignKey(Products, verbose_name="Product's name",
                                on_delete=models.CASCADE,
                                related_name='product_images')
    image = models.ImageField("Product's image", upload_to='bikes',
                              null=True)
