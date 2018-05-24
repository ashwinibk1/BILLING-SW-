

<%@page import="javax.xml.bind.DatatypeConverter"%>
<%@page import="javax.imageio.ImageIO"%>
<%@page import="java.io.ByteArrayOutputStream"%>
<%@page import="java.awt.image.BufferedImage"%>
<%@page import="java.awt.Graphics"%>
<%@page import="java.util.Scanner"%>
<%@page import="java.io.File"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head> <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>  
                 <script>
	function nul(){}
	
var x=1,i,maxvalue=3,size=1;
</script>
<script>
function func(){
setInterval(function(){
if(x==1){
var temp=maxvalue;
$("#"+temp).attr("style","background-color:  #4CAF50;font-size: 20px;color: black;text-align: center; padding : 15px 32px; ");
}
for(i=1;i<x;i++){
$("#"+i).attr("style","background-color:  #4CAF50;font-size: 20px;color: black;text-align: center; padding : 15px 32px; ");
}
$("#"+i).attr("style","background-color: red;font-size: 20px;color: black;text-align: center; padding : 15px 32px; ");
size=x;
x++;
if (x > maxvalue){
x=1;
}
},3000);
}  


 $(window).click(function(e) {

        if(size==1)
        {
        window.location = "iselect";
    }
   else  if(size==2)
        {
        window.location = "iremove";
    }
    else if(size==3)
        {
        window.location = "ibill";
    }
    
    }
    );

</script>  <style>
        *{
    box-sizing: border-box;
}

body {
  margin: 0;
   font-family: 'Open Sans', sans-serif;
  font-weight: 300;
  line-height: 1.42em;
  color:#A7A1AE;
  background-color:#1F2739;
}

/* Style the header */
.header {
    background-color: #f1f1f1;
   padding-top: 10px;
    padding-right: 0px;
    padding-bottom: 10px;
    padding-left: 0px;
    text-align: center;
}


/* Style the top navigation bar */
.topnav {
    overflow: hidden;
    background-color: #333;
}

/* Style the topnav links */
.topnav a {
    float: left;
    display: block;
    color: #f2f2f2;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

/* Change color on hover */
.topnav a:hover {
    background-color: #ddd;
    color: black;
}

/* Create three unequal columns that floats next to each other */
.column {
    float: left;
    padding: 10px;
}

/* Left and right column */
.column.side {
    width: 25%;
}

/* Middle column */
.column.middle {
    width: 50%;
}

/* Clear floats after the columns */
.row:after {
    content: "";
    display: table;
    clear: both;
}

/* Responsive layout - makes the three columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
    .column.side, .column.middle {
        width: 100%;
    }
}

/* Style the footer */
.footer {
    background-color: #f1f1f1;
    padding: 10px;
    text-align: center;
}
.container th h1 {
	  font-weight: bold;
	  font-size: 1em;
  text-align: left;
  color: #185875;
}

.container td {
	  font-weight: normal;
	  font-size: 1em;
  -webkit-box-shadow: 0 2px 2px -2px #0E1119;
	   -moz-box-shadow: 0 2px 2px -2px #0E1119;
	        box-shadow: 0 2px 2px -2px #0E1119;
}

.container {
	  text-align: left;
	  overflow: hidden;
	  width: 80%;
	  margin: 0 auto;
  display: table;
  padding: 0 0 8em 0;
}

.container td, .container th {
	  padding-bottom: 2%;
	  padding-top: 2%;
  padding-left:2%;  
}

/* Background-color of the odd rows */
.container tr:nth-child(odd) {
	  background-color: #323C50;
}

/* Background-color of the even rows */
.container tr:nth-child(even) {
	  background-color: #2C3446;
}

.container th {
	  background-color: #1F2739;
}

.container td:first-child { color: #FB667A; }

.container tr:hover {
   background-color: #464A52;
-webkit-box-shadow: 0 6px 6px -6px #0E1119;
	   -moz-box-shadow: 0 6px 6px -6px #0E1119;
	        box-shadow: 0 6px 6px -6px #0E1119;
}



@media (max-width: 800px) {
.container td:nth-child(4),
.container th:nth-child(4) { display: none; }
}	
      </style>
    </head>
   
    <body id="11" onload="func()"  bgcolor="black" text=white>
        <div class="header"><h1 style="color: black;">Billing Software</div>
        <div class="topnav"><h1 style="color: white">Product Details</h1></div>  
       
            
   <script type='text/javascript'>
    
   
</script>
  
        </script>    
       
      
      
      <table class="container">
               
                                      
               <% Scanner s=new Scanner(new File("C:\\Users\\student17\\Documents\\NetBeansProjects\\aa\\src\\java\\isel.txt"));
           %>
               <tr><td>Image</td><td>Id</td><td>Name</td><td>Quantity</td><td>Price</td></tr>
               <%       
                while(s.hasNext()){
                       String line =s.nextLine();
                Scanner tempvalue=new Scanner(line).useDelimiter(",");
                        String id=tempvalue.next();
                        String quantity=tempvalue.next();
                        int qty=Integer.parseInt(quantity);
                        
                        int id111=Integer.parseInt(id);
                        
                     
               
                 Scanner s1=new Scanner(new File("C:\\Users\\student17\\Documents\\NetBeansProjects\\aa\\web\\pdetails.txt"));
               
                
                    while(s1.hasNext())
                    {
                        String line1=s1.nextLine();
                        Scanner tempvalue1=new Scanner(line1).useDelimiter(",");
                        String id1=tempvalue1.next();
                        String name1=tempvalue1.next();
                        String quantity1=tempvalue1.next();
                        String  price1 = tempvalue1.next();
                        
                      String id11=id1;
                      int idd=Integer.parseInt(id1);
                     
                   String name11=name1;
                   String price11=price1; 
                   int quantity11=Integer.parseInt(quantity1);
                   
                   %>
                   <tr>
                         <% if (id111==idd &&qty<=quantity11) {   %>
                    <td><img src="http://localhost:8080/aa/serveimage?id=<%=id1%>" width="100" ></td>
                <!--<td><img src="C:\Users\ashwi\Desktop\spastic society\files\pimages\2.jpg"></td>-->
              
                <td><%=id%>&nbsp;&nbsp;</td>
                 <td><%=name1%>&nbsp;&nbsp;</td>
                <td><%=qty%>&nbsp;&nbsp;</td>
                <td><%=price1%>&nbsp;&nbsp;</td> 
                </tr>
             <% }
                   %>
                   <% }
                   %>
                    <% }
                   %>
                
                   <tr>
                       <th colspan="7"><a href="iselect"><button  id="1" type="button"  style="background-color: #4CAF50;color: white;padding: 14px 20px;margin: 8px 0;border: none;cursor: pointer;border-radius: 8px;">ADD</button></a>&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="iremove"><button id="2"type="button" style="background-color: #4CAF50;color: white;padding: 14px 20px;margin: 8px 0;border: none;cursor: pointer;border-radius: 8px;">REMOVE</button></a>&nbsp;&nbsp;&nbsp;&nbsp;
                       <a href="ibill"><button id="3" type="button"style="background-color: #4CAF50;color: white;padding: 14px 20px;margin: 8px 0;border: none;cursor: pointer;border-radius: 8px;">NEXT</button></a></th>
                </tr>
           </table>
         
    </body>
</html>
