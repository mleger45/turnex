from django.test import TestCase
from forms.models import TurnexForm
from model_mommy import mommy


class TurnexFormTest(TestCase):
    def setUp(self):
        self.form = mommy.make(TurnexForm, name='entry')

    def test_exist_data(self):
        self.assertEqual(TurnexForm.objects.all().count(), 1)
        self.assertEqual(str(self.form), 'Form: entry')
