from django.test import TestCase
from forms.models import TurnexForm,  TurnexType
from model_mommy import mommy


class TurnexFormManagerTest(TestCase):
    
    def setUp(self):
        pass
        
    def test_published(self):
        mommy.make('forms.TurnexForm', published=True)
        self.assertEquals(TurnexForm.objects.published().count(), 1)
        

class TurnexFormTest(TestCase):
    def setUp(self):
        self.form = mommy.make(TurnexForm, name='entry')
        mommy.make('forms.TurnexType', color='green', user_type='Something', form_owner=self.form)

    def test_str(self):
        self.assertEqual(TurnexForm.objects.all().count(), 1)
        self.assertEqual(str(self.form), 'Form: entry')
        
    def test_get_user_types_full(self):
        self.assertEquals(self.form.get_user_types().count(), 1)


class TurnexTypeTest(TestCase):
    
    def setUp(self):
        self.form = mommy.make(TurnexForm, name='entry')
        self.turnex_type = mommy.make('forms.TurnexType', color='green', user_type='Something',
                   form_owner=self.form)
        
    def test_str(self):
        self.assertEquals(str(self.turnex_type), 'entry - Something')
