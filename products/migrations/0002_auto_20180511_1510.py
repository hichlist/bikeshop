# Generated by Django 2.0.2 on 2018-05-11 12:10

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('products', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='products',
            name='name',
            field=models.CharField(max_length=30, verbose_name="product's name"),
        ),
        migrations.AlterField(
            model_name='products',
            name='size',
            field=models.CharField(blank=True, max_length=5, verbose_name='frame size'),
        ),
    ]
