from django.contrib import admin
from products.models import Bikes, BikeCategory, Images


# class ImagesInline(admin.TabularInline):
#     model = Bikes
#     extra = 0
#     fields = ('image', 'bike')
#     fk_name = 'bike'


@admin.register(Bikes)
class BikeAdmin(admin.ModelAdmin):
    # inlines = [ImagesInline]
    list_display = ['name', 'brand', 'price', 'category', 'show_img']
    list_display_links = ['name', 'brand']
    list_filter = ['name']
    search_fields = ['description', 'name', 'brand']

admin.site.register(BikeCategory)

@admin.register(Images)
class ImageAdmin(admin.ModelAdmin):
    # inlines = [ImagesInline]
    list_display = ['image']
    list_display_links = ['image']

