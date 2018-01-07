# ¡-*- coding: utf-8 -*-

from django.test import TestCase, RequestFactory

from msn.views import (
    main,
    forms,
    board,
    config,
)

class MsnViewTest(TestCase):
    
    def setUp(self):
        self.factory = RequestFactory()
    
    def tearDown(self):
        pass
    
    def test_main_view(self):
        request = self.factory.get('/')
        response = main(request)
        expected = response.status_code == 200
        self.assertTrue(expected)
        
    def test_forms_view(self):
        request = self.factory.get('/')
        response = forms(request)
        expected = response.status_code == 200
        self.assertTrue(expected)
    
    def test_board_view(self):
        request = self.factory.get('/')
        response = board(request)
        expected = response.status_code == 200
        self.assertTrue(expected)

    def test_config_view(self):
        request = self.factory.get('/')
        response = config(request)
        expected = response.status_code == 200
        self.assertTrue(expected)
