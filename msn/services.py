from forms.forms import FormDetailSet
from forms.models import TurnexForm
import requests
from django.conf import settings


def get_forms():
    return TurnexForm.objects.published().order_by('order')


def get_forms_config():
    """return the details of the form (should have a better name for this)"""
    # I know, details is a very terrible name, need to rethink this properly
    details = get_forms().values_list('details')

    rows = [FormDetailSet(initial=detail) for detail in details]
    return rows


def get_weather():
    """
    The information comes with this format:
    {
    "coord": {
        "lon": -0.13,
        "lat": 51.51
    },
    "weather": [
        {
            "id": 500,
            "main": "Rain",
            "description": "light rain",
            "icon": "10n"
        }
    ],
    "base": "cmc stations",
    "main": {
        "temp": 286.164,
        "pressure": 1017.58,
        "humidity": 96,
        "temp_min": 286.164,
        "temp_max": 286.164,
        "sea_level": 1027.69,
        "grnd_level": 1017.58
    },
    "wind": {
        "speed": 3.61,
        "deg": 165.001
    },
    "rain": {
        "3h": 0.185
    },
    "clouds": {
        "all": 80
    },
    "dt": 1446583128,
    "sys": {
        "message": 0.003,
        "country": "GB",
        "sunrise": 1446533902,
        "sunset": 1446568141
    },
    "id": 2643743,
    "name": "London",
    "cod": 200
}
    """
    data = requests.get(getattr(settings, 'WEATHER_API', ''))
    return extract_info(data.json())


def extract_info(data):
    weather = {}
    icon = data['weather'][0]['icon']
    temp = "{0:.2f}".format(data['main']['temp'] - 273.15)
    # weather['url'] = 'http://openweathermap.org/img/w/{}.png'.format(icon)
    weather['url'] = getattr(settings, 'WEATHER_API_URL', '{}').format(icon)
    weather['temperature'] = temp
    weather['humidity'] = data['main']['humidity']
    return weather
