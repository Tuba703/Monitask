function validation(){
  var a = document.getElementById("email").value;
  var pattern = /^[A-Za-z0-9._]{3,}@[A-Za-z]+\.[A-Za-z]{3,}[.]{1}[A-Za-z.]{2,6}$/;
  var b = document.getElementById("pass").value;

  if(a==""){
    document.getElementById("messages").innerHTML="Please enter your email address";
    return false;
  }
 /* if(pattern.test(myEmail)){
    document.getElementById('messages').innerHTML=""; 
  }else{
    document.getElementById("messages").innerHTML="Invalid email address";
    return false;
  }*/

  if(b==""){
    document.getElementById("message").innerHTML="Please enter password";
    return false;
  }
  if(b.length < 7){
    document.getElementById("message").innerHTML="Password length must be greater than 6 characters";
    return false;
  }
  if(b.length > 20){
    document.getElementById("message").innerHTML="Password length must be smaller than 20 characters";
    return false;
  }

}