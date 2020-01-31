from django.db import models

# Create your models here.

class koresponden(models.Model):  
    name = models.CharField(max_length=100)
    NIP = models.CharField(max_length=100)
    sex = models.CharField(max_length=50)
    age = models.CharField(max_length=50)
    study = models.CharField(max_length=50)

    def __str__(self):
        return self.name

class link(models.Model):
    username = models.CharField(max_length=100)
    code = models.CharField(max_length=50)
    date = models.DateTimeField('Event Date')

    def __str__(self):
        return self.code

class subwil(models.Model):
    kode = models.CharField(max_length=50)
    wilayah = models.CharField(max_length=50)

    def __str__(self):
        return self.wilayah
#class data(models.Model):
