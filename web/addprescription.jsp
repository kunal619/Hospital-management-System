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

            height:500px;
            width:40%;
            background-color: white;
            position:absolute;
            margin-left:26%;
            border-radius: 25px;
            padding: 20px;
            text-align:center;
            opacity:0.9;
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
                
        <form action="addimage" method="post" enctype='multipart/form-data'>
            <input type="text" placeholder="enter the patient id" name="id"><br>
            <input type="file" name="image"><br>
            <input type="submit" value="Prescribe" id="sbb">
        </form>
                
        </div>
  </body>
</html>
