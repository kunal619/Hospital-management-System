<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%
    String v1="";
    Cookie ck[] = request.getCookies();
    for(Cookie c:ck)
    {
        String s=c.getName();
        if(s.equals("id"))
            v1=c.getValue();
    }
    String query="select * from patient where patientid=?";
       Connection con=null;
   String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8="",s9="",s10="",s11="";
   Class.forName("com.mysql.jdbc.Driver");
   con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital","root","root");
   
        try{
            PreparedStatement ps=con.prepareStatement(query);
            ps.setString(1,v1);
            ResultSet rs=ps.executeQuery();
            while(rs.next())
            {
                s1=rs.getString("patientid");
                s2=rs.getString("patientname");
                s3=rs.getString("patientmail");
                s4=rs.getString("patientpassword");
                s5=rs.getString("patientnumber");
                s6=rs.getString("patientbirth");
                s7=rs.getString("patientgender");
                s8=rs.getString("patientm");
                s9=rs.getString("patientaddress");
                s10=rs.getString("patientdisease");
                s11=rs.getString("patientroom");
                
            }
        }
        catch(Exception e)
        {
            out.println(e);
        }

%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  font-family: "Lato", sans-serif;
}

.sidenav {
  height: 100%;
  width: 220px;
  position: fixed;
  z-index: 1;
  top:  0;
  left: 0;
  background-color: #111;
  overflow-x: hidden;
  padding-top: 20px;
}

.sidenav a {
  padding: 6px 8px 6px 16px;
  text-decoration: none;
  font-size: 25px;
  color: #818181;
  display: block;
}

.sidenav a:hover {
  color: #f1f1f1;
}

.main {
  margin-left: 220px; /* Same as the width of the sidenav */
  font-size: 28px; /* Increased text to enable scrolling */
  padding: 0px 10px;
}

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}
  table.greyGridTable {
  border: 2px solid #FFFFFF;
  width: 100%;
  text-align: center;
  border-collapse: collapse;
}
table.greyGridTable td, table.greyGridTable th {
  border: 1px solid #FFFFFF;
  padding: 3px 4px;
}
table.greyGridTable tbody td {
  font-size: 13px;
}
table.greyGridTable td:nth-child(even) {
  background: #EBEBEB;
}
table.greyGridTable thead {
  background: #FFFFFF;
  border-bottom: 4px solid #333333;
}
table.greyGridTable thead th {
  font-size: 15px;
  font-weight: bold;
  color: #333333;
  text-align: center;
  border-left: 2px solid #333333;
}
table.greyGridTable thead th:first-child {
  border-left: none;
}

table.greyGridTable tfoot td {
  font-size: 14px;
}
            #sbb
        {
          background-color: blue;
  border-radius:12px;
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
</head>
<body>

<div id="mySidenav" class="sidenav">
        <a href="patienthome.jsp"><img src="logo.png" id="logo" height="47" width="100" style="margin-bottom:90px;margin-left:20px;"></img></a>
     
        <a href="#viewP">View Profile</a><br>
        <a href="bookappointment.jsp">Book Appointment</a><br>
        <a href="myappointment.jsp">My Appointment</a><br>
        <a href="feedback.jsp">FeedBack</a><br>
        <a href="viewreport.jsp">View Report</a><br>
        <a href="index.html">Logout</a>
</div> 
    <div class="main">
        <div id="viewP">
             <h3>Welcome <%=s2%></h3><br><br>
        
                   <table class="greyGridTable">
<thead>
<tr>
<th>Assigned ID</th>
<th>Name</th>
<th>E-Mail ID</th>
<th>Password</th>
<th>Phone Number</th>
<th>Date of Birth</th>
<th>Gender</th>
<th>Marital Status</th>
<th>Residency Address</th>
<th>Disease</th>
<th>Admit Room type</th>
<th>Edit Profile</th>
</tr>
</thead>
<tbody>
<tr>

           <td><%=s1%></td>
           <td><%=s2%></td>
           <td><%=s3%></td>
           <td><%=s4%></td>
           <td><%=s5%></td>
           <td><%=s6%></td>
           <td><%=s7%></td>
           <td><%=s8%></td>
           <td><%=s9%></td>
           <td><%=s10%></td>
           <td><%=s11%></td>  
           <td><a href="viewprofile.jsp?id=<%=s1%>">Edit</td>
</tr>
</tbody>
        </table>
       
        </div><br><hr><br>
       <div id='appointments'>
           
           <h4>Book Appointment</h4>
           <p style="font-size: 15px;">For medical emergencies, call police
            aur seek emergency medical help.
            Complete the form below to request an appointment
            at Our Clinic.
            
            All fields are required unless marked optional.</p>
            <br>
        <form action="BookAppointment" method="get">
            <h6>A. What is the primary medical symptom or diagnosis for appointment request? </h6><p style="font-size:10px;">*specify the disease mentioned during registration*</p>
            <textarea name="reason" rows='9' cols="80"></textarea>
            <br><h6>B. How long has the patient had this condition or concern?</h6>
            <select name="time1">
                <option>1</option>
                <option>2</option>
                <option>3</option>
                <option>4</option>
                <option>5</option>
                <option>6</option>
                <option>7</option>
                <option>8</option>
            </select>
            <select name="time2">
                <option>Days</option>
                <option>Weeks</option>
                <option>Months</option>
                <option>Years</option>
            </select>
            <br><h6>C. Are there additional medical concerns the patient would like evaluated during this visit?</h6>
            <br><textarea name="concern" rows='8' cols="70"></textarea>
            <br><h6>D. Does the patient have health care insurance?</h6><p style="font-size: 10px;">*the document will be taken later if yes*</p>
            <br><select name="insurance">
                <option>yes</option>
                <option>no</option>
            </select>
            <br><h6>F. At which location are you requesting an appointment?</h6>
            <select name="city">
                <option>indore</option>
                <option>bhopal</option>
                <option>jabalpur</option>
                <option>gwalior</option>
            </select>
            <br><br><input type="submit" id="sbb">
        </form>
           
       </div>
    </div>
</body>
</html>
