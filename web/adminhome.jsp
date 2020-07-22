<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
   Connection con=null;
   String query="select * from patient";
   ResultSet rs=null,rs2=null,rs3=null,rs4=null;
   try
   {
       Class.forName("com.mysql.jdbc.Driver");
       con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital","root","root");
       PreparedStatement ps=con.prepareStatement(query);
       rs=ps.executeQuery();
   }
   catch(Exception e)
   {
       
   }
   
   String query2="select * from doctor";
   String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8="",s9="",s10="",s11="";
   try
   {
       Class.forName("com.mysql.jdbc.Driver");
       con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital","root","root");
       PreparedStatement ps=con.prepareStatement(query2);
       rs2=ps.executeQuery();
   }
   catch(Exception e)
   {

   }
   String query3="select * from apointments";
   String a1="";
   try
   {
       Class.forName("com.mysql.jdbc.Driver");
       con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital","root","root");
       PreparedStatement ps=con.prepareStatement(query3);
       rs3=ps.executeQuery();
   }
   catch(Exception e)
   {
       
   }
   String query4="select * from feedback";
   try
   {
       Class.forName("com.mysql.jdbc.Driver");
       con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital","root","root");
       PreparedStatement ps=con.prepareStatement(query4);
       rs4=ps.executeQuery();
   }
   catch(Exception e)
   {
       
   }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
            
#patientdetails
{
    text-align: center;
}
#doctordetails
{
    text-align: center;
}
#appointments
{
    text-align: center;
}
#asdid
{
    text-align: center;
}
#ast
{
    text-align:center;
    
}
#feedbacks
{
    text-align: center;
}
</style>
</head>
<body>

<div id="mySidenav" class="sidenav">
         <a href="index.html"><img src="logo.png" id="logo" height="45" width="100" style="margin-left:32px;"></img></a>
    
        <a href="#patientdetails">Patients</a><br>
        <a href="#doctordetails">Doctors</a><br>
        <a href="doctorsignup.jsp">Add Doctors</a><br>
        <a href="deletedoctorinfo.jsp">Remove Doctors</a><br>
        <a href="clearpatientdata.jsp">Clear Patient Data</a><br>
        <a href="">Staff Details</a><br>
        <a href="">Department Section</a><br>
        <a href="#feedbacks">Feedbacks</a><br>
        <a href="#appointments">Appointments</a><br>
        <a href="logout">Logout</a>
</div> 
    <div class="main">
        <h1>Welcome Sir</h1>
        <hr><hr>
        <div id="viewP">
            <h3 id="patientdetails">Patient Details</h3>
<table class="greyGridTable">
<thead>
<tr>
<th>Patient ID</th>
<th>Patient Name</th>
<th>Patient Mail</th>
<th>Patient Password</th>
<th>Patient Mobile Number</th>
<th>Patient Birth date</th>
<th>Patient Gender</th>
<th>Patient Marital Status</th>
<th>Patient Address</th>
<th>Patient Disease</th>
<th>Patient Room</th>
</tr>
</thead>
<tbody>
<tr>
    
    <%while(rs.next())
       {%>
           <td><%=rs.getString(1)%></td>
           <td><%=rs.getString(2)%></td>
           <td><%=rs.getString(3)%></td>
           <td><%=rs.getString(4)%></td>
           <td><%=rs.getString(5)%></td>
           <td><%=rs.getString(6)%></td>
           <td><%=rs.getString(7)%></td>
           <td><%=rs.getString(8)%></td>
           <td><%=rs.getString(9)%></td>
           <td><%=rs.getString(10)%></td>
           <td><%=rs.getString(11)%></td></tr>
           <% }
       %>
    

</tbody>
        </table>
        </div>
       <br><hr><hr>
       <div id="viewD">
           <h3 id="doctordetails">Doctor Details</h3>
          
                   <table class="greyGridTable">
<thead>
<tr>
<th>Doctor ID</th>
<th>Doctor Name</th>
<th>Doctor Mail</th>
<th>Doctor Password</th>
<th>Doctor Age</th>
<th>Doctor Gender</th>
<th>Doctor Degree</th>
<th>Doctor Department</th>
<th>Doctor Consultancy fees</th>
<th>Doctor Mobile Number</th>
<th>Doctor Address</th>
<th>Edit</th>
</tr>
</thead>
<tbody>
<tr>

    <%while(rs2.next())
       {
        s1=rs2.getString(1);s2=rs2.getString(2);s3=rs2.getString(3);
        s4=rs2.getString(4);s5=rs2.getString(5);s6=rs2.getString(6);
        s7=rs2.getString(7);s8=rs2.getString(8);s9=rs2.getString(9);
        s10=rs2.getString(10);s11=rs2.getString(11);%>
        
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
           <td><a href="doctorinfo.jsp?id=<%=s1%>">Edit</td>
</tr>
           <% }
       %>
    
</tbody>
        </table>
       </div>
       <hr><hr>
       <div id="appointments">
               
           <h3>Appointments Details</h3>
           <table class="greyGridTable">
<thead>
<tr>
<th>Patient ID</th>
<th>Description of patient's condition</th>
<th>time since affected</th>
<th>other concerns</th>
<th>insurance</th>
<th>location to get treatment</th>
<th>Status</th>
<th>Assign Doctor</th>
<th>Cancel appointment</th>
</tr>
</thead>
<tbody>
<tr>
    
    <%while(rs3.next())
       {%>
            <%a1=rs3.getString(1);%>
           <td><%=a1%></td>
           <td><%=rs3.getString(2)%></td>
           <td><%=rs3.getString(3)%>
           <%=rs3.getString(4)%></td>
           <td><%=rs3.getString(5)%></td>
           <td><%=rs3.getString(6)%></td>
           <td><%=rs3.getString(7)%></td>
           <td><%=rs3.getString(8)%></td>
           <td><form action="confirmappointment" method="get"><input type="text" placeholder="enter doctorid" name="doctorid" id="asdid"><input type="text" size="8" maxlength="8" placeholder="assign time" name="times" id="ast"><input type="hidden" name="id" value="<%=a1%>"><input type="submit" value="assign"></form></td>        
           <td><a href="cancelappointment?id=<%=a1%>">Cancel</a></td></tr>
       
        <% }
       %>
    

</tbody>
        </table>

       </div>
       <br><hr><hr><br>
       <div id="feedbacks">
           <h3>Feedbacks</h3>
            <table class="greyGridTable">
<thead>
<tr>
<th>Patient ID</th>
<th>HOW WAS OUR SERVICES.</th>
<th>EXPERIENCE WITH THE CONSULTANT/DOCTOR.</th>
<th>COURTESY OF THE DOCTOR AND THE NURSING STAFF</th>
<th>TIMELY AVAILABILITY OF THE INVESTIGATION REPORT</th>
<th>CLEANLINESS OF THE TOILETS</th>
<th>CAFETERIA/F&B SERVICES AT THE HOSPITAL</th>
<th>AIMS FOR FUTURE MEDICAL NEEDS</th>
<th>PATIENT SUGGESTION</th>
</tr>
</thead>
<tbody>
<tr>

    <%while(rs4.next())
       {
       %>
        
           <td><%=rs4.getString(1)%></td>
           <td><%=rs4.getString(2)%></td>
           <td><%=rs4.getString(3)%></td>
           <td><%=rs4.getString(4)%></td>
           <td><%=rs4.getString(5)%></td>
           <td><%=rs4.getString(6)%></td>
           <td><%=rs4.getString(7)%></td>
           <td><%=rs4.getString(8)%></td>
           <td><%=rs4.getString(9)%></td>
</tr>
           <% }
       %>
    
</tbody>
        </table>
       </div>
    </div>
</body>
</html>
