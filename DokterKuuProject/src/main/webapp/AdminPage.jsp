<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<title>DokterKuu</title>
<meta charset="utf-8">

<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css">

<script src="https://www.gstatic.com/firebasejs/7.15.5/firebase-app.js"></script>

<script src="https://www.gstatic.com/firebasejs/7.15.5/firebase-analytics.js"></script>

<script src="https://www.gstatic.com/firebasejs/7.15.5/firebase-auth.js"></script>

<script src="https://www.gstatic.com/firebasejs/7.15.5/firebase-database.js"></script>

<script src="https://www.gstatic.com/firebasejs/7.15.5/firebase-storage.js"></script>

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
    <li class="list-item"><a onclick="logout()" type="button">Beranda</a></li>
  </ul>
</nav>
<div class="main-wrapperAdmin">
  <div class="list-wrapperAdmin">
  <form>
  		  <p>Id Artikel</p>
          <input id="idartikel" type="text" name="" placeholder="ID Artikel">
  
  		  <p>Judul Artikel</p>
          <input id="judul" type="text" name="" placeholder="Judul Artikel">
          
          <p>Tanggal Artikel</p>
          <input class="fa fa-calendar" aria-hidden="true" id="tanggal" type="date" name="" placeholder="Tanggal Artikel">
          
          <p>Preview Artikel</p>
          <input class="preview-text" id="preview" type="text" name="" placeholder="Preview Artikel">    
          
          <p>Input Photo</p>
          <input type="file"  accept="image/x-png,image/gif,image/jpeg" id="photo" />
          
		  <button id="addButton" style="display:block; margin-top: 20px;" >Add Article</button>                       
          
          <button  id="updateButton" style="display:block; margin-top: 20px;">Update Article</button>
          
          <button  id="deleteButton" style="display:block; margin-top: 20px;">Delete Article</button>
          
  </form>
    
  </div>

</div>


<footer class="footer" id="footer">
  <div class="copyright">DokterKuu &copy; 2020</div>
</footer>
</body>
<script>

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
	  

	  //ADD
	  
	  var addBtn = document.getElementById('addButton');
	  var updateBtn = document.getElementById('updateButton');
	  var deleteBtn = document.getElementById('deleteButton');
	  
	  
	  
	  if(addBtn){
		  
		  addBtn.addEventListener('click', e =>{
			  e.preventDefault();
			  			  
				  console.log("Test");
				  var idArtikel = document.getElementById('idartikel').value;
				  var judulArtikel = document.getElementById('judul').value;
				  var tanggalArtikel = document.getElementById('tanggal').value;
				  var previewArtikel = document.getElementById('preview').value;
				  var photo = document.getElementById('photo').files[0];				  				
				  
				  var dbFirebase = firebase.database();
				  
				  firebase.database().ref("/Artikel").child(idArtikel).once("value", function(snapshot){
					  
					  if(snapshot.val()){
						  alert("ID Already Exist");
					  }else{
						  
						  var artikel = dbFirebase.ref("Artikel/" + idartikel.value);
						  
						  var photoname = photo.name;
						  var storageRef = firebase.storage().ref('Pictures/'+ photoname);

		                  var uploadTask = storageRef.put(photo);
						  
		                  uploadTask.on('state_changed', function (snapshot){
		                      var progress = (snapshot.byteTransferred/snapshot.totalBytes)*100;
		                      console.log(progress);
		                  }, function(error){
		                      console.log(error);
		                  }, function(){
		                      uploadTask.snapshot.ref.getDownloadURL().then(function (downloadURL){						                    	
		                    	  
		                    	  artikel.set({
		        					  ID : parseInt(idartikel.value),
		        					  Judul_Artikel : judul.value,
		        					  Tanggal_Artikel : tanggal.value,
		        					  Preview_Artikel : preview.value,
		        					  Foto_Artikel : downloadURL
		        					  
		        				  })
		        				  alert('Adding Data Success');
		                    	  
		                      });
		                      
		                 });	  
					  }
				  });				 
                  				  				  			  
		  });	  		 
		  
	  }
		  
	  	  
	  
	  if(updateBtn){
		  
		  updateBtn.addEventListener('click', e=> {
			  e.preventDefault();
			  //UPDATE
			 
				  var idArtikel_update = document.getElementById('idartikel').value;
				  var judulArtikel_update = document.getElementById('judul').value;
				  var tanggalArtikel_update = document.getElementById('tanggal').value;
				  var previewArtikel_update = document.getElementById('preview').value;
				  var photo = document.getElementById('photo').files[0];
				  
		 		  var dbFirebase = firebase.database();
		 		 firebase.database().ref("/Artikel").child(idArtikel_update).once("value", function(snapshot){
					  
					  if(!snapshot.val()){
						  alert("ID Not Found");
					  }else{
						  
						  var artikel = dbFirebase.ref("Artikel/" + idartikel.value);
						  
						  var photoname = photo.name;
						  var storageRef = firebase.storage().ref('Pictures/'+ photoname);

		                  var uploadTask = storageRef.put(photo);
						  
		                  uploadTask.on('state_changed', function (snapshot){
		                      var progress = (snapshot.byteTransferred/snapshot.totalBytes)*100;
		                      console.log(progress);
		                  }, function(error){
		                      console.log(error);
		                  }, function(){
		                      uploadTask.snapshot.ref.getDownloadURL().then(function (downloadURL){						                    	
		                    	  
		                    	  artikel.set({
		        					  ID : parseInt(idartikel.value),
		        					  Judul_Artikel : judul.value,
		        					  Tanggal_Artikel : tanggal.value,
		        					  Preview_Artikel : preview.value,
		        					  Foto_Artikel : downloadURL
		        					  
		        				  })
		        				  alert('Update Data Success');
		                    	  
		                      });
		                      
		                 });	  
					  }
				  });				 
             
		  });
		  
		  
	  }
	  
	 
	  
	  if(deleteBtn){
		  
		  deleteBtn.addEventListener('click', e => {
			  
			  e.preventDefault();
			//DELETE
			  	
			  		var idArtikel_update = document.getElementById('idartikel').value;
					  
			 		  var dbFirebase = firebase.database();
			 		 firebase.database().ref("/Artikel").child(idArtikel_update).once("value", function(snapshot){
						  
						  if(!snapshot.val()){
							  alert("ID Not Found");
						  }else{
					  var artikel = dbFirebase.ref("Artikel/" + idartikel.value);
					  confirm("Are You Sure ? The Article Will be Remove and Need to be Added Later When Deleted");
					  artikel.remove();			  
						
						  }
			 
			 	 });
						  
		  });
		  
		  
	  }
	  
	  
</script>

<script src="LogoutFirebase.js"></script>

</html>