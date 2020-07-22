<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
   Connection con=null;
   String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8="",s9="",s10="",s11="";
   String type="";
   Class.forName("com.mysql.jdbc.Driver");
   con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital","root","root");
   ResultSet rs=null,rs2=null;
    String id=(String)session.getAttribute("did");
        String query="select * from doctor where doctorid=?";
        try{
            PreparedStatement ps=con.prepareStatement(query);
            ps.setString(1,id);
            rs=ps.executeQuery();
            while(rs.next())
            {
                s1=rs.getString("doctorid");
                s2=rs.getString("doctorname");
                s3=rs.getString("doctormail");
                s4=rs.getString("doctorpassword");
                s5=rs.getString("doctorage");
                s6=rs.getString("doctorgender");
                s7=rs.getString("doctordegree");
                s8=rs.getString("doctordep");
                s9=rs.getString("doctorfees");
                s10=rs.getString("doctornumber");
                s11=rs.getString("doctoraddress");
            }
        }
        catch(Exception e)
        {
            out.println(e);
        }
        
        String query2="select * from doctorappointments where doctorid=?";
        String a1="123",a2="123";
   try
   {
       Class.forName("com.mysql.jdbc.Driver");
       con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital","root","root");
       PreparedStatement ps=con.prepareStatement(query2);
       ps.setString(1,id);
       rs2=ps.executeQuery();
   }
   catch(Exception e)
   {
       
   }

     
%>
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
  top: 0;
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
            
#doctordetails
{
    text-align: center;
}

</style>
</head>
<body>

<div id="mySidenav" class="sidenav">
        <a href="index.html"><img src="logo.png" id="logo" height="47" width="100" style="margin-bottom:100px;margin-left:33px;"></img></a>
    
        <a href="#viewD">View Profile</a><br>
        <a href="doctorcanvapointment.jsp">View Your Appointment</a><br>
        <a href="addprescription.jsp">Add Prescription</a><br>
        <a href="logout">Logout</a>
</div> 
    <div class="main">
        <h3>Welcome Doctor <%=s2%></h3><br><br>
        <div id="viewD">
           <h3 id="doctordetails">Your Profile</h3>
          
                   <table class="greyGridTable">
<thead>
<tr>
<th>Assigned ID</th>
<th>Name</th>
<th>E-Mail ID</th>
<th>Password</th>
<th>Specified Age</th>
<th>Gender</th>
<th>Qualifications</th>
<th>Specialization</th>
<th>Consultancy fees</th>
<th>Mobile Number</th>
<th>Residential Address</th>
<th>Edit</th>
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
           <td><a href="doctorinfo.jsp?id=<%=s1%>">Edit</td>
</tr>
</tbody>
        </table>
        </div><br><hr><hr>
        <div id="appointments">
           
           <h3 id="doctordetails">Appointments</h3>
              <table class="greyGridTable">
<thead>
<tr>
<th>patient id</th>
<th>assigned time</th>
<th>status</th>
<th>Cancel appointment</th>
</tr>
</thead>
<tbody>
<tr>
    
    <%while(rs2.next())
       {%>
           <%a2=rs2.getString(2);%>
           <td><%=a2%></td>
           <td><%=rs2.getString(3)%></td>
           <td><%=rs2.getString(4)%></td>
           <td><a href="cancelappointment?id=<%=a2%>">Cancel</a></td></tr>
       
        <% }
       %>
    

</tbody>
        </table>
           
        </div>
    </div>
    
</body>
</html> 