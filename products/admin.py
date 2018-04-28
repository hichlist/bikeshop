from django.contrib import admin
from products.models import Bikes, BikeCategory, Images


class ImagesInline(admin.TabularInline):
    model = Images
    extra = 0
    fields = ('image', 'bike')
    readonly_fields = ('bike',)


@admin.register(Bikes)
class BikeAdmin(admin.ModelAdmin):
    inlines = [ImagesInline,]
    list_display = ['name', 'brand', 'price', 'category', 'show_img']
    list_display_links = ['name', 'brand']
    list_filter = ['name']
    search_fields = ['description', 'name', 'brand']

admin.site.register(BikeCategory)
