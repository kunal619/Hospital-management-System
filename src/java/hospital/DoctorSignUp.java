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
import javax.servlet.http.HttpSession;

/**
 *
 * @author Lenovo
 */
public class DoctorSignUp extends HttpServlet {

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
        String doctorid = request.getParameter("doctorid");
        String doctorname = request.getParameter("doctorname");
        String doctormail = request.getParameter("doctormail");
        String doctorpassword = request.getParameter("doctorpassword");
        String doctorage = request.getParameter("doctorage");
        String doctorgender = request.getParameter("doctorgender");
        String doctordegree = request.getParameter("doctordegree");
        String doctordep = request.getParameter("doctordep");
        String doctorfees = request.getParameter("doctorfees");
        String doctornumber = request.getParameter("doctornumber");
        String doctoraddress = request.getParameter("doctoraddress");
        
        String query = "insert into doctor values(?,?,?,?,?,?,?,?,?,?,?)";
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital","root","root");
            PreparedStatement ps=con.prepareStatement(query);
            ps.setString(1,doctorid);
            ps.setString(2,doctorname);
            ps.setString(3,doctormail);
            ps.setString(4,doctorpassword);
            ps.setString(5,doctorage);
            ps.setString(6,doctorgender);
            ps.setString(7,doctordegree);
            ps.setString(8,doctordep);
            ps.setString(9,doctorfees);
            ps.setString(10,doctornumber);
            ps.setString(11,doctoraddress);
            ps.executeUpdate();
            con.close();
                response.sendRedirect("adminhome.jsp");
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
