
from django.contrib import admin
from django.urls import path, include
from django.conf import settings
from django.conf.urls.static import static
from django.contrib.auth import views as auth_views
from survey.views import logout_view, survey, login

urlpatterns = [    
    path('admin/', admin.site.urls),
    path('', include('survey.urls')),
    path('survey/(?P<link1>\d)/', survey, name='survey'),
    path('login/', login, name='login'),
    #path('logout/', logout_view, name='logout'),

]

if settings.DEBUG:
    urlpatterns += static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
