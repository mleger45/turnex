# -*- coding: utf-8 -*-

from rest_framework.views import APIView
from rest_framework.response import Response

from forms.models import TurnexForm
from videos.models import Video
from api.v1.serializers.form import TurnexFormSerializer
from api.v1.serializers.video import VideoSerializer
from django.utils.decorators import method_decorator
from django.views.decorators.cache import cache_page


class TurnexFormView(APIView):
    '''View for Forms'''

    def get(self, request):
        forms = TurnexForm.objects.published()
        serializer = TurnexFormSerializer(forms, many=True)
        return Response(serializer.data)
    

class VideoView(APIView):
    
    @method_decorator(cache_page(60*60))
    def get(self, request):
        videos = Video.objects.all()
        serializer = VideoSerializer(videos, many=True)
        return Response(serializer.data)
