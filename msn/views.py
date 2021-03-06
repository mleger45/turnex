from django.conf import settings
from django.shortcuts import render, reverse, HttpResponseRedirect
from msn import services
from datetime import datetime
from .forms import UploadFileForm

from django.core.files.storage import FileSystemStorage


def main(request):
    context = {'page': 1, 'name': 'main', 'debug': settings.DEBUG}
    return render(request, 'msn/main.j2', context)


def forms(request):
    forms = services.get_forms()
    debug = settings.DEBUG
    context = {'forms': forms, 'year': datetime.now().year, 'debug': debug}
    return render(request, 'msn/forms.j2', context)


def board(request):
    weather = services.get_weather()
    context = {'weather': weather, 'debug': settings.DEBUG}
    return render(request, 'msn/board.j2', context)


def config(request):
    form_set = services.get_forms_config()
    return render(request, 'msn/config.j2', {'metaforms': form_set})


def handle_uploaded_file(file):
    print('we are here with the file!!')

# def video_view(request):
#     if request.method == 'POST':
#         form = UploadFileForm(request.POST, request.FILES)
#         my_video = request.FILES['file']
#         if form.is_valid():
#             fs = FileSystemStorage()
#             filename = fs.save('video.mp4', my_video)
#             fs.url(filename)
#             return HttpResponseRedirect(reverse('msn:board'))
#     else:
#         form = UploadFileForm()
#         context = {'form': form}
#     return render(request, 'msn/video.j2', context)

# def upload(request):
#     if request.method == 'POST':
#         form = UploadFileForm(request.POST, request.FILES)
#         if form.is_valid():
#             handle_uploaded_file(request.FILES['file'])
#             return HttpResponseRedirect('/success/url/')
#     else:
#         form = UploadFileForm()
#     return render(request, 'upload.html', {'form': form})
#
# def handle_uploaded_file(f):
#     with open('msn/media/video.mp4', 'wb+') as destination:
#         for chunk in f.chunks():
#             destination.write(chunk)
