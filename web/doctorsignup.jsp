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
        }

        .overlay{

            height:600px;
            width:40%;
            background-image: url('bg-banner.jpg');
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: cover;
            position:absolute;
            margin-left:28%;
            margin-top:-30px;
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
          padding: 12px 20px;
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
  <body>
      <a href="index.html"><img src="logo.png" id="logo" height="47" width="100" style="margin-top:10px;margin-left:20px;"></img></a>
    
    <div class="overlay">

          <h2>Doctor Registration Form</h2>

          <form action="DoctorSignUp" method="get">

            <input type="text" name="doctorid" placeholder="Doctor ID">
            <input type="text" name="doctorname" placeholder="Doctor Name"><br><br>
            <input type="password" name="doctorpassword"placeholder="Password">
            <input type="email" name="doctormail" placeholder="Email id"><br><br>
            <input type="text" name="doctorage" placeholder="your age">
            <select name="doctorgender">
                <option>select your Gender</option>
                <option name="Male">Male</option>
                <option name="Female">Female</option>
                <option name="Other">Other</option>
            </select><br><br>
            <select name="doctordegree">
                <option>select your degree</option>
                <option>MBBS</option>
                <option>BDS</option>
                <option>BPT</option>
                <option>BHMS</option>
            </select>
            <select name="doctordep">
                <option>select area of specialization</option>
                <option>Dentist</option>
                <option>Cardiology</option>
                <option>Gynecologist</option>
                <option>physiotherapy</option>
            </select><br><br>
            <input type="text" name="doctorfees" placeholder="consultation fees">
            <input type="text" name="doctornumber" placeholder="mobile number"><br><br>
            <textarea name="doctoraddress" placeholder="Residency Area" id="asd"></textarea><br><br>
            <input type="submit" id="sbb">
        </form>


        </div>
  </body>
</html>
