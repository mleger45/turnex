# -*- coding: utf-8 -*-
from django import forms
from django.forms import formset_factory

from .models import TurnexForm


class FormDetail(forms.Form):
    """Form for inline details"""
    type = forms.CharField()
    color = forms.CharField()

class ProxiturnoForm(forms.ModelForm, FormDetail):

    class Meta:
        model = TurnexForm
        fields = ['name', 'published', 'order']

    


FormDetailSet = formset_factory(FormDetail, extra=0, max_num=1)
