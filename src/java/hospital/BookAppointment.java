
package hospital;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class BookAppointment extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out=response.getWriter();
       // String abc = request.getParameter("abc");
        String patientreason = request.getParameter("reason");
        String time1 = request.getParameter("time1");
        String time2 = request.getParameter("time2");
        String concern = request.getParameter("concern");
        String insurance = request.getParameter("insurance");
        String city = request.getParameter("city");

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
        
        
        String query = "insert into apointments values(?,?,?,?,?,?,?,'pending')";
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital","root","root");
            PreparedStatement ps=con.prepareStatement(query);
            ps.setString(1,v1);
            ps.setString(2,patientreason);
            ps.setString(3,time1);
            ps.setString(4,time2);
            ps.setString(5,concern);
            ps.setString(6,insurance);
            ps.setString(7,city);
            ps.executeUpdate();
            con.close();
            response.sendRedirect("patienthome.jsp");
        }
        catch(Exception e)
        {
            out.println(e);
        }
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
