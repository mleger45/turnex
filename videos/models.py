from django.db import models


class Video(models.Model):
    resource = models.FileField(upload_to='board_media')
    title = models.CharField(max_length=10)
    
    def __str__(self):
        return self.title
