<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
   Connection con=null;
   String query="select * from apointments";
   String s1="";
   ResultSet rs=null;
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
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style type="text/css">
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
            
            </style>
    </head>
    <body>
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
    
    <%while(rs.next())
       {%>
            <%s1=rs.getString(1);%>
           <td><%=s1%></td>
           <td><%=rs.getString(2)%></td>
           <td><%=rs.getString(3)%>
           <%=rs.getString(4)%></td>
           <td><%=rs.getString(5)%></td>
           <td><%=rs.getString(6)%></td>
           <td><%=rs.getString(7)%></td>
           <td><%=rs.getString(8)%></td>
           <td><form action="confirmappointment" method="get"><input type="text" placeholder="enter doctorid" name="doctorid"><input type="text" placeholder="schedule time" name="times"><input type="hidden" name="id" value="<%=s1%>"><input type="submit" value="assign"></form></td>        
           <td><a href="cancelappointment?id=<%=s1%>">Cancel</a></td></tr>
       
        <% }
       %>
    

</tbody>
        </table>
    </body>
</html>
