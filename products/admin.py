from django.contrib import admin
from products.models import Products, ProductCategory, Images


class ImagesInline(admin.TabularInline):
    model = Images
    extra = 0
    fields = ('image', 'product')
    readonly_fields = ('product',)


@admin.register(Products)
class BikeAdmin(admin.ModelAdmin):
    inlines = [ImagesInline, ]
    list_display = ['name', 'brand', 'price', 'category', 'show_img']
    list_display_links = ['name', 'brand']
    list_filter = ['name']
    search_fields = ['description', 'name', 'brand']

admin.site.register(ProductCategory)
