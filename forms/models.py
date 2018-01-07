# -*- coding: utf-8 -*-
'''
Models for  Forms
'''

from django.db import models
from jsonfield import JSONField

class TurnexFormManager(models.Manager):
    
    def published(self):
        return self.filter(published=True)

class TurnexForm(models.Model):
    '''
    Basic form on turnex
    '''
    name = models.CharField(max_length=10)
    details = JSONField(
        blank=True,
        null=True,
        default=None,
        help_text='Example: [{type: Site, color: #12345}]')
    published = models.BooleanField(
        db_index=True, editable=True, default=False)
    order = models.IntegerField()
    
    objects = TurnexFormManager()

    def __str__(self):
        return 'Form: {}'.format(self.name)

    def get_user_types(self):
        return self.types.all()


class TurnexType(models.Model):
    ''' User types for models '''
    user_type = models.CharField(max_length=100)
    color = models.CharField(max_length=10)
    form_owner = models.ForeignKey(TurnexForm, on_delete=None, related_name='types')
    description = models.TextField()

    def __str__(self):
        return '{} - {}'.format(self.form_owner.name, self.user_type)
