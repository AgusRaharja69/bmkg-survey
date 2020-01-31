from django.db import models
# Create your models here.n

class koresponden(models.Model):  
    name = models.CharField(max_length=100)
    NIP = models.CharField(max_length=100)
    sex = models.CharField(max_length=50)
    age = models.CharField(max_length=50)
    study = models.CharField(max_length=50)
    job = models.CharField(max_length=50)
    code = models.CharField(max_length=50)
    date = models.DateTimeField('Event Date')

    def __str__(self):
        return self.NIP

class link(models.Model):
    username = models.CharField(max_length=100)
    code = models.CharField(max_length=50)
    date = models.DateTimeField('Event Date')

    def __str__(self):
        return self.code

class data(models.Model):
    NIP = models.CharField(max_length=100)
    U1 = models.IntegerField(max_length=10)
    U2 = models.IntegerField(max_length=10)
    U3 = models.IntegerField(max_length=10)
    U4 = models.IntegerField(max_length=10)
    U5 = models.IntegerField(max_length=10)
    U6 = models.IntegerField(max_length=10)
    U7 = models.IntegerField(max_length=10)
    U8 = models.IntegerField(max_length=10)
    U9 = models.IntegerField(max_length=10)
    U10 = models.IntegerField(max_length=10)
    U11 = models.IntegerField(max_length=10)
    U12 = models.IntegerField(max_length=10)
    U13 = models.IntegerField(max_length=10)
    U14 = models.IntegerField(max_length=10)
    code = models.CharField(max_length=50)
    date = models.DateTimeField('Event Date')

    def __str__(self):
        return self.NIP

class subwil(models.Model):
    kode = models.CharField(max_length=50)
    wilayah = models.CharField(max_length=50)

    def __str__(self):
        return self.wilayah
#class data(models.Model):
