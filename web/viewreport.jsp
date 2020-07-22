<%@page import="java.io.OutputStream"%>
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
    String query="select presimg from pres where patientid=?";
       Connection con=null;
    Class.forName("com.mysql.jdbc.Driver");
   con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital","root","root");
   
       
            PreparedStatement ps=con.prepareStatement(query);
            ps.setString(1,v1);
            ResultSet rs=ps.executeQuery();
            if (rs.next()) {
            byte[] imgData = rs.getBytes("presimg");//Here....... r1.getBytes() extract byte data from resultSet 
            System.out.println(imgData);
            response.setHeader("expires", "0");
            response.setContentType("image/jpg");

            OutputStream os = response.getOutputStream(); // output with the help of outputStream 
            os.write(imgData);
            os.flush();
            os.close();

        }
%>
