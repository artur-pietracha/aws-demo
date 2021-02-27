from celery import Celery


app = Celery("test_aws")
app.config_from_object("django.conf:settings", namespace="CELERY")
app.autodiscover_tasks()
