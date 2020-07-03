/**
 * 
 */
firebase.auth().onAuthStateChanged(function(user) {
  if (user) {
    // User is signed in.

   window.location.href = "AdminPage.jsp";



  } else {
    // No user is signed in.



  }
});
function login(){

  var userEmail = document.getElementById("user").value;
  var userPass = document.getElementById("pass").value;

  firebase.auth().signInWithEmailAndPassword(userEmail, userPass).catch(function(error) {
    // Handle Errors here.
    var errorCode = error.code;
    var errorMessage = error.message;

    window.alert("Error : " + errorMessage);

    // ...
  });

}