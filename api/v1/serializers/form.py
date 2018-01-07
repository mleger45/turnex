from rest_framework import serializers
from forms.models import TurnexForm, TurnexType


class TurnexTypeSerializer(serializers.ModelSerializer):

    class Meta:
        model = TurnexType
        fields = '__all__'


class TurnexFormSerializer(serializers.ModelSerializer):

    types = TurnexTypeSerializer(many=True)

    class Meta:
        model = TurnexForm
        fields = ('name', 'published', 'types',)
