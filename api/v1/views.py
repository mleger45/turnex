
from rest_framework.mixins import (
    RetrieveModelMixin,
    ListModelMixin,
)
from rest_framework.viewsets import GenericViewSet

from forms.models import TurnexForm
from api.v1.serializers.form import TurnexFormSerializer


class TurnexFormView(ListModelMixin, RetrieveModelMixin, GenericViewSet):
    queryset = TurnexForm.objects.filter(published=True)
    serializer_class = TurnexFormSerializer


