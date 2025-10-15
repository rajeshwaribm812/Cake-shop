import re
import smtplib
from multiprocessing.resource_tracker import register
from pickle import FALSE

from django.contrib.messages.context_processors import messages
from django.shortcuts import render, redirect
from django.urls import reverse
import datetime
from django.core.files.storage import FileSystemStorage
import os
from demo1.settings import BASE_DIR
import uuid
from django.shortcuts import render, redirect, get_object_or_404
from .models import order_details, payment


from .models import cake_details, customer, delivery_details, order_details, owner_details,login,userreg

# Create your views here.

def showindex(request):
    return render(request,"index.html")


def insertdetails(request):
    if request.method == "POST" and request.FILES['myfile']:
        s1 = request.POST.get('t1')
        s2 = request.POST.get('t2')
        s3 = request.FILES['myfile']
        s4 = request.POST.get('t4')
        s5 = request.POST.get('t5')
        s6 = request.POST.get('t6')

        fs = FileSystemStorage()
        filename = fs.save(s3.name, s3)
        uploaded_file_url = fs.url(filename)
        pat = os.path.join(BASE_DIR, '/media/' + filename)

        cake_details.objects.create(cakeid=s1, cake_type=s2, image=s3, cost_pe_kg=s4, duration=s5, flavors=s6)
        return render(request,"cakedetails.html")
    p = cake_details.objects.all().order_by('id').last()
    pid = int(p.cakeid) + 1


    return render(request,"cakedetails.html",{'pid': pid})


def insertcustomer(request):
    if request.method == "POST":
        s1 = request.POST.get('t1')
        s2 = request.POST.get('t2')
        s3 = request.POST.get('t3')
        s4 = request.POST.get('t4')
        customer.objects.create(customer_name=s1,mobile_no=s3, email_id=s4, Address=s2)

        return render(request, "customer.html")

    return render(request, "customer.html")

def insertdelivery(request):
    if request.method == "POST":
        s1 = request.POST.get('t1')
        s2 = request.POST.get('t2')
        s3 = request.POST.get('t3')
        s4 = request.POST.get('t4')
        s5 = request.POST.get('t5')
        s6 = request.POST.get('t6')
        delivery_details.objects.create(orderid=s1, customerid=s2, charges=s3, date=s4, time=s5, status=s6)
        return render(request, "deliverydetails.html")

    return render(request, "deliverydetails.html")


def insertregister(request):
    if request.method == "POST":
        s1 = request.POST.get('t1')
        s2 = request.POST.get('t2')
        s3 = request.POST.get('t3')
        s4 = request.POST.get('t4')
        s5 = request.POST.get('t5')
        userreg.objects.create(name=s1, email=s2, password=s3, mobile_no=s4, city=s5)
        login.objects.create(username=s2, password=s3, type='user')
        base_url=reverse('logcheck')
        msg="new user created"
        return redirect(base_url, msg=msg)

    return render(request, "register.html")


def insertorder(request):
    if request.method == "POST":
        s1 = request.POST.get('t1')
        s2 = request.POST.get('t2')
        s3 = request.POST.get('t3')
        s4 = request.POST.get('t4')
        s5 = request.POST.get('t5')
        s6 = request.POST.get('t6')
        s7 = request.POST.get('t7')
        s8 = request.POST.get('t8')
        amount_str = s6.replace('Rs', '').strip()
        total = int(s5) * int(amount_str) + 30
        order_details.objects.create(orderid=s1, customerid=s2, cakeid=s3, booking_date=s4, total_weight=s5, cost=s6, Issue_date=s7, delivery_type=s8)
        return render(request, "billdetails.html",{'oid':s1,'cid':s2,'cakeid':s3,'bdate':s4,'wt':s5,'cost':s6,'total':total,'dcost':s8})
    p = order_details.objects.all().order_by('id').last()
    pid = int(p.orderid) + 1
    return render(request, "orderdetails.html",{'pid':pid})

def showqr(request):
    return render(request,"qr.html")

def showpayment(request):
    total_amount = request.GET.get('total')
    context = {'payment_total': total_amount}
    return render(request, "payment.html")

def processpayment(request):
    return render(request, "processpayment.html")

def insertowner(request):
    if request.method == "POST":
        s1 = request.POST.get('t1')
        s2 = request.POST.get('t2')
        s3 = request.POST.get('t3')
        s4 = request.POST.get('t4')
        owner_details.objects.create(owner_name=s1, address=s2, mobile_no=s3, email_id=s4)

        return render(request, "ownerdetails.html")

    return render(request, "ownerdetails.html")

def viewcake(request):
    userdict=cake_details.objects.all()
    return render(request,"showcakedetails.html",{"userdict":userdict})

def cakeorder(request,pk):
    uname = request.session['username']
    now = datetime.datetime.now()
    request_date = now.strftime("%Y-%m-%d")
    userdict = cake_details.objects.filter(id=pk).values()
    p = order_details.objects.all().order_by('id').last()
    pid = int(p.orderid) + 1
    return render(request,'orderdetails.html',{'userdict': userdict,"uname":uname,"request_date":request_date,"pid":pid})



def viewcustomer(request):
    userdict=userreg.objects.all()
    return render(request,"showcustomer.html",{"userdict":userdict})

def viewdelivery(request):
    userdict=delivery_details.objects.all()
    return render(request,"showdeliverydetails.html",{"userdict":userdict})

def vieworder(request):
    userdict=order_details.objects.all()
    return render(request,"showorderdetails.html",{"userdict":userdict})

def viewowner(request):
    userdict=owner_details.objects.all()
    return render(request,"showownerdetils.html",{"userdict":userdict})

def logcheck(request):
    if request.method=="POST":
        username=request.POST.get('t1')
        request.session['username'] = username
        password = request.POST.get('t2')
        count=login.objects.filter(username=username).count()
        if count>=1:
            udata=login.objects.get(username=username)
            upass=udata.password
            utype=udata.type
            if upass==password:
                if utype=='admin':
                    return render(request,'admin_home.html')
                if utype=='user':
                    return render(request,'customer_home.html')
                if utype=='owner':
                    return render(request,'owner_home.html')

            else:
                return render(request,'login.html',{'msg':'invalid password'})
        else:
            return render(request, 'login.html', {'msg': 'invalid username'})

    return render(request,'login.html')

def sendmail(request):
    if request.method == "POST":
        to = request.POST.get('t1', '')
        message=request.POST.get('t2','')

        mail = smtplib.SMTP('smtp.gmail.com', 587)
        mail.ehlo()
        mail.starttls()
        mail.login('anya8012002@gmail.com', 'spfj pcgi axwu jxaf')
        mail.sendmail('anya8012002@gmail.com',to, message)
        mail.close()
        return render(request, 'maildemo.html')
    return render(request, 'maildemo.html')


def changepassword(request):
    uname=request.session['username']
    if request.method == 'POST':
        currentpass = request.POST.get('t1', '')
        newpass = request.POST.get('t2', '')
        confirmpass = request.POST.get('t3', '')
        ucheck = login.objects.filter(username=uname).values()
        for a in ucheck:
            u = a['username']
            p = a['password']
            if u == uname and currentpass == p:
                if newpass == confirmpass:
                    login.objects.filter(username=uname).update(password=newpass)
                    base_url=reverse('logcheck')
                    msg='password has been changed successfully'
                    return redirect(base_url,msg=msg)
                else:
                    return render(request, 'changepassword.html',{'msg': 'both the usename and password are incorrect'})
            else:
                return render(request, 'changepassword.html',{'msg': 'invalid username'})
    return render(request, 'changepassword.html')

def cakeorder(request, id):
    uname = request.session['username']
    now = datetime.datetime.now()
    request_date = now.strftime("%Y-%m-%d")
    userdict = cake_details.objects.filter(id=id).values()
    p = order_details.objects.last()
    if p:
        pid = int(p.orderid) + 1
    else:
        pid = 1  # First order ID
    return render(request,'orderdetails.html',{'userdict': userdict,"uname":uname,"request_date":request_date,"pid":pid})

def makepayment(request):
    uname = request.session['username']
    now = datetime.datetime.now()
    request_date = now.strftime("%Y-%m-%d")
    if request.method == 'POST':
        paymentresult = request.POST.get('t1')
        creditcardno = request.POST.get('t2')
        cardholdername = request.POST.get('t3')
        expdate = request.POST.get('t4')
        CVVnumber = request.POST.get('t5')
    return render(request,'payment.html')

def view_cakes(request):
    cakes = cake_details.objects.all()
    if(request.method=="POST"):
        type_filter = request.GET.get('t1')
        flavor_filter = request.GET.get('t3')
        if type_filter:
            cakes = cakes.filter(cake_type=type_filter)
        if flavor_filter:
            cakes = cakes.filter(flavors=flavor_filter)
        context = {
             'userdict': cakes
        }
        return render(request, 'showcakedetails.html', context)

def showtype(request):
    return render(request, 'selectcaketype.html')

def search_cake(request):
    if request.method=="POST":
        query_course = request.POST.get('t1')
        query_teacher = request.POST.get('t3')
        results = cake_details.objects.all()

        if query_course:
            results = results.filter(cake_type=query_course)
        if query_teacher:
            results = results.filter(flavors=query_teacher)
        context = {
            'userdict': results
        }
        return render(request, 'showcakedetails.html',context)
    return render(request, "selectcaketype.html")


def process_payment(request):
    if request.method == "POST":
        payment_mode = request.POST.get("payment_mode")
        # **Implement your actual payment processing logic here.**
        # For now, we'll simulate success or failure.
        payment_successful = True # Replace with your actual payment status
        if payment_successful:
            messages.success(request, f"Payment successful via {payment_mode}!")
            return render(request, "processpayment.html", {'status': 'success'})
        else:
            messages.error(request, "Payment failed. Please try again.")
            return render(request, "processpayment.html", {'status': 'failed'})
        # If someone navigates to /process_payment/ directly (GET),
        # redirect them to the payment form.
        return redirect('showpayment')

def payment_success(request):
    # You might want to fetch order details here to display
    # context = {'order': order}
    return render(request, "payment_success.html")

def payment_failure(request):
    return render(request, "payment_failure.html")

def showpayment(request):
    total = request.GET.get('total')  # Assuming you're passing total via GET
    context = {'payment_total': total}
    return render(request, "payment.html", context)