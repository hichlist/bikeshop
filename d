[1mdiff --git a/bikeshop/__init__.pyc b/bikeshop/__init__.pyc[m
[1mdeleted file mode 100644[m
[1mindex 8f43c21..0000000[m
Binary files a/bikeshop/__init__.pyc and /dev/null differ
[1mdiff --git a/bikeshop/__pycache__/settings.cpython-35.pyc b/bikeshop/__pycache__/settings.cpython-35.pyc[m
[1mindex d24023b..667b4a1 100644[m
Binary files a/bikeshop/__pycache__/settings.cpython-35.pyc and b/bikeshop/__pycache__/settings.cpython-35.pyc differ
[1mdiff --git a/bikeshop/__pycache__/urls.cpython-35.pyc b/bikeshop/__pycache__/urls.cpython-35.pyc[m
[1mindex 2890499..f434f3e 100644[m
Binary files a/bikeshop/__pycache__/urls.cpython-35.pyc and b/bikeshop/__pycache__/urls.cpython-35.pyc differ
[1mdiff --git a/bikeshop/settings.py b/bikeshop/settings.py[m
[1mindex 71e2ff0..91687e3 100644[m
[1m--- a/bikeshop/settings.py[m
[1m+++ b/bikeshop/settings.py[m
[36m@@ -25,7 +25,7 @@[m [mSECRET_KEY = '4lg(&0onbm&g37&u=p=dmn*9b=g*ws9j&q191$1jpr0e_glw7p'[m
 # SECURITY WARNING: don't run with debug turned on in production![m
 DEBUG = True[m
 [m
[31m-ALLOWED_HOSTS = ['127.0.0.1', '192.168.31.169'][m
[32m+[m[32mALLOWED_HOSTS = ['127.0.0.1', '192.168.31.169', '192.168.1.193'][m
 [m
 [m
 # Application definition[m
[36m@@ -57,7 +57,7 @@[m [mROOT_URLCONF = 'bikeshop.urls'[m
 TEMPLATES = [[m
     {[m
         'BACKEND': 'django.template.backends.django.DjangoTemplates',[m
[31m-        'DIRS': [],[m
[32m+[m[32m        'DIRS': [os.path.join(BASE_DIR, 'templates')],[m
         'APP_DIRS': True,[m
         'OPTIONS': {[m
             'context_processors': [[m
[36m@@ -106,9 +106,9 @@[m [mAUTH_PASSWORD_VALIDATORS = [[m
 # Internationalization[m
 # https://docs.djangoproject.com/en/2.0/topics/i18n/[m
 [m
[31m-LANGUAGE_CODE = 'en-us'[m
[32m+[m[32mLANGUAGE_CODE = 'ru-ru'[m
 [m
[31m-TIME_ZONE = 'UTC'[m
[32m+[m[32mTIME_ZONE = 'Europe/Moscow'[m
 [m
 USE_I18N = True[m
 [m
[1mdiff --git a/bikeshop/settings.pyc b/bikeshop/settings.pyc[m
[1mdeleted file mode 100644[m
[1mindex 9346e48..0000000[m
Binary files a/bikeshop/settings.pyc and /dev/null differ
[1mdiff --git a/bikeshop/urls.py b/bikeshop/urls.py[m
[1mindex 4a5f7be..6809cc2 100644[m
[1m--- a/bikeshop/urls.py[m
[1m+++ b/bikeshop/urls.py[m
[36m@@ -14,12 +14,15 @@[m [mIncluding another URLconf[m
     2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))[m
 """[m
 from django.contrib import admin[m
[31m-from django.conf.urls import url[m
[32m+[m[32mfrom django.conf.urls import url, include[m
 from django.urls import path[m
 [m
 from main import views[m
[32m+[m[32mfrom products import views as vw[m
[32m+[m
 [m
 urlpatterns = [[m
     path('admin/', admin.site.urls),[m
     url(r'^$', views.main, name='main'),[m
[32m+[m[32m    url(r'^bicycles/', include('products.urls')),[m
 ][m
[1mdiff --git a/bikeshop/urls.pyc b/bikeshop/urls.pyc[m
[1mdeleted file mode 100644[m
[1mindex 07a7335..0000000[m
Binary files a/bikeshop/urls.pyc and /dev/null differ
[1mdiff --git a/main/__pycache__/views.cpython-35.pyc b/main/__pycache__/views.cpython-35.pyc[m
[1mindex b47efe4..9245aa5 100644[m
Binary files a/main/__pycache__/views.cpython-35.pyc and b/main/__pycache__/views.cpython-35.pyc differ
[1mdiff --git a/main/templates/index.html b/main/templates/index.html[m
[1mindex b621e59..0ef874a 100644[m
[1m--- a/main/templates/index.html[m
[1m+++ b/main/templates/index.html[m
[36m@@ -1,110 +1,11 @@[m
[31m-<!--[m
[31m-Author: W3layouts[m
[31m-Author URL: http://w3layouts.com[m
[31m-License: Creative Commons Attribution 3.0 Unported[m
[31m-License URL: http://creativecommons.org/licenses/by/3.0/[m
[31m--->[m
[31m-{% load staticfiles %}[m
[31m-<!DOCTYPE html>[m
[31m-<html>[m
[31m-<head>[m
[31m-<title>Bike Shop a Ecommerce Category Flat Bootstarp Responsive Website Template| Home :: w3layouts</title>[m
[31m-<link href="{% static 'css/bootstrap.css' %}" rel='stylesheet' type='text/css' />[m
[31m-<!-- jQuery (Bootstrap's JavaScript plugins) -->[m
[31m-<script src="{% static 'js/jquery.min.js' %}"></script>[m
[31m-<!-- Custom Theme files -->[m
[31m-<link href="{% static 'css/style.css' %}" rel="stylesheet" type="text/css" media="all" />[m
[31m-<!-- Custom Theme files -->[m
[31m-<meta name="viewport" content="width=device-width, initial-scale=1">[m
[31m-<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />[m
[31m-<meta name="keywords" content="Bike-shop Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, [m
[31m-Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />[m
[31m-<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>[m
[31m-<!--webfont-->[m
[31m-<link href='http://fonts.googleapis.com/css?family=Roboto:500,900,100,300,700,400' rel='stylesheet' type='text/css'>[m
[31m-<!--webfont-->[m
[31m-<!-- dropdown -->[m
[31m-<script src="{% static 'js/jquery.easydropdown.js' %}"></script>[m
[31m-<link href="{% static 'css/nav.css' %}" rel="stylesheet" type="text/css" media="all"/>[m
[31m-<script src="{% static 'js/scripts.js' %}" type="text/javascript"></script>[m
[31m-<!--js-->[m
[31m-<!---- start-smoth-scrolling---->[m
[31m-		<script type="text/javascript" src="{% static 'js/move-top.js' %}"></script>[m
[31m-		<script type="text/javascript" src="{% static 'js/easing.js' %}"></script>[m
[31m-		<script type="text/javascript">[m
[31m-			jQuery(document).ready(function($) {[m
[31m-				$(".scroll").click(function(event){		[m
[31m-					event.preventDefault();[m
[31m-					$('html,body').animate({scrollTop:$(this.hash).offset().top},900);[m
[31m-				});[m
[31m-			});[m
[31m-		</script>[m
[31m-<!---- start-smoth-scrolling---->[m
[32m+[m[32m{% extends "base.html" %}[m[41m[m
[32m+[m[41m[m
[32m+[m[32m{% load static %}[m[41m[m
 [m
[32m+[m[32m{% block subtitle %}Главная{% endblock subtitle %}[m[41m[m
[32m+[m[41m[m
[32m+[m[32m{% block extra_header %}[m[41m[m
 [m
[31m-</head>[m
[31m-<body>[m
[31m-<!--banner-->[m
[31m-<script src="{% static 'js/responsiveslides.min.js' %}"></script>[m
[31m-<script>  [m
[31m-    $(function () {[m
[31m-      $("#slider").responsiveSlides({[m
[31m-      	auto: true,[m
[31m-      	nav: true,[m
[31m-      	speed: 500,[m
[31m-        namespace: "callbacks",[m
[31m-        pager: true,[m
[31m-      });[m
[31m-    });[m
[31m-  </script>[m
[31m-<div class="banner-bg banner-bg1">	[m
[31m-	  <div class="container">[m
[31m-			 <div class="header">[m
[31m-			       <div class="logo">[m
[31m-						 <a href="index.html"><img src="{% static 'images/logo.png' %}" alt=""/></a>[m
[31m-				   </div>							 [m
[31m-				  <div class="top-nav">										 [m
[31m-						<label class="mobile_menu" for="mobile_menu">[m
[31m-						<span>Menu</span>[m
[31m-						</label>[m
[31m-						<input id="mobile_menu" type="checkbox">[m
[31m-					   <ul class="nav">[m
[31m-						  <li class="dropdown1"><a href="bicycles.html">BICYCLES</a>[m
[31m-							  <ul class="dropdown2">[m
[31m-									<li><a href="bicycles.html">FIXED / SINGLE SPEED</a></li>[m
[31m-									<li><a href="bicycles.html">CITY BIKES</a></li>[m
[31m-									<li><a href="bicycles.html">PREMIMUN SERIES</a></li>												[m
[31m-							  </ul>[m
[31m-						  </li>[m
[31m-						  <li class="dropdown1"><a href="parts.html">PARTS</a>[m
[31m-							 <ul class="dropdown2">[m
[31m-									<li><a href="parts.html">CHAINS</a></li>[m
[31m-									<li><a href="parts.html">TUBES</a></li>[m
[31m-									<li><a href="parts.html">TIRES</a></li>[m
[31m-									<li><a href="parts.html">DISC BREAKS</a></li>[m
[31m-							  </ul>[m
[31m-						 </li>      [m
[31m-						 <li class="dropdown1"><a href="accessories.html">ACCESSORIES</a>[m
[31m-							 <ul class="dropdown2">[m
[31m-									<li><a href="accessories.html">LOCKS</a></li>[m
[31m-										<li><a href="accessories.html">HELMETS</a></li>[m
[31m-										<li><a href="accessories.html">ARM COVERS</a></li>[m
[31m-										<li><a href="accessories.html">JERSEYS</a></li>[m
[31m-							  </ul>[m
[31m-						 </li>               [m
[31m-						 <li class="dropdown1"><a href="404.html">EXTRAS</a>[m
[31m-							 <ul class="dropdown2">[m
[31m-									<li><a href="404.html">CLASSIC BELL</a></li>[m
[31m-									<li><a href="404.html">BOTTLE CAGE</a></li>[m
[31m-									<li><a href="404.html">TRUCK GRIP</a></li>[m
[31m-							  </ul>[m
[31m-						 </li>[m
[31m-						  <a class="shop" href="cart.html"><img src="{% static 'images/cart.png' %}" alt=""/></a>[m
[31m-					  </ul>[m
[31m-				 </div>[m
[31m-				 <div class="clearfix"></div>[m
[31m-			 </div>[m
[31m-	  </div>	 [m
 	 <div class="caption">[m
 		 <div class="slider">[m
 					   <div class="callbacks_container">[m
[36m@@ -120,9 +21,12 @@[m [mSmartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony[m
 	 </div>[m
 	 <div class="dwn">[m
 		<a class="scroll" href="#cate"><img src="{% static 'images/scroll.png' %}" alt=""/></a>[m
[31m-	 </div>				 [m
[31m-</div>[m
[31m-<!--/banner-->[m
[32m+[m	[32m </div>[m[41m[m
[32m+[m[41m[m
[32m+[m[32m{% endblock extra_header %}[m[41m[m
[32m+[m[41m[m
[32m+[m[32m{% block content %}[m[41m[m
[32m+[m[41m[m
 <div id="cate" class="categories">[m
 	 <div class="container">[m
 		 <h3>CATEGORIES</h3>[m
[36m@@ -155,7 +59,7 @@[m [mSmartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony[m
 					 <img src="images/bik1.jpg" alt=""/>[m
 					 <div class="bike-info">[m
 						 <div class="model">[m
[31m-							 <h4>FIXED GEAR<span>$249.00</span></h4>							 [m
[32m+[m							[32m <h4>FIXED GEAR<span>$249.00</span></h4>[m[41m[m
 						 </div>[m
 						 <div class="model-info">[m
 						     <select>[m
[36m@@ -165,7 +69,7 @@[m [mSmartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony[m
 							  <option value="audi">Option</option>[m
 							 </select>[m
 							 <a href="bicycles.html">BUY</a>[m
[31m-						 </div>						 [m
[32m+[m						[32m </div>[m[41m[m
 						 <div class="clearfix"></div>[m
 					 </div>[m
 					 <div class="viw">[m
[36m@@ -321,25 +225,5 @@[m [mSmartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony[m
 		</form>[m
 	</div>[m
 </div>[m
[31m-<!---->[m
[31m-<div class="footer">[m
[31m-	 <div class="container wrap">[m
[31m-		<div class="logo2">[m
[31m-			 <a href="index.html"><img src="images/logo2.png" alt=""/></a>[m
[31m-		</div>[m
[31m-		<div class="ftr-menu">[m
[31m-			 <ul>[m
[31m-				 <li><a href="bicycles.html">BICYCLES</a></li>[m
[31m-				 <li><a href="parts.html">PARTS</a></li>[m
[31m-				 <li><a href="accessories.html">ACCESSORIES</a></li>[m
[31m-				 <li><a href="404.html">EXTRAS</a></li>[m
[31m-			 </ul>[m
[31m-		</div>[m
[31m-		<div class="clearfix"></div>[m
[31m-	 </div>[m
[31m-</div>[m
[31m-<!---->[m
[31m-[m
[31m-</body>[m
[31m-</html>[m
 [m
[32m+[m[32m{% endblock content %}[m[41m[m
[1mdiff --git a/main/views.py b/main/views.py[m
[1mindex 858dda6..bc8118f 100644[m
[1m--- a/main/views.py[m
[1m+++ b/main/views.py[m
[36m@@ -1,5 +1,6 @@[m
 from django.shortcuts import render[m
 [m
[32m+[m
 # Create your views here.[m
 def main(request):[m
     return render(request, "index.html")[m
\ No newline at end of file[m
[1mdiff --git a/products/templates/bicycles.html b/products/templates/bicycles.html[m
[1mindex ebf552a..652ef9e 100644[m
[1m--- a/products/templates/bicycles.html[m
[1m+++ b/products/templates/bicycles.html[m
[36m@@ -1,103 +1,16 @@[m
[31m-<!--[m
[31m-Author: W3layouts[m
[31m-Author URL: http://w3layouts.com[m
[31m-License: Creative Commons Attribution 3.0 Unported[m
[31m-License URL: http://creativecommons.org/licenses/by/3.0/[m
[31m--->[m
[31m-<!DOCTYPE html>[m
[31m-<html>[m
[31m-<head>[m
[31m-<title>Bike Shop a Ecommerce Category Flat Bootstarp Responsive Website Template| Bicycles :: w3layouts</title>[m
[31m-<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />[m
[31m-<!-- jQuery (Bootstrap's JavaScript plugins) -->[m
[31m-<script src="js/jquery.min.js"></script>[m
[31m-<!-- Custom Theme files -->[m
[31m-<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />[m
[31m-<!-- Custom Theme files -->[m
[31m-<meta name="viewport" content="width=device-width, initial-scale=1">[m
[31m-<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />[m
[31m-<meta name="keywords" content="Bike-shop Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, [m
[31m-Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />[m
[31m-<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>[m
[31m-<!--webfont-->[m
[31m-<link href='http://fonts.googleapis.com/css?family=Roboto:500,900,100,300,700,400' rel='stylesheet' type='text/css'>[m
[31m-<!--webfont-->[m
[31m-<!-- dropdown -->[m
[31m-<script src="js/jquery.easydropdown.js"></script>[m
[31m-<link href="css/nav.css" rel="stylesheet" type="text/css" media="all"/>[m
[31m-<script src="js/scripts.js" type="text/javascript"></script>[m
[31m-<!--js-->[m
[32m+[m[32m{% extends "base.html" %}[m[41m[m
 [m
[31m-</head>[m
[31m-<body>[m
[31m-<!--banner-->[m
[31m-<script src="js/responsiveslides.min.js"></script>[m
[31m-<script>  [m
[31m-    $(function () {[m
[31m-      $("#slider").responsiveSlides({[m
[31m-      	auto: false,[m
[31m-      	nav: true,[m
[31m-      	speed: 500,[m
[31m-        namespace: "callbacks",[m
[31m-        pager: true,[m
[31m-      });[m
[31m-    });[m
[31m-  </script>[m
[31m-<div class="banner-bg banner-sec">	[m
[31m-	  <div class="container">[m
[31m-			 <div class="header">[m
[31m-			       <div class="logo">[m
[31m-						 <a href="index.html"><img src="images/logo.png" alt=""/></a>[m
[31m-				   </div>							 [m
[31m-				  <div class="top-nav">										 [m
[31m-						<label class="mobile_menu" for="mobile_menu">[m
[31m-						<span>Menu</span>[m
[31m-						</label>[m
[31m-						<input id="mobile_menu" type="checkbox">[m
[31m-					   <ul class="nav">[m
[31m-						  <li class="dropdown1"><a href="bicycles.html">BICYCLES</a>[m
[31m-							  <ul class="dropdown2">[m
[31m-									<li><a href="bicycles.html">FIXED / SINGLE SPEED</a></li>[m
[31m-									<li><a href="bicycles.html">CITY BIKES</a></li>[m
[31m-									<li><a href="bicycles.html">PREMIMUN SERIES</a></li>												[m
[31m-							  </ul>[m
[31m-						  </li>[m
[31m-						  <li class="dropdown1"><a href="parts.html">PARTS</a>[m
[31m-							 <ul class="dropdown2">[m
[31m-									<li><a href="parts.html">CHAINS</a></li>[m
[31m-									<li><a href="parts.html">TUBES</a></li>[m
[31m-									<li><a href="parts.html">TIRES</a></li>[m
[31m-									<li><a href="parts.html">DISC BREAKS</a></li>[m
[31m-							  </ul>[m
[31m-						 </li>      [m
[31m-						 <li class="dropdown1"><a href="accessories.html">ACCESSORIES</a>[m
[31m-							 <ul class="dropdown2">[m
[31m-									<li><a href="accessories.html">LOCKS</a></li>[m
[31m-										<li><a href="accessories.html">HELMETS</a></li>[m
[31m-										<li><a href="accessories.html">ARM COVERS</a></li>[m
[31m-										<li><a href="accessories.html">JERSEYS</a></li>[m
[31m-							  </ul>[m
[31m-						 </li>               [m
[31m-						 <li class="dropdown1"><a href="404.html">EXTRAS</a>[m
[31m-							 <ul class="dropdown2">[m
[31m-									<li><a href="404.html">CLASSIC BELL</a></li>[m
[31m-									<li><a href="404.html">BOTTLE CAGE</a></li>[m
[31m-									<li><a href="404.html">TRUCK GRIP</a></li>[m
[31m-							  </ul>[m
[31m-						 </li>[m
[31m-						  <a class="shop" href="cart.html"><img src="images/cart.png" alt=""/></a>[m
[31m-					  </ul>[m
[31m-				 </div>[m
[31m-				 <div class="clearfix"></div>[m
[31m-			 </div>[m
[31m-	  </div> 				 [m
[31m-</div>[m
[32m+[m[32m{% load static %}[m[41m[m
[32m+[m[41m[m
[32m+[m[32m{% block subtitle %}Велосипеды{% endblock subtitle %}[m[41m[m
 <!--/banner-->[m
[32m+[m[32m{% block content %}[m[41m[m
[32m+[m[41m[m
 <div class="bikes">		 [m
 	 <div class="mountain-sec">[m
 		 <h2>MOUNTAIN BIKES</h2>[m
 		 <a href="single.html"><div class="bike">				 [m
[31m-			 <img src="images/bik3.jpg" alt=""/>[m
[32m+[m			[32m <img src="{% static 'images/bik3.jpg' %}" alt=""/>[m[41m[m
 		     <div class="bike-cost">[m
 					 <div class="bike-mdl">[m
 						 <h4>NAME<span>Model:M4585</span></h4>[m
[36m@@ -112,7 +25,7 @@[m [mSmartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony[m
 				 </div>[m
 			 </div></a>[m
 			 <a href="single.html"><div class="bike">				 [m
[31m-				 <img src="images/bik1.jpg" alt=""/>[m
[32m+[m				[32m <img src="{% static 'images/bik1.jpg' %}" alt=""/>[m[41m[m
 				 <div class="bike-cost">[m
 					 <div class="bike-mdl">[m
 						 <h4>NAME<span>Model:M4585</span></h4>[m
[36m@@ -127,7 +40,7 @@[m [mSmartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony[m
 				 </div>[m
 			 </div></a>[m
 			 <a href="single.html"><div class="bike none2">				 [m
[31m-				 <img src="images/bik4.jpg" alt=""/>[m
[32m+[m				[32m <img src="{% static 'images/bik4.jpg' %}" alt=""/>[m[41m[m
 				 <div class="bike-cost">[m
 					 <div class="bike-mdl">[m
 						 <h4>NAME<span>Model:M4585</span></h4>[m
[36m@@ -142,7 +55,7 @@[m [mSmartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony[m
 				 </div>[m
 			 </div></a>[m
 			 <a href="single.html"><div class="bike none1">				 [m
[31m-				 <img src="images/bik6.jpg" alt=""/>[m
[32m+[m				[32m <img src="{% static 'images/bik6.jpg' %}" alt=""/>[m[41m[m
 				 <div class="bike-cost">[m
 					 <div class="bike-mdl">[m
 						 <h4>NAME<span>Model:M4585</span></h4>[m
[36m@@ -162,7 +75,7 @@[m [mSmartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony[m
 	  <div class="singlespeed-sec">[m
 		   <h2>SINGLE SPEED-BIKES</h2>[m
 			 <a href="single.html"><div class="bike">				 [m
[31m-				 <img src="images/s1.jpg" alt=""/>[m
[32m+[m				[32m <img src="{% static 'images/s1.jpg' %}" alt=""/>[m[41m[m
 				 <div class="bike-cost">[m
 					 <div class="bike-mdl">[m
 						 <h4>NAME<span>Model:M4585</span></h4>[m
[36m@@ -177,7 +90,7 @@[m [mSmartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony[m
 				 </div>[m
 			 </div></a>[m
 			 <a href="single.html"><div class="bike">				 [m
[31m-				 <img src="images/s2.jpg" alt=""/>[m
[32m+[m				[32m <img src="{% static 'images/s2.jpg' %}" alt=""/>[m[41m[m
 				 <div class="bike-cost">[m
 					 <div class="bike-mdl">[m
 						 <h4>NAME<span>Model:M4585</span></h4>[m
[36m@@ -192,7 +105,7 @@[m [mSmartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony[m
 				 </div>[m
 			 </div></a>[m
 			 <a href="single.html"><div class="bike none2">				 [m
[31m-				 <img src="images/s3.jpg" alt=""/>[m
[32m+[m				[32m <img src="{% static 'images/s3.jpg' %}" alt=""/>[m[41m[m
 				 <div class="bike-cost">[m
 					 <div class="bike-mdl">[m
 						 <h4>NAME<span>Model:M4585</span></h4>[m
[36m@@ -207,7 +120,7 @@[m [mSmartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony[m
 				 </div>[m
 			 </div></a>[m
 			 <a href="single.html"><div class="bike none1">				 [m
[31m-				 <img src="images/s4.jpg" alt=""/>[m
[32m+[m				[32m <img src="{% static 'images/s4.jpg' %}" alt=""/>[m[41m[m
 				 <div class="bike-cost">[m
 					 <div class="bike-mdl">[m
 						 <h4>NAME<span>Model:M4585</span></h4>[m
[36m@@ -227,7 +140,7 @@[m [mSmartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony[m
 		 <div class="road-sec">[m
 		   <h2>ROAD-BIKES</h2>[m
 			 <a href="single.html"><div class="bike">				 [m
[31m-				 <img src="images/r1.jpg" alt=""/>[m
[32m+[m				[32m <img src="{% static 'images/r1.jpg' %}" alt=""/>[m[41m[m
 				 <div class="bike-cost">[m
 					 <div class="bike-mdl">[m
 						 <h4>NAME<span>Model:M4585</span></h4>[m
[36m@@ -242,7 +155,7 @@[m [mSmartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony[m
 				 </div>[m
 			 </div></a>[m
 			 <a href="single.html"><div class="bike">				 [m
[31m-				 <img src="images/r3.jpg" alt=""/>[m
[32m+[m				[32m <img src="{% static 'images/r3.jpg' %}" alt=""/>[m[41m[m
 				 <div class="bike-cost">[m
 					 <div class="bike-mdl">[m
 						 <h4>NAME<span>Model:M4585</span></h4>[m
[36m@@ -257,7 +170,7 @@[m [mSmartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony[m
 				 </div>[m
 			 </div></a>[m
 			 <a href="single.html"><div class="bike none2">				 [m
[31m-				 <img src="images/r2.jpg" alt=""/>[m
[32m+[m				[32m <img src="{% static 'images/r2.jpg' %}" alt=""/>[m[41m[m
 				 <div class="bike-cost">[m
 					 <div class="bike-mdl">[m
 						 <h4>NAME<span>Model:M4585</span></h4>[m
[36m@@ -272,7 +185,7 @@[m [mSmartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony[m
 				 </div>[m
 			 </div></a>[m
 			 <a href="single.html"><div class="bike none1">				 [m
[31m-				 <img src="images/r4.jpg" alt=""/>[m
[32m+[m				[32m <img src="{% static 'images/r4.jpg' %}" alt=""/>[m[41m[m
 				 <div class="bike-cost">[m
 					 <div class="bike-mdl">[m
 						 <h4>NAME<span>Model:M4585</span></h4>[m
[36m@@ -289,27 +202,6 @@[m [mSmartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony[m
 			 <div class="clearfix"></div>[m
 		 </div>[m
 		 [m
[31m-	 </div>[m
[31m-</div>[m
[31m-<!---->[m
[31m-<div class="footer">[m
[31m-	 <div class="container wrap">[m
[31m-		<div class="logo2">[m
[31m-			 <a href="index.html"><img src="images/logo2.png" alt=""/></a>[m
[31m-		</div>[m
[31m-		<div class="ftr-menu">[m
[31m-			 <ul>[m
[31m-				 <li><a href="bicycles.html">BICYCLES</a></li>[m
[31m-				 <li><a href="parts.html">PARTS</a></li>[m
[31m-				 <li><a href="accessories.html">ACCESSORIES</a></li>[m
[31m-				 <li><a href="404.html">EXTRAS</a></li>[m
[31m-			 </ul>[m
[31m-		</div>[m
[31m-		<div class="clearfix"></div>[m
[31m-	 </div>[m
[31m-</div>[m
[31m-<!---->[m
[31m-[m
[31m-</body>[m
[31m-</html>[m
[32m+[m[32m </div>[m[41m[m
 [m
[32m+[m[32m{% endblock content %}[m[41m[m
[1mdiff --git a/products/templates/parts.html b/products/templates/parts.html[m
[1mindex 10dc9d5..3bcf991 100644[m
[1m--- a/products/templates/parts.html[m
[1m+++ b/products/templates/parts.html[m
[36m@@ -1,19 +1,22 @@[m
[32m+[m[32m{% load static %}[m[41m[m
 <!--[m
 Author: W3layouts[m
 Author URL: http://w3layouts.com[m
 License: Creative Commons Attribution 3.0 Unported[m
 License URL: http://creativecommons.org/licenses/by/3.0/[m
 -->[m
[32m+[m[41m[m
 <!DOCTYPE html>[m
[32m+[m[41m[m
 <html>[m
 <head>[m
 <title>Bike Shop a Ecommerce Category Flat Bootstarp Responsive Website Template| Parts :: w3layouts</title>[m
[31m-<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />[m
[32m+[m[32m<link href="static/css/bootstrap.css" rel='stylesheet' type='text/css' />[m[41m[m
 <!-- jQuery (Bootstrap's JavaScript plugins) -->[m
[31m-<script src="js/jquery.min.js"></script>[m
[32m+[m[32m<script src="static/js/jquery.min.js"></script>[m[41m[m
 <!-- Custom Theme files -->[m
[31m-<link href="css/form.css" rel="stylesheet" type="text/css" media="all" />[m
[31m-<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />[m
[32m+[m[32m<link href="static/css/form.css" rel="stylesheet" type="text/css" media="all" />[m[41m[m
[32m+[m[32m<link href="static/css/style.css" rel="stylesheet" type="text/css" media="all" />[m[41m[m
 <!-- Custom Theme files -->[m
 <meta name="viewport" content="width=device-width, initial-scale=1">[m
 <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />[m
[1mdiff --git a/products/urls.py b/products/urls.py[m
[1mindex e69de29..58c2fe8 100644[m
[1m--- a/products/urls.py[m
[1m+++ b/products/urls.py[m
[36m@@ -0,0 +1,7 @@[m
[32m+[m[32mfrom django.conf.urls import url[m
[32m+[m
[32m+[m[32mfrom . import views[m
[32m+[m
[32m+[m[32murlpatterns = [[m
[32m+[m[32m    url(r'^$', views.bicycles, name='bicycles')[m
[32m+[m[32m][m
\ No newline at end of file[m
[1mdiff --git a/products/views.py b/products/views.py[m
[1mindex 91ea44a..8e45f1c 100644[m
[1m--- a/products/views.py[m
[1m+++ b/products/views.py[m
[36m@@ -1,3 +1,6 @@[m
 from django.shortcuts import render[m
 [m
[32m+[m
 # Create your views here.[m
[32m+[m[32mdef bicycles(request):[m
[32m+[m[32m    return render(request, "bicycles.html")[m
\ No newline at end of file[m
[1mdiff --git a/templates/base.html b/templates/base.html[m
[1mindex f7e5884..86aa3c4 100644[m
[1m--- a/templates/base.html[m
[1m+++ b/templates/base.html[m
[36m@@ -1,10 +1,141 @@[m
[32m+[m[32m<!--[m
[32m+[m[32mAuthor: W3layouts[m
[32m+[m[32mAuthor URL: http://w3layouts.com[m
[32m+[m[32mLicense: Creative Commons Attribution 3.0 Unported[m
[32m+[m[32mLicense URL: http://creativecommons.org/licenses/by/3.0/[m
[32m+[m[32m-->[m
[32m+[m[32m{% load static %}[m
 <!DOCTYPE html>[m
[31m-<html lang="en">[m
[32m+[m
[32m+[m[32m<html>[m
 <head>[m
[31m-    <meta charset="UTF-8">[m
[31m-    <title>$Title$</title>[m
[32m+[m[32m<title>{% block title %}Bike Shop / {% block subtitle %}{% endblock subtitle %}{% endblock title %}</title>[m
[32m+[m[32m<link href="{% static 'css/bootstrap.css' %}" rel='stylesheet' type='text/css' />[m
[32m+[m[32m<!-- jQuery (Bootstrap's plugins) -->[m
[32m+[m[32m<script src="{% static 'js/jquery.min.js' %}"></script>[m
[32m+[m[32m<!-- Custom Theme files -->[m
[32m+[m[32m<link href="{% static 'css/style.css' %}" rel="stylesheet" type="text/css" media="all" />[m
[32m+[m[32m<!-- Custom Theme files -->[m
[32m+[m[32m<meta name="viewport" content="width=device-width, initial-scale=1">[m
[32m+[m[32m<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />[m
[32m+[m[32m<meta name="keywords" content="Bike-shop Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,[m
[32m+[m[32mSmartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />[m
[32m+[m[32m<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>[m
[32m+[m[32m<!--webfont-->[m
[32m+[m[32m<link href='http://fonts.googleapis.com/css?family=Roboto:500,900,100,300,700,400' rel='stylesheet' type='text/css'>[m
[32m+[m[32m<!--webfont-->[m
[32m+[m[32m<!-- dropdown -->[m
[32m+[m[32m<script src="{% static 'js/jquery.easydropdown.js' %}"></script>[m
[32m+[m[32m<link href="{% static 'css/nav.css' %}" rel="stylesheet" type="text/css" media="all"/>[m
[32m+[m[32m<script src="{% static 'js/scripts.js' %}" type="text/javascript"></script>[m
[32m+[m[32m<!--js-->[m
[32m+[m[32m<!---- start-smoth-scrolling---->[m
[32m+[m		[32m<script type="text/javascript" src="{% static 'js/move-top.js' %}"></script>[m
[32m+[m		[32m<script type="text/javascript" src="{% static 'js/easing.js' %}"></script>[m
[32m+[m		[32m<script type="text/javascript">[m
[32m+[m			[32mjQuery(document).ready(function($) {[m
[32m+[m				[32m$(".scroll").click(function(event){[m
[32m+[m					[32mevent.preventDefault();[m
[32m+[m					[32m$('html,body').animate({scrollTop:$(this.hash).offset().top},900);[m
[32m+[m				[32m});[m
[32m+[m			[32m});[m
[32m+[m		[32m</script>[m
[32m+[m[32m<!---- start-smoth-scrolling---->[m
[32m+[m
[32m+[m[32m{% block extra_scripts %}[m
[32m+[m
[32m+[m[32m{% endblock extra_scripts %}[m
[32m+[m
 </head>[m
 <body>[m
[31m-$END$[m
[32m+[m[32m<!--banner-->[m
[32m+[m[32m<script src="{% static 'js/responsiveslides.min.js' %}"></script>[m
[32m+[m[32m<script>[m
[32m+[m[32m    $(function () {[m
[32m+[m[32m      $("#slider").responsiveSlides({[m
[32m+[m[41m      [m	[32mauto: true,[m
[32m+[m[41m      [m	[32mnav: true,[m
[32m+[m[41m      [m	[32mspeed: 500,[m
[32m+[m[32m        namespace: "callbacks",[m
[32m+[m[32m        pager: true,[m
[32m+[m[32m      });[m
[32m+[m[32m    });[m
[32m+[m[32m  </script>[m
[32m+[m[32m<div class="banner-bg banner-bg1">[m
[32m+[m	[32m  <div class="container">[m
[32m+[m			[32m <div class="header">[m
[32m+[m			[32m       <div class="logo">[m
[32m+[m						[32m <a href="index.html"><img src="{% static 'images/logo.png' %}" alt=""/></a>[m
[32m+[m				[32m   </div>[m
[32m+[m				[32m  <div class="top-nav">[m
[32m+[m						[32m<label class="mobile_menu" for="mobile_menu">[m
[32m+[m						[32m<span>Menu</span>[m
[32m+[m						[32m</label>[m
[32m+[m						[32m<input id="mobile_menu" type="checkbox">[m
[32m+[m					[32m   <ul class="nav">[m
[32m+[m						[32m  <li class="dropdown1"><a href="bicycles.html">BICYCLES</a>[m
[32m+[m							[32m  <ul class="dropdown2">[m
[32m+[m									[32m<li><a href="bicycles.html">FIXED / SINGLE SPEED</a></li>[m
[32m+[m									[32m<li><a href="bicycles.html">CITY BIKES</a></li>[m
[32m+[m									[32m<li><a href="bicycles.html">PREMIMUN SERIES</a></li>[m
[32m+[m							[32m  </ul>[m
[32m+[m						[32m  </li>[m
[32m+[m						[32m  <li class="dropdown1"><a href="parts.html">PARTS</a>[m
[32m+[m							[32m <ul class="dropdown2">[m
[32m+[m									[32m<li><a href="parts.html">CHAINS</a></li>[m
[32m+[m									[32m<li><a href="parts.html">TUBES</a></li>[m
[32m+[m									[32m<li><a href="parts.html">TIRES</a></li>[m
[32m+[m									[32m<li><a href="parts.html">DISC BREAKS</a></li>[m
[32m+[m							[32m  </ul>[m
[32m+[m						[32m </li>[m
[32m+[m						[32m <li class="dropdown1"><a href="accessories.html">ACCESSORIES</a>[m
[32m+[m							[32m <ul class="dropdown2">[m
[32m+[m									[32m<li><a href="accessories.html">LOCKS</a></li>[m
[32m+[m										[32m<li><a href="accessories.html">HELMETS</a></li>[m
[32m+[m										[32m<li><a href="accessories.html">ARM COVERS</a></li>[m
[32m+[m										[32m<li><a href="accessories.html">JERSEYS</a></li>[m
[32m+[m							[32m  </ul>[m
[32m+[m						[32m </li>[m
[32m+[m						[32m <li class="dropdown1"><a href="404.html">EXTRAS</a>[m
[32m+[m							[32m <ul class="dropdown2">[m
[32m+[m									[32m<li><a href="404.html">CLASSIC BELL</a></li>[m
[32m+[m									[32m<li><a href="404.html">BOTTLE CAGE</a></li>[m
[32m+[m									[32m<li><a href="404.html">TRUCK GRIP</a></li>[m
[32m+[m							[32m  </ul>[m
[32m+[m						[32m </li>[m
[32m+[m						[32m  <a class="shop" href="cart.html"><img src="{% static 'images/cart.png' %}" alt=""/></a>[m
[32m+[m					[32m  </ul>[m
[32m+[m				[32m </div>[m
[32m+[m				[32m <div class="clearfix"></div>[m
[32m+[m			[32m </div>[m
[32m+[m	[32m  </div>[m
[32m+[m[32m    {% block extra_header %}[m
[32m+[m
[32m+[m[32m    {% endblock extra_header %}[m
[32m+[m[32m</div>[m
[32m+[m[32m<!--/banner-->[m
[32m+[m[32m{% block content %}[m
[32m+[m
[32m+[m[32m{% endblock content %}[m
[32m+[m[32m<!---->[m
[32m+[m[32m<div class="footer">[m
[32m+[m	[32m <div class="container wrap">[m
[32m+[m		[32m<div class="logo2">[m
[32m+[m			[32m <a href="index.html"><img src="{% static 'images/logo2.png' %}" alt=""/></a>[m
[32m+[m		[32m</div>[m
[32m+[m		[32m<div class="ftr-menu">[m
[32m+[m			[32m <ul>[m
[32m+[m				[32m <li><a href="bicycles.html">BICYCLES</a></li>[m
[32m+[m				[32m <li><a href="parts.html">PARTS</a></li>[m
[32m+[m				[32m <li><a href="accessories.html">ACCESSORIES</a></li>[m
[32m+[m				[32m <li><a href="404.html">EXTRAS</a></li>[m
[32m+[m			[32m </ul>[m
[32m+[m		[32m</div>[m
[32m+[m		[32m<div class="clearfix"></div>[m
[32m+[m	[32m </div>[m
[32m+[m[32m</div>[m
[32m+[m[32m<!---->[m
[32m+[m
 </body>[m
[31m-</html>[m
\ No newline at end of file[m
[32m+[m[32m</html>[m
[41m+[m
