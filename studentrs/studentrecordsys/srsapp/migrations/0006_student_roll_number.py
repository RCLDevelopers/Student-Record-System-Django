# Generated by Django 5.0.3 on 2024-04-15 13:51

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('srsapp', '0005_alter_subjects_course_id_student'),
    ]

    operations = [
        migrations.AddField(
            model_name='student',
            name='roll_number',
            field=models.IntegerField(default=0),
        ),
    ]