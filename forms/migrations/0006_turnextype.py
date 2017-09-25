# -*- coding: utf-8 -*-
# Generated by Django 1.11.2 on 2017-09-23 20:22
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('forms', '0005_auto_20170624_1747'),
    ]

    operations = [
        migrations.CreateModel(
            name='TurnexType',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('user_type', models.CharField(max_length=100)),
                ('color', models.CharField(max_length=10)),
                ('form_owner', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='forms.TurnexForm')),
            ],
        ),
    ]
