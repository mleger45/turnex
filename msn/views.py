from django.shortcuts import render
from msn import services
from datetime import datetime


def main(request):
    context = {'page': 1, 'name': 'main'}
    return render(request, 'msn/main.j2', context)


def forms(request):
    forms = services.get_forms()
    context = {'forms': forms, 'year': datetime.now().year}
    return render(request, 'msn/forms.j2', context)


def board(request):
    weather = services.get_weather()
    context = {'weather': weather}
    return render(request, 'msn/board.j2', context)


def config(request):
    form_set = services.get_forms_config()
    return render(request, 'msn/config.j2', {'metaforms': form_set})
