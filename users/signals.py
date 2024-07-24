from django.db.models.signals import post_save
from django.dispatch import receiver

from user_service.rabbitmq_producer import send_message
from .models import User


@receiver(post_save, sender=User)
def user_post_save(sender, instance, **kwargs):
    message = {
        'user_id': instance.id,
        'username': instance.username,
        'email': instance.email
    }
    send_message('user_queue', message)
