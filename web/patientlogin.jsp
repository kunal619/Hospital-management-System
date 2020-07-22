<%
    String v1="",v2="";
    Cookie ck[] = request.getCookies();
    if(ck!=null)
    for(Cookie c:ck)
    {
        String s=c.getName();
        if(s.equals("id"))
        {
            v1=c.getValue();
        }
        else if(s.equals("pw"))
        {
            v2=c.getValue();
        }
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        background-opacity:0.3;
        }

        .overlay{

            height:400px;
            width:40%;
            background-image: url('img/bg-banner.jpg');
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: cover;
            position:absolute;
            margin-left:56%;
            margin-top:100px;
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
      <h1>Patient Login</h1>
        <form action="PatientLogin" method="get">
            <br><input type="text" name="patientname" placeholder="Patient Name "><br>
            <input type="text" name="patientid" value="<%=v1%>" placeholder="Patient ID"><br>
            <input type="password" name="patientpassword" value="<%=v2%>" placeholder="Password"><br>
        <input type="submit">
        </form>
        </div>
  </body>
</html>
