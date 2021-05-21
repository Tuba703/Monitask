function fun(){
    var a = document.getElementById('fname').value;
    var b = document.getElementById('lname').value;
    var correct_way = /^[A-Za-z]+$/;
    var c = document.getElementById('mail').value;
    var pattern = /^[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$/;
    var d = document.getElementById('num').value;
    var e = document.getElementById('enum').value;
    var f = document.getElementById('add').value;
    var g = document.getElementById('loc').value;
    var h = document.getElementById('nic').value;
    var i = document.getElementById('dob').value;
    var j = document.getElementById('doc').value;
    var selectedIndex = document.getElementById('coun').value;
 
    if (a==""){
        document.getElementById("m1").innerHTML="Please enter your first name";
        return false;
      }
      if (a.length<3){
        document.getElementById("m1").innerHTML="first name must be 3 characters";
        return false;
      }
      if (a.length>20){
        document.getElementById("m1").innerHTML="first name must be less than 20 characters";
        return false;
      }
      if (a.match(correct_way))
          true;
          else{
        document.getElementById("m1").innerHTML="Only alphabets are allowed";
        return false;
      }
      if (b==""){
        document.getElementById("m2").innerHTML="Please enter your last name";
        return false;
      }
      if (b.length<3){
        document.getElementById("m2").innerHTML="Last name must be 3 characters";
        return false;
      }
      if (b.length>20){
        document.getElementById("m2").innerHTML="Last name must be less than 20 characters";
        return false;
      }
      if (b.match(correct_way))
          true;
          else{
        document.getElementById("m2").innerHTML="Only alphabets are allowed";
        return false;
          }
      if (c==""){
            document.getElementById("m3").innerHTML="Please enter your email address";
            return false;
          }
      if(pattern.test(myEmail)){
            document.getElementById('m3').innerHTML=""; 
          }
          else{
            document.getElementById("m3").innerHTML="Invalid email address";
            return false;
          }
      if (d==""){
            document.getElementById("m4").innerHTML="Please enter your phone number";
            return false;
          }
      if (isNaN(d)){
            document.getElementById("m4").innerHTML="Only numbers are allowed";
            return false;
          }
          if (e==""){
            document.getElementById("m5").innerHTML="Please enter your phone number";
            return false;
          }
      if (isNaN(e)){
            document.getElementById("m5").innerHTML="Only numbers are allowed";
            return false;
          }
      if (f==""){
            document.getElementById("m6").innerHTML="Please enter your address";
            return false;
          }
      if (g==""){
            document.getElementById("m7").innerHTML="Please enter your location";
            return false;
          }
      if (h==""){
            document.getElementById("m8").innerHTML="Please enter your CNIC number";
            return false;
          }
      if (i==""){
            document.getElementById("m9").innerHTML="Please enter your date of birth";
            return false;
          }
      if (j==""){
            document.getElementById("m10").innerHTML="Please upload documents";
            return false;
          }
          if(myform.sel.selectedIndex==0){
            document.getElementById("m11").innerHTML="Please select anyone";
            myform.sel.focus();
            return false;
          }
          return true;
        
        
        
        

}