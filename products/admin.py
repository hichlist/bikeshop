from django.contrib import admin
from products.models import Bikes, BikeCategory


# class ImagesInline(admin.TabularInline):
#     model = Bikes
#     extra = 0
#     fields = ('image', 'bike')
#     fk_name = 'bike'


@admin.register(Bikes)
class FactAdmin(admin.ModelAdmin):
    # inlines = [ImagesInline]
    list_display = ['bike_name', 'brand', 'price', 'biketype']
    list_display_links = ['bike_name', 'brand']
    list_filter = ['bike_name']
    search_fields = ['description', 'bike_name', 'brand']

admin.site.register(BikeCategory)
