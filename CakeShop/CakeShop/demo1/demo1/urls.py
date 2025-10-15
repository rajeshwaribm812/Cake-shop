"""
URL configuration for owner project.

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin

from django.urls import path


from django.conf import settings
from django.conf.urls.static import static
from cake import views

urlpatterns = [
    path('admin/', admin.site.urls),
    path('view_cakes',views.view_cakes,name='view_cakes'),
    path('insertdetails', views.insertdetails, name='insertdetails'),
    path('insertcustomer', views.insertcustomer, name='insertcustomer'),
    path('insertdelivery', views.insertdelivery, name='insertdelivery'),
    path('insertorder', views.insertorder, name='insertorder'),
    path('insertowner', views.insertowner, name='insertowner'),
    path('viewcake', views.viewcake, name='viewcake'),
    path('viewcustomer', views.viewcustomer, name='viewcustomer'),
    path('viewdelivery', views.viewdelivery, name='viewdelivery'),
    path('vieworder', views.vieworder, name='vieworder'),
    path('viewowner', views.viewowner, name='viewowner'),
    path('logcheck', views.logcheck, name='logcheck'),
    path('', views.showindex, name='showindex'),
    path('sendmail', views.sendmail, name='sendmail'),
    path('view_cakes', views.view_cakes, name='view_cakes'),
    path('showqr', views.showqr, name='showqr'),
    path('showtype', views.showtype, name='showtype'),
    path('search_cake',views.search_cake,name='search_cake'),
    path('cakeorder/<int:id>/', views.cakeorder, name='cakeorder'),
    path('changepassword', views.changepassword, name='changepassword'),
    path('insertregister', views.insertregister, name='insertregister'),
    path('payment', views.showpayment, name='showpayment'),
    path('makepayment', views.makepayment, name='makepayment'),
    path('process_payment/', views.processpayment, name='processpayment'),
    path('payment/success/', views.payment_success, name='payment_success'),
    path('payment/failure/', views.payment_failure, name='payment_failure'),
]  + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)

if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
