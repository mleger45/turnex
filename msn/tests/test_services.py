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
        data = {
            'url': 'http//test.com',
            'weather': [
                {'icon': 'icon'}],
            'main': {'temp': 0, 'humidity': 0},
            'temperature': 0
        }
        weather = self.services.extract_info(data)
        self.assertEquals(weather['humidity'], 0)

    def test_get_forms(self):
        result = self.services.get_forms()
        self.assertEquals(result.count(), 0)
