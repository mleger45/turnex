'''
Models for  Forms
'''

from django.db import models
from jsonfield import JSONField


class TurnexForm(models.Model):
    '''
    Basic form on turnex
    '''
    name = models.CharField(max_length=10)
    details = JSONField(blank=True, null=True, default=None,
                        help_text='Example: [{type: Site, color: #12345}]')
    published = models.BooleanField(db_index=True, editable=True,
                                    default=False)
    order = models.IntegerField()

    def __repr__(self):
        return self.name

    def __str__(self):
        return 'Form: {}'.format(self.name)
