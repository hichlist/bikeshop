from django.contrib import admin
from products.models import Bikes, BikeCategory


@admin.register(Bikes)
class FactAdmin(admin.ModelAdmin):
    list_display = ['bike_name', 'description']
    list_display_links = ['description']
    list_filter = ['bike_name']
    search_fields = ['description']

admin.site.register(BikeCategory)
