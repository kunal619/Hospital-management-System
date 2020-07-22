/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hospital;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Lenovo
 */
public class PatientSignUp extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
           PrintWriter out=response.getWriter();
       // String abc = request.getParameter("abc");
        String patientid = request.getParameter("patientid");
        String patientname = request.getParameter("patientname");
        String patientmail = request.getParameter("patientmail");
        String patientpassword = request.getParameter("patientpassword");
        String patientnumber = request.getParameter("patientnumber");
        String patientbirth = request.getParameter("patientbirth");
        String patientgender = request.getParameter("patientgender");
        String patientm = request.getParameter("patientm");
        String patientaddress = request.getParameter("patientaddress");
        String patientdisease = request.getParameter("patientdisease");
        String patientroom = request.getParameter("patientroom");
        
        String query = "insert into patient values(?,?,?,?,?,?,?,?,?,?,?)";
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital","root","root");
            PreparedStatement ps=con.prepareStatement(query);
            ps.setString(1,patientid);
            ps.setString(2,patientname);
            ps.setString(3,patientmail);
            ps.setString(4,patientpassword);
            ps.setString(5,patientnumber);
            ps.setString(6,patientbirth);
            ps.setString(7,patientgender);
            ps.setString(8,patientm);
            ps.setString(9,patientaddress);
            ps.setString(10,patientdisease);
            ps.setString(11,patientroom);
            ps.executeUpdate();
            con.close();
            out.println("<html>");
            out.println("<body>"); 
            out.println("<h1>Your account is created successfully....</h1><br>"); 
            out.println("<a href=patientlogin.jsp>Login</a><br><a href=index.html>Home</a>"); 
            out.println("</body>"); 
            out.println("</html>");
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
