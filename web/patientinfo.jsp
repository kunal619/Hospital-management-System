<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
   Connection con=null;
   String query="select * from patient";
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
    </body>
</html>
