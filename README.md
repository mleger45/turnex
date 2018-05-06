# turnex
Basic Queue Management system Provider

## Considerations
It is only for testing purposes, not a serious project yet.


Periodic task (Clear Logs):
celery -A turnex worker -B -l info --scheduler django_celery_beat.schedulers:DatabaseScheduler