<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <style>

      body{
        background-image: url('bg-banner.jpg');
        background-repeat: no-repeat;
        background-attachment: fixed;
        background-size: cover;
        height:100%;
        width:100%;
        background-opacity:0.5;
        }

        .overlay{

            height:600px;
            width:40%;
            background-image: url('img/bg-banner.jpg');
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: cover;
            position:absolute;
            margin-left:26%;
            margin-top:-90px;
            border-radius: 25px;
            padding: 20px;
            text-align:center;
            opacity:0.8;
        }
        input, select
        {
          text-align:center;
          display: inline-block;
          border: 1px solid #ccc;
          border-radius: 4px;
          box-sizing: border-box;
          padding: 10px 18px;
          margin: 8px 0;
          opacity:1.0;
        }
        #asd
        {
          text-align:center;
          display: inline-block;
          border: 1px solid #ccc;
          border-radius: 4px;
          box-sizing: border-box;
          padding: 12px 20px;
          margin: 8px 0;
          rows:10;
          cols:10;
        }
        #sbb
        {
          background-color: blue;
  border: none;
  color: white;
  padding: 16px 32px;
  text-align: center;
  font-size: 16px;
  margin: 4px 2px;
  opacity: 0.6;
  transition: 0.3s;
  display: inline-block;
  text-decoration: none;
  cursor: pointer;
        }
        #sbb:hover {opacity: 1};

    </style>
    <meta charset="utf-8">
    <title></title>
  </head>
  <body><a href="index.html"><img src="logo.png" id="logo" height="47" width="100" style="margin-top:10px;margin-left:20px;"></img></a>
    
    <div class="overlay">

      <h2>Patient Registration Form</h2>
    <form action="PatientSignUp" method="get">
        <input type="text" placeholder="Patient-ID" name="patientid"><br><br>
        <input type="text" placeholder="Patient Name" name="patientname">
        <input type="email" placeholder="me.@example.com" name="patientmail"><br><br>
        <input type="password" placeholder="passowrd" name="patientpassword">
        <input type="text" placeholder="8827182618" name="patientnumber"><br><br>
        <input type="date" placeholder="dd-mm-yyyy" name="patientbirth">
         <select name="patientgender">
           <option>Select your Gender</option>
<option value="Male">Male</option>
<option value="Female">Female</option>
<option value="Other">Other</option>
</select><br><br>
<textarea name="patientaddress" placeholder="Residency Area" id="asd"></textarea><br><br>
<input type="text" placeholder="disease" name="patientdisease"><br><br>
<input type="radio" id="married" name="patientm" value="married">Married
<input type="radio" id="unmarried" name="patientm" value="unmarried">Unmarried<br><br>
<select name="patientroom">
<option>Select your Room</option>
<option value="Normal">Normal</option>
<option value="Medium">Medium</option>
<option value="VIP">VIP</option>
</select><br>
<input type="submit" id="sbb">
        </form>


        </div>
  </body>
</html>
