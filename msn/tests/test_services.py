from django.test import TestCase
from unittest.mock import patch

from msn import services


class ServiceTest(TestCase):
    def setUp(self):
        self.services = services

    @patch('msn.services.extract_info')
    def test_get_weather(self, extract):
        extract.return_value = {}
        result = self.services.get_weather()
        self.assertEquals(result, {})
    
    def test_extract_info(self):
        pass

    def test_get_forms(self):
        pass
