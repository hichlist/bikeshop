# -*- coding: utf-8 -*-
# Generated by Django 1.11.12 on 2018-04-25 07:04
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('products', '0004_auto_20180425_1004'),
    ]

    operations = [
        migrations.AlterField(
            model_name='bikes',
            name='images',
            field=models.ManyToManyField(to='products.Images', verbose_name='Images'),
        ),
    ]
