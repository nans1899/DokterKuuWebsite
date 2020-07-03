<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>DokterKuu</title>
<meta charset="utf-8">

<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css">

<script src="https://www.gstatic.com/firebasejs/7.15.5/firebase-app.js"></script>

<script src="https://www.gstatic.com/firebasejs/7.15.5/firebase-analytics.js"></script>

<script src="https://www.gstatic.com/firebasejs/7.6.2/firebase-auth.js"></script>

<script src="https://www.gstatic.com/firebasejs/7.15.5/firebase-database.js"></script>

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

<link href="https://fonts.googleapis.com/css?family=Prompt" rel="stylesheet">

<link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;700&display=swap" rel="stylesheet">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>

<body id="home">

<nav class="nav-wrapper">
  <div class="logo"> 
      <a href="#home"><img src="Pictures/weblogo.png" alt="LogoDokterkuu" style="width:125px;height:50px;"></a>
  </div>
  <div class="burger-icon"><i class="fas fa-bars"></i> MENU</div>
  <ul class="nav-items main-nav mobile-hide">
    <li class="list-item"><a href="index.jsp">Beranda</a></li>
  </ul>
</nav>
<div class="main-wrapper">
  <div class="login-wrapper">
    <div class="loginbox">
      <img src="Pictures/avatar.jpg" class="avatar">
        <h1>Login Here</h1>
        
        
        <p>Username</p>
          <input id="user" type="text" name="" placeholder="Enter User E-mail" required>
          
          <p>Password</p>
          
          <input id="pass" type="password" name="" placeholder="Enter Password" required>
          
         
          
          <!--<button class="btn" id="loginButton" onclick="login()">Login</button>  -->
          
          
          	   <input id="loginButton" type="submit" onclick="login()" name="" value="Login">
          	   
          	   
               <input id="signinButton" type="submit" name="" value="Sign Up">                              
                                             
		  
		                                             
		                                           
          <!--<button class="btn" id="signinButton">Sign Up</button>   -->
          
          
          <a href="#">Dont Have an Account?</a>
          
          
    </div>
    
  </div>

</div>


<footer class="footer" id="footer">
  <div class="copyright">DokterKuu &copy; 2020</div>
</footer>
</body>

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
       
		  const userName = document.getElementById('user');
		  const userPass = document.getElementById('pass');
		  const signButton = document.getElementById('signinButton');
		  const loginButton = document.getElementById('loginButton');


		  if(signButton){
		  	signButton.addEventListener('click', e => 
		{	const email = userName.value;
		  		const pass = userPass.value;
		  		const auth = firebase.auth();
		  		
		  		const signin = auth.createUserWithEmailAndPassword(userName.value, userPass.value);
		  		alert("Sign Up Success");
		  		signin.catch(c => console.log(e.message));
		  		return false;
		  	});
		  }
		  	
		    		  		  	  		         
</script>

<script src="Firebase.js"></script>
</html>