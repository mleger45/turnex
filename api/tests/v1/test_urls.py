# -*- coding: utf-8 -*-
from django.test import TestCase, RequestFactory
from django.core.urlresolvers import resolve
from api.v1.views import TurnexFormView


class APIUrlTest(TestCase):

    def setUp(self):
        self.factory = RequestFactory()

    def test_forms_url(self):
        forms = resolve('/api/v1/forms/')
        self.assertEquals(forms.func.cls, TurnexFormView)
