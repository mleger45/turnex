# -*- coding: utf-8 -*-

from django.test import TestCase, RequestFactory

from model_mommy import mommy

from api.v1.views import TurnexFormView


class TurnexFormViewTest(TestCase):

    def setUp(self):
        mommy.make('forms.TurnexForm', published=False)
        mommy.make('forms.TurnexForm', published=True)
        mommy.make('forms.TurnexForm', published=True)

    def test_get_turnex_view(self):
        request = RequestFactory().get('/')
        view = TurnexFormView.as_view()
        response = view(request)
        self.assertEquals(response.status_code, 200)
        # There are only 2 turnexforms published
        self.assertEquals(len(response.data), 2)
