function myfun(){
    var a = document.getElementById('fname').value;
    var correct_way = /^[A-Za-z]+$/;
    var b = document.getElementById('lname').value;
    var c = document.getElementById('myEmail').value;
    var pattern = /^[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$/;
    var d = document.getElementById('num').value;
    var e = document.getElementById('pas1').value;
    var f = document.getElementById('pas2').value;
    var g = document.forms.container; 
    
    
     if (a==""){
        document.getElementById("message1").innerHTML="Please enter your first name";
        return false;
      }
      if (a.length<3){
        document.getElementById("message1").innerHTML="first name must be 3 characters";
        return false;
      }
      if (a.length>20){
        document.getElementById("message1").innerHTML="first name must be less than 20 characters";
        return false;
      }
      if (a.match(correct_way))
          true;
          else{
        document.getElementById("message1").innerHTML="Only alphabets are allowed";
        return false;
      }
      if(a!="" || a.length>3 || a.length<20){
        return true;
      }
      if (b==""){
        document.getElementById("message2").innerHTML="Please enter your last name";
        return false;
      }
      if (b.length<3){
        document.getElementById("message2").innerHTML="Last name must be 3 characters";
        return false;
      }
      if (b.length>20){
        document.getElementById("message2").innerHTML="Last name must be less than 20 characters";
        return false;
      }
      if (b.match(correct_way))
          true;
          else{
        document.getElementById("message2").innerHTML="Only alphabets are allowed";
        return false;
      }
      if (c==""){
        document.getElementById("message3").innerHTML="Please enter your email address";
        return false;
      }
      if(pattern.test(myEmail)){
        document.getElementById('message3').innerHTML=""; 
      }
      else{
        document.getElementById("message3").innerHTML="Invalid email address";
        return false;
      }
      if (d==""){
        document.getElementById("message4").innerHTML="Please enter your phone number";
        return false;
      }
      if (isNaN(d)){
        document.getElementById("message4").innerHTML="Only numbers are allowed";
        return false;
      }
      if (e==""){
        document.getElementById("message5").innerHTML="Please enter password";
        return false;
      }
      if(e.length < 7){
        document.getElementById("message5").innerHTML="Password length must be greater than 6 characters";
        return false;
      }
      if(e.length > 20){
        document.getElementById("message5").innerHTML="Password length must be smaller than 20 characters";
        return false;
      }
      if(pas1!=pas2){
        document.getElementById("message6").innerHTML="Password do not match";
        return false;
      }
      if (f==""){
        document.getElementById("message6").innerHTML="Please confirm your password";
        return false;
      }
      /*
      if (document.getElementById("male").checked || document.getElementById("female").checked) {
        return true;
      }
      */
    
    }