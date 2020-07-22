<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
   Connection con=null;
   String id=(String)session.getAttribute("id");
   String query="select * from apointments where patientid=?";
   String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8="";
   try
   {
       Class.forName("com.mysql.jdbc.Driver");
       con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital","root","root");
       PreparedStatement ps=con.prepareStatement(query);
       ps.setString(1, id);
       ResultSet rs=ps.executeQuery();
       while(rs.next())
       {
           s1=rs.getString(1);
           s2=rs.getString(2);
           s3=rs.getString(3);
           s4=rs.getString(4);
           s5=rs.getString(5);
           s6=rs.getString(6);
           s7=rs.getString(7);
           s8=rs.getString(8);
       }
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
</tr>
</thead>
<tbody>
<tr>
<td><%=s1%></td>
<td><%=s2%></td>
<td><%=s3%>  <%=s4%></td>
<td><%=s5%></td>
<td><%=s6%></td>
<td><%=s7%></td>
<td><%=s8%></td>
</tr>
</tbody>
        </table>
    </body>
</html>
