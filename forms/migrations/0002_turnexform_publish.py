# -*- coding: utf-8 -*-
# Generated by Django 1.11.2 on 2017-06-18 03:41
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('forms', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='turnexform',
            name='publish',
            field=models.BooleanField(db_index=True, default=False, editable=False),
        ),
    ]
