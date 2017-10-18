from django.shortcuts import render
from django.http import HttpResponseRedirect
from msn import services
from datetime import datetime
from .forms import UploadFileForm


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

# I am doing this code without actually understanding
def upload(request):
    if request.method == 'POST':
        form = UploadFileForm(request.POST, request.FILES)
        if form.is_valid():
            handle_uploaded_file(request.FILES['file'])
            return HttpResponseRedirect('/success/url/')
    else:
        form = UploadFileForm()
    return render(request, 'upload.html', {'form': form})

def handle_uploaded_file(f):
    with open('msn/media/video.mp4', 'wb+') as destination:
        for chunk in f.chunks():
            destination.write(chunk)
