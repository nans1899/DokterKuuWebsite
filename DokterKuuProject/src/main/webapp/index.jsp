<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.DokterKuuProject.project.HelloAppEngine" %>

<html>
<head>
<title>DokterKuu</title>
<meta charset="utf-8">

<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css">

<link rel="stylesheet" href="DokterKuuStyleHome.css">

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

<link rel="apple-touch-icon" sizes="180x180" href="/apple-touch-icon.png">

<link rel="icon" type="image/png" sizes="32x32" 
href="Pictures\favicon-32x32.png">

<link rel="icon" type="image/png" sizes="16x16" 
href="Pictures\favicon-16x16.png">

<link rel="manifest" href="/site.webmanifest">

<link rel="mask-icon" href="/safari-pinned-tab.svg" color="#5bbad5">

<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

<meta name="msapplication-TileColor" content="#da532c">

<meta name="theme-color" content="#ffffff">

<script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>

<script src="https://cdn.jsdelivr.net/gh/cferdinandi/smooth-scroll@15.0.0/dist/smooth-scroll.polyfills.min.js"></script>

<script src="DokterKuuFunctions.js"></script>

<script async defer
  src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBAzNZdPhnGEWeQefl1WMhK_4oe0wmbuZM&callback=initMap">
</script>
      

<link href="https://fonts.googleapis.com/css?family=Prompt" rel="stylesheet">

<link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;700&display=swap" rel="stylesheet">

</head>

<body id="home">
<nav class="nav-wrapper">
  <div class="logo"> 
      <a href="#home"><img src="Pictures/weblogo.png" alt="LogoDokterkuu" style="width:125px;height:50px;"></a>
  </div>
  <div class="burger-icon"><i class="fas fa-bars"></i> MENU</div>
  <ul class="nav-items main-nav mobile-hide">
    <li class="list-item"><a href="#aboutus">Tentang</a></li>
    <li class="list-item"><a href="#Pengembang">Team Pengembang</a></li>
    <li class="list-item"><a href="#Unduh">Unduh Aplikasi</a></li>
    <li class="list-item"><a href="#footer">Hubungi Kita</a></li>
    <li class="list-item"><a>Login</a></li>
  </ul>
</nav>
<div class="main-wrapper">
  <div class="wrapper">
    <div class="featured">      
    
    </div>
    <div class="KontenUtama" id="aboutus">
          <div class="slideshow">
            <div class="slideshow-item">
                  <img src="Pictures/Terpercaya.jpg">
                  <div class="slideshow-item-text">
                        <h5>
                              Dari Para Dokter Terpercaya
                        </h5>
                  </div>
            </div>

            <div class="slideshow-item">
                  <img src="Pictures/akses.jpg">
                  <div class="slideshow-item-text">
                        <h5>
                              Akses dimana saja dan kapan saja
                        </h5>
                  </div>
            </div>

            <div class="slideshow-item">
                  <img src="Pictures/artikel.jpg">
                  <div class="slideshow-item-text">
                        <h5>
                              Dapatkan Artikel kesehatan setiap harinya
                        </h5>
                  </div>
            </div>
      </div>  
  
      <div class="aboutus">
        <div class="aboutheader"><h1>Tentang DokterKuu</h1></div>
        <div class="aboutcontent" id="Pengembang"><p>DokterKuu adalah aplikasi kesehatan dimana pengguna dapat mencari artikel-artikel kesehatan yang berhubungan dengan penyakit-penyakit berdasarkan jenis kesehatan tertentu. Pengguna juga dapat membuat janji dengan tenaga kesehatan terdekat melalui aplikasi DokterKuu jika diperlukan. DokterKuu hadir untuk membantu semua orang untuk mendapatkan pengetahuan mengenai kesehatan dimanapun dan kapanpun, karena kami percaya bahwa kesehatan seharusnya didapatkan dengan mudah oleh siapapun.</p>
      </div>

      <div class="profile__wrapper">
    <div class="founder__header"><H1>Founder dari DokterKuu</H1>
    </div>
    <div class="founder__content"><p>Inilah Orang-Orang Dibalik Semangat Dari DokerKuu Untuk Terus Berkarya dan Memastikan Bahwa Kesehatan Adalah Suatu Hal Yang Mudah Diraih</p>
    </div>
    <div class="profile">
      <img src="Pictures/nanski.jpg" alt="Profile Image" class="profile__image">
      <div class="profile__name">Ananda Bakti</div>
      <div class="profile__title">Founder</div>
      <div class="profile__detail"> 
        <i class="material-icons">format_quote</i> "Akses Mudah Terhadap Kesehatan Seharusnya Menjadi Hak Bagi Setiap Orang"
      </div>
    </div>
    <div class="profile1">
      <img src="Pictures/jeano.jpg" alt="Profile Image" class="profile__image">
      <div class="profile__name">Jeano Best</div>
      <div class="profile__title">Founder</div>
      <div class="profile__detail"> 
        <i class="material-icons">format_quote</i> "Kesehatan Adalah Dasar Dari Segalanya Dan Kami Akan Terus Mendukung Tujuan Dari DokterKuu"
      </div>

    </div>

  </div>


<br>

 <div class="Install_wrapper" id="Unduh">
    <div class="KontainerInstall"><H1>Dapatkan DokterKuu Sekarang</H1>
    </div>
    <div class="playstore">
      <img src="Pictures/googleplaystore.png" alt="Store Image" class="store__image0">
      <div class="store__name">Dapatkan Sekarang Di Playstore!</div>
    </div>
    <div class="appstore">
      <img src="Pictures/logoappstore.png" alt="Store Image" class="store__image"> 
      <div class="store__name">Dapatkan Sekarang Di Appstore!</div>
    </div>

  </div>




    </div>

  </div>

</div>

</div>



<footer class="footer" id="footer">
  <div class="foot1">
    <h3 class="logo">Temukan Kita!</h3>
    <br/>
    <p>Alamat</p>
    <div class="mapouter"><div class="gmap_canvas"><iframe id="gmap_canvas" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com/maps?q=Kukusan&t=&z=13&ie=UTF8&iwloc=&output=embed"></iframe><a href="https://www.embedgooglemap.net/blog/private-internet-access-coupon/">private internet acccess sale</a></div><style>.mapouter{position:relative;text-align:right;height:325px;width:325px;}.gmap_canvas {overflow:hidden;background:none!important;height:325px;width:325px;} #gmap_canvas{overflow:hidden;background:none!important;height:325px;width:325px;}</style></div>
    <p>Jl. Mandor Goweng Rt05/ Rw03, Kukusan, Kecamatan Beji, Kota Depok, Jawa Barat 16425</p>
    <p>081932688050</p>
    <p>DokterKuu@support.com</p>
  </div>
  <div class="foot2">
  </div>
  <div class="copyright">DokterKuu &copy; 2020</div>
</footer>
</body>


<!-- The core Firebase JS SDK is always required and must be listed first -->
<script src="https://www.gstatic.com/firebasejs/7.15.4/firebase-app.js"></script>

<!-- TODO: Add SDKs for Firebase products that you want to use
     https://firebase.google.com/docs/web/setup#available-libraries -->
<script src="https://www.gstatic.com/firebasejs/7.15.4/firebase-analytics.js"></script>

<script>
  // Your web app's Firebase configuration
  var firebaseConfig = {
    apiKey: "AIzaSyAW3iFfg8NdhpDqxxG54pm1Dv4VnUYI4yo",
    authDomain: "gleaming-orbit-280822.firebaseapp.com",
    databaseURL: "https://gleaming-orbit-280822.firebaseio.com",
    projectId: "gleaming-orbit-280822",
    storageBucket: "gleaming-orbit-280822.appspot.com",
    messagingSenderId: "573897595889",
    appId: "1:573897595889:web:60f08986376d1717b54250",
    measurementId: "G-WLFW1N11NZ"
  };
  // Initialize Firebase
  firebase.initializeApp(firebaseConfig);
  firebase.analytics();
</script>



</html>