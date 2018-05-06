from celery.task import Task
from django_db_logger.models import StatusLog

class ClearLogs(Task):

    def run(self):
        StatusLog.objects.all().delete()
