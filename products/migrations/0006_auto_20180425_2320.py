# -*- coding: utf-8 -*-
# Generated by Django 1.11.12 on 2018-04-25 20:20
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('products', '0005_auto_20180425_1004'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='bikes',
            name='images',
        ),
        migrations.AddField(
            model_name='images',
            name='bike',
            field=models.ForeignKey(default=1, on_delete=django.db.models.deletion.CASCADE, to='products.Bikes', verbose_name="Bike's name"),
            preserve_default=False,
        ),
    ]