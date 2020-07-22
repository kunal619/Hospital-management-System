<%-- 
    Document   : feedback
    Created on : 28 May, 2020, 2:32:39 PM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body{ 
                    background-image: url('feedbackimg.jpg');
                    background-repeat: no-repeat;
                    background-attachment: fixed;
                    background-size:1600px 800px;
                    
        }
        #rtr
        {
            margin-left:auto;
            margin-right: auto;
            background-color: #faf3f2;
            width:610px;
            height:1100px;
            text-align: center;
        }
        </style>
    </head>
    <body>
        <h2 style="margin-top:10px;">Patient Feedback/Suggestions Form </h2>
<p>We are grateful to you for giving us the opportunity to serve you. To help us in our Endeavour to serve you better we sincerely request you to kindly give us your opinion and suggestions on the hospitals out – patients services by checking the appropriate box. Your identity will remain confidential at all times. We appreciate your feedback and assure you of our best services always.</p>
                        <p>Excellent= 5 Good= 4 Fair= 3 Poor= 2 Unacceptable= 1</p>
                        <p>* Required<br></p><div id='rtr'>
        <form action='feedbackj' method="get">
        			
                       
<h4>A. Promptness and courteous behavior of the Billing/reception counter. *</h4>
<h5>The Ranking to be given as follows :</h5>
<input type="radio" name="a" value="Excellent">Excellent
<input type="radio" name="a" value="Good">Good
<input type="radio" name="a" value="Fair">Fair
<input type="radio" name="a" value="Poor">Poor
<input type="radio" name="a" value="Unacceptable">Unacceptable
<h4>B. Please rate your experience with the Consultant/Doctor. *</h4>
<h5>The Ranking to be given as follows :</h5>
<input type="radio" name="b" value="Excellent">Excellent
<input type="radio" name="b" value="Good">Good
<input type="radio" name="b" value="Fair">Fair
<input type="radio" name="b" value="Poor">Poor
<input type="radio" name="b" value="Unacceptable">Unacceptable

<h4>C. Courtesy of the Doctor and the nursing staff. *</h4>
<h5>The Ranking to be given as follows :</h5>
<input type="radio" name="c" value="Excellent">Excellent
<input type="radio" name="c" value="Good">Good
<input type="radio" name="c" value="Fair">Fair
<input type="radio" name="c" value="Poor">Poor
<input type="radio" name="c" value="Unacceptable">Unacceptable

<h4>D. Timely availability of the investigation report *</h4>
<h5>The Ranking to be given as follows :</h5>
<input type="radio" name="d" value="Excellent">Excellent
<input type="radio" name="d" value="Good">Good
<input type="radio" name="d" value="Fair">Fair
<input type="radio" name="d" value="Poor">Poor
<input type="radio" name="d" value="Unacceptable">Unacceptable

<h4>E. Cleanliness of the toilets. *</h4>
<h5>The Ranking to be given as follows :</h5>
<input type="radio" name="e" value="Excellent">Excellent
<input type="radio" name="e" value="Good">Good
<input type="radio" name="e" value="Fair">Fair
<input type="radio" name="e" value="Poor">Poor
<input type="radio" name="e" value="Unacceptable">Unacceptable

<h4>F. Cafeteria/F&amp;B Services at the hospital. *</h4>
<h5>The Ranking to be given as follows :</h5>
<input type="radio" name="f" value="Excellent">Excellent
<input type="radio" name="f" value="Good">Good
<input type="radio" name="f" value="Fair">Fair
<input type="radio" name="f" value="Poor">Poor
<input type="radio" name="f" value="Unacceptable">Unacceptable

<h4>G. Would you consider aims for future medical needs? *</h4>
<h5>The Ranking to be given as follows :</h5>
<input type="radio" name="g" value="Excellent">Excellent
<input type="radio" name="g" value="Good">Good
<input type="radio" name="g" value="Fair">Fair
<input type="radio" name="g" value="Poor">Poor
<input type="radio" name="g" value="Unacceptable">Unacceptable
<h4>Comments/Suggestions:</h4>
<textarea rows='10' cols="50" name='suggestion'></textarea><br>
<input type='submit' value='Done'>
        </form></div>
    </body>
</html>
