<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h2>Enter the Patient id</h2>
        <form action="#xy" method="get">
            <input type="text" name="id">
            <input type="submit">
        </form>
        <div id="xy">
            <%
                String s1=request.getParameter("id");
                String query="delete from patient where patientid=?";
                  try
                 {
                        Class.forName("com.mysql.jdbc.Driver");
                       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital","root","root");
                       PreparedStatement ps=con.prepareStatement(query);
                       ps.setString(1, s1);
                         int x=ps.executeUpdate();
                        con.close();
                        if(x>0)
                        response.sendRedirect("adminhome.jsp");
                }
                catch(Exception e)
                {}
            %>
        </div>
    </body>
</html>
