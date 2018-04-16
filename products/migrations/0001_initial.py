# Generated by Django 2.0.2 on 2018-04-16 09:20

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Bikes',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=30, verbose_name="Bike's name")),
                ('model', models.CharField(max_length=10, verbose_name='Model number')),
                ('price', models.CharField(max_length=10, verbose_name='Price')),
                ('size', models.CharField(max_length=5, verbose_name='frame size')),
                ('biketype', models.CharField(max_length=30, verbose_name='bike type')),
                ('brand', models.CharField(max_length=30, verbose_name='brand')),
                ('description', models.TextField(verbose_name='description')),
            ],
        ),
    ]
