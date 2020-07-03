/**
 * 
 */
firebase.auth().onAuthStateChanged(function(user) {
  if (user) {
    // User is signed in.





  } else {
    // No user is signed in.

    window.location.href = "index.jsp";

  }
});
function logout(){
  firebase.auth().signOut().then(function() {
  alert("Log Out Success");
  window.location.href = "index.jsp";

  // Sign-out successful.
}).catch(function(error) {
console.log(error.message);
});

};

	  