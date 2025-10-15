from datetime import timezone

from django.db import models

# Create your models here.
from django.db import models


# Create your models here.
class login(models.Model):
    username = models.CharField(max_length=40)
    password = models.CharField(max_length=20)
    type = models.CharField(max_length=20)


class owner_details(models.Model):
    owner_name = models.CharField(max_length=20)
    address = models.CharField(max_length=50)
    mobile_no = models.CharField(max_length=40)
    email_id = models.CharField(max_length=80)


class cake_details(models.Model):
    cakeid = models.CharField(max_length=20)
    cake_type = models.CharField(max_length=50)
    image = models.FileField(upload_to='documents/')
    cost_pe_kg = models.CharField(max_length=80)
    duration = models.CharField(max_length=40)
    flavors = models.CharField(max_length=40)


class customer(models.Model):
    customer_name = models.CharField(max_length=20)
    mobile_no = models.CharField(max_length=40)
    email_id = models.CharField(max_length=80)
    Address = models.CharField(max_length=50)


class order_details(models.Model):
    orderid = models.CharField(max_length=20)
    customerid = models.CharField(max_length=50)
    cakeid = models.CharField(max_length=40)
    booking_date = models.CharField(max_length=80)
    total_weight = models.CharField(max_length=40)
    cost = models.CharField(max_length=40)
    Issue_date = models.CharField(max_length=40)
    delivery_type = models.CharField(max_length=40)


class delivery_details(models.Model):
    orderid = models.CharField(max_length=20)
    customerid = models.CharField(max_length=50)
    charges = models.CharField(max_length=40)
    date = models.CharField(max_length=80)
    time = models.CharField(max_length=40)
    status = models.CharField(max_length=40)

class userreg(models.Model):
    name = models.CharField(max_length=20)
    email = models.CharField(max_length=50)
    password = models.CharField(max_length=40)
    mobile_no = models.CharField(max_length=80)
    city = models.CharField(max_length=80)

class payment(models.Model):
    payment_amount = models.CharField(max_length=20)
    card_number = models.CharField(max_length=50)
    card_holder_name = models.CharField(max_length=40)
    expiry_date = models.CharField(max_length=80)
    cvv_code = models.CharField(max_length=20)
    orderid = models.CharField(max_length=20)



