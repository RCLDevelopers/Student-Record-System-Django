# Generated by Django 5.0.3 on 2024-04-18 04:39

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('srsapp', '0006_student_roll_number'),
    ]

    operations = [
        migrations.AddField(
            model_name='student',
            name='nation',
            field=models.CharField(default='True', max_length=250),
        ),
    ]
