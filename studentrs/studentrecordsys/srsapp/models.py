from django.db import models
from django.contrib.auth.models import AbstractUser

# Create your models here.

class CustomUser(AbstractUser):
    profile_pic = models.ImageField(upload_to='media/profile_pic')

class Course(models.Model):
    courseshortname = models.CharField(max_length=250,default='True')
    coursefullname = models.CharField(max_length=250,default='True')
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateField(auto_now=True)

    def __str__(self):
        return self.coursefullname + (self.courseshortname)

class Subjects(models.Model):
    course_id = models.ForeignKey(Course, on_delete=models.CASCADE)
    subject1 = models.CharField(max_length=250,default='True')
    subject2 = models.CharField(max_length=250,default='True')
    subject3 = models.CharField(max_length=250,default='True')
    subject4 = models.CharField(max_length=250,default='True')
    subject5 = models.CharField(max_length=250,default='True')
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateField(auto_now=True)

class Student(models.Model):
    course_id = models.ForeignKey(Course, on_delete=models.CASCADE)
    subjects_id = models.ForeignKey(Subjects, on_delete=models.CASCADE)
    roll_number=models.IntegerField(default=0)
    session = models.CharField(max_length=250,default='True')
    fname = models.CharField(max_length=250,default='True')
    mname = models.CharField(max_length=250,default='True')
    lname = models.CharField(max_length=250,default='True')
    gender = models.CharField(max_length=250,default='True')
    gname = models.CharField(max_length=250,default='True')
    ocp = models.CharField(max_length=250,default='True')
    income = models.CharField(max_length=250,default='True')
    category = models.CharField(max_length=250,default='True')
    ph = models.CharField(max_length=250,default='True')
    nation = models.CharField(max_length=250,default='True')
    mobno = models.CharField(max_length=250,default='True')
    email = models.EmailField(max_length=100)
    country = models.CharField(max_length=250,default='True')
    state = models.CharField(max_length=250,default='True')
    city = models.CharField(max_length=250,default='True')
    padd = models.TextField(blank=True,default=0)
    cadd = models.TextField(blank=True,default=0)
    class1 = models.CharField(max_length=250,default='True')
    board1 = models.CharField(max_length=250,default='True')
    roll1 = models.CharField(max_length=250,default='True')
    pyear1 = models.CharField(max_length=250,default='True')
    class2 = models.CharField(max_length=250,default='True')
    board2 = models.CharField(max_length=250,default='True')
    roll2 = models.CharField(max_length=250,default='True')
    pyear2 = models.CharField(max_length=250,default='True')
    sub1 = models.CharField(max_length=250,default='True')
    marks1 = models.IntegerField()
    fmarks1 = models.IntegerField()
    sub2 = models.CharField(max_length=250,default='True')
    marks2 = models.IntegerField()
    fmarks2 = models.IntegerField()
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateField(auto_now=True)

    def __str__(self):
        return self.fname
