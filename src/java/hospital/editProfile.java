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
public class editProfile extends HttpServlet {

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
        PrintWriter out = response.getWriter();
        
        String name1 = request.getParameter("n1");
        String name2 = request.getParameter("n2");
        String name3 = request.getParameter("n3");
        String name4 = request.getParameter("n4");
        String name5 = request.getParameter("n5");
        String name6 = request.getParameter("n6");
        String name7 = request.getParameter("n7");
        String name8 = request.getParameter("n8");
        String name9 = request.getParameter("n9");
        String name10 = request.getParameter("n10");
        String name11 = request.getParameter("n11");
        String query="";
        try
        {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital","root","root");
        
            query="update patient set patientname=?,patientmail=?,patientpassword=?,patientnumber=?,patientbirth=?,patientgender=?,patientm=?,patientaddress=?,patientdisease=?,patientroom=? where patientid=?";
        
        
            PreparedStatement ps=con.prepareStatement(query);
            ps.setString(1,name2);
            ps.setString(2,name3);
            ps.setString(3,name4);
            ps.setString(4,name5);
            ps.setString(5,name6);
            ps.setString(6,name7);
            ps.setString(7,name8);
            ps.setString(8,name9);
            ps.setString(9,name10);
            ps.setString(10,name11);
            ps.setString(11,name1);
            ps.executeUpdate();
            con.close();
            response.sendRedirect("patienthome.jsp");
        }
        catch(Exception e)
        {
            out.println(e);
        }
        /*
            query = "update doctor set doctorname=?,doctormail=?,doctorpassword=?,doctorage=?,doctorgender=?,doctordegree=?,doctordep=?,doctorfees=?,doctornumber=?,doctoraddress=? where dotorid=?";
            
            PreparedStatement ps=con.prepareStatement(query);*/
           
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
