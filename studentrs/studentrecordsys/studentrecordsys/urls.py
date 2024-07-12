
from django.contrib import admin
from django.urls import path
from django.conf import settings
from django.conf.urls.static import static
from .import views



urlpatterns = [
    path('admin/', admin.site.urls),
    path('base/', views.BASE, name='base'),
    path('Dashboard', views.DASHBOARD, name='dashboard'),
    path('', views.LOGIN, name='login'),
    path('doLogin', views.doLogin, name='doLogin'),
    path('doLogout', views.doLogout, name='logout'),

    #profile path
    path('Profile', views.PROFILE, name='profile'),
    path('Profile/update', views.PROFILE_UPDATE, name='profile_update'),
    path('Password', views.CHANGE_PASSWORD, name='change_password'),
    path('AddCourses', views.ADD_COURSES, name='add_courses'),
    path('ManageCourses', views.MANAGE_COURSES, name='manage_courses'),
    path('DeleteCourses/<str:id>', views.DELETE_COURSES, name='delete_courses'),
    path('UpdateCourses/<str:id>', views.UPDATE_COURSES, name='update_courses'),
    path('UpdateCoursesDetails', views.UPDATE_COURSES_DETAILS, name='update_courses_details'),
    path('AddSubject', views.ADD_SUBJECT, name='add_subject'),
    path('ManageSubject', views.MANAGE_SUBJECT, name='manage_subject'),
    path('DeleteSubject/<str:id>', views.DELETE_SUBJECT, name='delete_subject'),
    path('RegisterStudents', views.REGISTER_STUDENTS, name='reg_students'),
    path('get_subjects/', views.get_subjects, name='get_subjects'),
    path('ManageStudents', views.MANAGE_STUDENTS, name='manage_students'),   
    path('DeleteStudents/<str:id>/', views.delete_Students, name='delete_Students'),
    path('UpdateStudent/<str:id>', views.UPDATE_STUDENTS, name='update_student'),
    path('UpdateStudentDetails', views.UPDATE_STUDENTS_DETAILS, name='update_student_details'),  
    path('data-between-dates/', views.data_between_dates, name='data_between_dates'),  
    path('search-students/', views.Search_Students, name='search-students'), 
]+static(settings.MEDIA_URL, document_root = settings.MEDIA_ROOT)
