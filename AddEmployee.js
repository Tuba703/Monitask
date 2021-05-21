 
var database = firebase.database();

function writeUserData(){
  var fname=document.getElementById('fname').value;
  var lname=document.getElementById('lname').value;
  var eaddress=document.getElementById('eaddress').value;
  var cnic=document.getElementById('cnic').value;
  var cno=document.getElementById('cno').value;
  var designation=document.getElementById('designation').value;
  var address=document.getElementById('address').value;
  var nationality=document.getElementById('nationality').value;
  var dob=document.getElementById('dob').value;
  var etype=document.getElementById('etype').value;
  database.ref('Employees/').set({
   Firstname: fname ,
   LastName: lname,
   EmailAddress: eaddress ,
   CNIC: cnic,
   ContactNumber: cno ,
   Designation: designation,
   Address: address ,
   Nationality: nationality,
   DateOfBirth: dob,
   EmployeeType:etype
  })
}

fileButton.addEventListener('change',function(e)
{
    for(let i=0;i<=e.target.files.length;i++){
        let imageFile= e.target.files[i];
        let storageRef = firebase.storage().ref("images/"+imageFile.name);
        let task = storageRef.put(imageFile);
        task.on('state_changed',function progress(snapshot){
            let percentage= snapshot.bytesTransferred/snapshot.totalBytes*100;
            console.log("Upload is" + percentage + "% done");
            switch(snapshot.state){
                case firebase.storage.taskstate.PAUSED:
                    console.log("Upload is PAUSED");
                    break;
                case firebase.storage.taskstate.RUNNING:
                    console.log("Upload is Running");
                    break;
                            
            }

        })
    }
})