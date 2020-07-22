
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%
   Connection con=null;
   String query="select * from doctor where doctorid=?";
   String s1=request.getParameter("id");
   String s0="12",s2="123",s3="123",s4="",s5="",s6="",s7="",s8="",s9="",s10="",s11="";
   ResultSet rs=null;
   try
   {
       Class.forName("com.mysql.jdbc.Driver");
       con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital","root","root");
       PreparedStatement ps=con.prepareStatement(query);
       ps.setString(1,s1);
       rs=ps.executeQuery();
       while(rs.next()){
           
           s2=rs.getString(2);
           s3=rs.getString(3);
           s4=rs.getString(4);
           s5=rs.getString(5);
           s6=rs.getString(6);
           s7=rs.getString(7);
           s8=rs.getString(8);
           s9=rs.getString(9);
           s10=rs.getString(10);
           s11=rs.getString(11);
           
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
        <title>JSP Page</title>
        <style type="text/css">
            
              .yo
              {
                  font-family:verdana;
                 display: inline-block;
                 border: 1px solid #ccc;
                 border-radius: 4px;
                 box-sizing: border-box;
                 padding: 12px 11px;
                 margin: -5px 0;
                opacity:1.0;
                text-align: center;

              }
                  body{
        background-image: url('bg-banner.jpg');
        background-repeat: no-repeat;
        background-attachment: fixed;
        background-size: cover;
        height:100%;
        width:100%;
        }
        
        #editing
        {
            height:600px;
            width:40%;
            background-color:white;
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: cover;
            position:absolute;
            margin-left:28%;
            margin-top:20px;
            border-radius: 25px;
            padding: 20px;
            text-align:center;
            opacity:0.9;
        }
                #sbb
        {
          background-color: green;
  border: none;
  color: white;
  padding: 16px 32px;
  text-align: center;
  font-size: 16px;
  margin: 20px 2px;
  opacity: 0.6;
  transition: 0.3s;
  display: inline-block;
  text-decoration: none;
  cursor: pointer;
  border-radius: 10px;
        }
        #sbb:hover {opacity: 1};
            </style>
    </head>
    <body>
            <div id="editing">
                    <h2>Edit doctor's Profile</h2>
            <form action="updatedoctorinfo" method="get">  
                <pre>Doctor ID</pre><br><input type="text" class="yo" value="<%=s1%>" name="n1"><br>
            <pre>Doctor Name                     Mail ID</pre><br><input type="text" class="yo" value="<%=s2%>" name="n2">
            <input type="text" class="yo" value="<%=s3%>" name="n3"><br>
            <pre>Password                       Age</pre><input type="text" class="yo" value="<%=s4%>" name="n4">
           <input type="text" class="yo" value="<%=s5%>" name="n5"><br>
           <pre>Gender                     Qualifications</pre><input type="text" class="yo" value="<%=s6%>" name="n6">
           <input type="text" class="yo" value="<%=s7%>" name="n7"><br>
           <pre>Department               Consultancy Fees</pre><input type="text" class="yo" value="<%=s8%>" name="n8">
           <input type="text" class="yo" value="<%=s9%>" name="n9"><br>
           <pre>Phone Number                  Address</pre><input type="text" class="yo" value="<%=s10%>" name="n10">
           <input type="text" class="yo" value="<%=s11%>" name="n11"><br>
           <input type="submit" value="Go" id="sbb">
       </form>
        
            </div>
       
    </body>
</html>
    