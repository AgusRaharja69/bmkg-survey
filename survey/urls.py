from django.urls import path, include
from . import views

app_name = 'survey'

urlpatterns = [
	
	path('', views.main_base_view, name='main_base'),
	path('survey/', views.survey, name='survey'),
	path('login/', views.login, name='login')

]