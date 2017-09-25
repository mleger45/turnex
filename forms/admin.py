from django.contrib import admin
from forms.models import TurnexForm, TurnexType
from django import forms
from django.forms.widgets import TextInput


class TurnexTypeForm(forms.ModelForm):
    class Meta:

        model = TurnexType
        fields = '__all__'
        widgets = {
            'color': TextInput(attrs={'type': 'color'}),
        }


class TurnexTypeInline(admin.StackedInline):
    model = TurnexType
    form = TurnexTypeForm
    extra = 0
    can_delete = True


@admin.register(TurnexForm)
class TurnexFormAdmin(admin.ModelAdmin):
    exclude = ('details',)
    inlines = [
        TurnexTypeInline,
    ]

@admin.register(TurnexType)
class TurnexTypeAdmin(admin.ModelAdmin):
    form = TurnexTypeForm
