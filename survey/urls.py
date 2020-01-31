from django.urls import path, include
from . import views

app_name = 'survey'

urlpatterns = [
	
	path('', views.main_base_view, name='main_base'),
	path('survey/(?P<link1>[0-9]{6})/(?P<date_link>/', views.survey, name='survey'),
	path('login/', views.login, name='login'),
	path('logout/', views.logout_view, name='logout')

]
