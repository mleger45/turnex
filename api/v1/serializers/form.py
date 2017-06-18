from rest_framework import serializers
from forms.models import TurnexForm


class TurnexFormSerializer(serializers.ModelSerializer):

    class Meta:
        model = TurnexForm
        fields = (
            'name',
            'details',
        )