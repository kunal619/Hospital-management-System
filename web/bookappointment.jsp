<%-- 
    Document   : bookappointment
    Created on : 16 Apr, 2020, 7:44:21 PM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Book Appointment</h1>
        <br><h3>Request an Appointment</h3>
            <br><p>For medical emergencies, call police
            aur seek emergency medical help.
            Complete the form below to request an appointment
            at Our Clinic.
            
            All fields are required unless marked optional.</p>
            
            <br><br><h2>Primary Concern</h2>
            
        <form action="BookAppointment" method="get">
            <h5>what is the primary medical symptom or diagnosis for appointment request? </h5>
            <br><input type="text" name="reason">
            <br><h5>How long has the patient had this condition or concern?</h5>
            <select name="time1">
                <option>1</option>
                <option>2</option>
                <option>3</option>
                <option>4</option>
                <option>5</option>
                <option>6</option>
                <option>7</option>
                <option>8</option>
            </select>
            <select name="time2">
                <option>Days</option>
                <option>Weeks</option>
                <option>Months</option>
                <option>Years</option>
            </select>
            <br><h5>Are there additional medical concerns the patient would like evaluated during this visit?</h5>
            <br><input type="text" name="concern">
            <br><h5>Does the patient have health care insurance?</h5>
            <br><select name="insurance">
                <option>yes</option>
                <option>no</option>
            </select>
            <br><h5>At which location are you requesting an appointment?</h5>
            <select name="city">
                <option>indore</option>
                <option>bhopal</option>
                <option>jabalpur</option>
                <option>gwalior</option>
            </select>
            <br><br><input type="submit">
        </form>
    </body>
</html>
