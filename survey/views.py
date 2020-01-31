from django.shortcuts import render, render_to_response, redirect
from django.template.context_processors import csrf
from django.contrib.auth import login as auth_login, logout
from django.contrib.auth import authenticate
from django.http import HttpResponse
from django.urls import reverse_lazy
from django.contrib.auth.models import User
from .models import koresponden, link, subwil, data
import datetime 

def main_base_view(request):
    dictionary = dict(request=request)
    dictionary.update(csrf(request))    
    return render_to_response('main/index.html', dictionary)

def survey(request, link1, date_link):
    wilayah = subwil.objects.filter(kode=link1)[0]
    if request.method == 'POST':
        name = request.POST.get('name')
        nip = request.POST.get('NIP')
        sex = request.POST.get('sex')
        age = request.POST.get('age')
        study = request.POST.get('quality[25]')
        job = request.POST.get('quality[21]')

        U1 = int(request.POST.get('quality[1]'))
        U2 = int(request.POST.get('quality[2]'))
        U3 = int(request.POST.get('quality[3]'))
        U4 = int(request.POST.get('quality[4]'))
        U5 = int(request.POST.get('quality[5]'))
        U6 = int(request.POST.get('quality[6]'))
        U7 = int(request.POST.get('quality[7]'))
        U8 = int(request.POST.get('quality[8]'))
        U9 = int(request.POST.get('quality[9]'))
        U10 = int(request.POST.get('quality[10]'))
        U11 = int(request.POST.get('quality[11]'))
        U12 = int(request.POST.get('quality[12]'))
        U13 = int(request.POST.get('quality[13]'))
        U14 = int(request.POST.get('quality[14]'))
        
        
        comp_date = datetime.datetime.now().strftime ("%Y-%m")

        if comp_date == date_link:
            comp_nip = koresponden.objects.filter(NIP=nip).count()
            if comp_nip == 0:
                koresponden.objects.create(name=name,NIP=nip,sex=sex,
                age=age,study=study,job=job,code=link1,
                date=datetime.datetime.now().strftime ("%Y-%m-%d"))
                    
                data.objects.create(NIP=nip,U1=U1,U2=U2,U3=U3,U4=U4,
                U5=U5,U6=U6,U7=U7,U8=U8,U9=U9,U10=U10,U11=U11,
                U12=U12,U13=U13,U14=U14,code=link1,
                date=datetime.datetime.now().strftime ("%Y-%m-%d"))
                    
            else :
                print("Item exists")
        else:
            print("date expired")

    return render(request, 'main/survey.html',{'wilayah': wilayah})


def login(request):        
    if request.method == 'POST':
        username = request.POST.get('username')
        password = request.POST.get('password')   
        link1 = request.POST.get('code1')     
        user = authenticate(username=username, password=password)        
        if user is not None:
            auth_login(request=request, user=user)
            dictionary = dict(request=request)
            dictionary.update(csrf(request))
            link.objects.create(username=username,code=link1,date=datetime.datetime.now().strftime ("%Y-%m-%d"))
            date_link = datetime.datetime.now().strftime ("%Y-%m")
            return redirect('survey',link1, date_link)
        else:
            msg_to_html = custom_message('Invalid Credentials', TagType.danger)
            dictionary = dict(request=request, messages = msg_to_html)
            dictionary.update(csrf(request))
        return render(request,'main/index.html')


# this def is if you want to change the user's password
def update_pwd(username, pwd):
    user_model = User.objects.get(username=username)
    user_model.set_password(pwd)
    user_model.save()


def logout_view(request):
    logout(request)
    dictionary = dict(request=request)
    dictionary.update(csrf(request))
    return render_to_response('main/main_base.html', dictionary)


class Messages:
    def __init__(self):
        self.message = ''

    message = ''
    tag = ''


def custom_message(message, tag):
    # 1.- success, 2.-info, 3.- warning 4.- danger
    msg = Messages()
    if tag == 0:
        msg.tag = "alert alert-success"
    elif tag == 1:
        msg.tag = "alert alert-info"
    elif tag == 2:
        msg.tag = "alert alert-warning"
    else:
        msg.tag = "alert alert-danger"

    msg.message = message
    return msg


class TagType:
    def __init__(self):
        pass

    success, info, warning, danger = range(4)
