from django.shortcuts import render
from msn import services


def main(request):
    context = {'page': 1, 'name': 'main'}
    return render(request, 'msn/main.j2', context)


def forms(request):
    forms = services.get_forms()
    context = {'forms': forms}
    return render(request, 'msn/forms.j2', context)


def board(request):
    print('start')
    weather = services.get_weather()
    print('finish')
    context = {'weather': weather}
    print(weather)
    return render(request, 'msn/board.j2', context)


def config(request):
    return render(request, 'msn/config.j2', {})
