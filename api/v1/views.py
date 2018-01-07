# -*- coding: utf-8 -*-

from rest_framework.views import APIView
from rest_framework.response import Response

from forms.models import TurnexForm
from api.v1.serializers.form import TurnexFormSerializer


class TurnexFormView(APIView):
    '''View for Forms'''

    def get(self, request):
        forms = TurnexForm.objects.published()
        serializer = TurnexFormSerializer(forms, many=True)
        return Response(serializer.data)
