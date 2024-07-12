# Generated by Django 5.0.3 on 2024-04-04 04:36

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('srsapp', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Course',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('courseshortname', models.CharField(default='True', max_length=250)),
                ('coursefullname', models.CharField(default='True', max_length=250)),
                ('created_at', models.DateTimeField(auto_now_add=True)),
                ('updated_at', models.DateField(auto_now=True)),
            ],
        ),
    ]