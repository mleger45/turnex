# -*- coding: utf-8 -*-
from django import forms
from django.forms import formset_factory


class FormDetail(forms.Form):
    """Form for inline details"""
    type = forms.CharField()
    color = forms.CharField()


FormDetailSet = formset_factory(FormDetail, extra=0, max_num=1)
