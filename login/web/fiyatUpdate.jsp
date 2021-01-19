<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
 
<%
    if(request.getParameter("submit")!=null)
    {
        String id = request.getParameter("id");
        String isimSoyisim = request.getParameter("isimSoyisim");
        String alisGunu = request.getParameter("alisGunu");
        String telNo = request.getParameter("telNo");
        String gunSayisi = request.getParameter("gunSayisi");
        String arac = request.getParameter("arac");
        
        Connection con;
        PreparedStatement pst;
        ResultSet rs;
        
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/registerdb?useUnicode=true&useLegacyDatetimeCode=false&serverTimezone=Turkey&characterEncoding=UTF-8", "root", "fener1998.");
        pst = con.prepareStatement("update kiralama set isimSoyisim = ?,alisGunu =?,telNo = ?, kacGun= ?, arac=? where idkiralama = ?");
        pst.setString(1, isimSoyisim);
        pst.setString(2, alisGunu);
        pst.setString(3, telNo);
        pst.setString(4, gunSayisi);
        pst.setString(5, arac);
        pst.setString(6, id);
        pst.executeUpdate();  
        
    }
 
%>
 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

            <link href="bootstrap/bootstrap-5.0.0-beta1-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap/bootstrap-5.0.0-beta1-dist/css/bootstrap.css" rel="stylesheet" type="text/css"/>
<script>
  function preventBack() {
    window.history.forward();
  }
  setTimeout("preventBack()", 0);
  window.onunload = function() {
    null
  };
</script>   
</head>
    <body>
        <h1>KİRALAMA GÜNCELLEME</h1>
        <div class="row">
            <div class="col-sm-4">
                <form  method="POST" action="#" >
                    
                    <%    
                         Connection con;
                        PreparedStatement pst;
                        ResultSet rs;
        
                         Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/registerdb?useUnicode=true&useLegacyDatetimeCode=false&serverTimezone=Turkey&characterEncoding=UTF-8", "root", "fener1998.");
                          
                          String id = request.getParameter("id");
                          
                        pst = con.prepareStatement("select * from kiralama where idkiralama = ?");
                        pst.setString(1, id);
                        rs = pst.executeQuery();
                        
                         while(rs.next())
                         {
                    
                    %>
                    <div alight="left">
                        <label class="form-label">KİRALAYAN BİLGİLERİ</label>
                        <input type="text" class="form-control" placeholder="Student Name" value="<%= rs.getString("isimSoyisim")%>" name="isimSoyisim" id="isimSoyisim" required >
                     </div>
                        
                    <div alight="left">
                        <label class="form-label">Course</label>
                        <input type="datetime-local" class="form-control" placeholder="Course" name="alisGunu" value="<%= rs.getString("alisGunu")%>" id="course" required >
                     </div>
                        
                     <div alight="left">
                        <label class="form-label">Telefon Numarası</label>
                        <input type="text" class="form-control" placeholder="Course" name="telNo" id="course"  value="<%= rs.getString("telNo")%>" required >
                     </div>
                     <div alight="left">
                        <label class="form-label">Gün Sayısı</label>
                        <input type="text" class="form-control" placeholder="Course" name="gunSayisi" id="course" value="<%= rs.getString("kacGun")%>" required >
                     </div>
                     <div alight="left">
                        <label class="form-label">Araç</label>
                        <input type="text" class="form-control" placeholder="Araç" name="arac" id="course" value="<%= rs.getString("arac")%>" required >
                     </div>
                    <% }  %>
                         </br>
                     <div alight="right">
                         <input type="submit" id="submit" value="submit" name="submit" class="btn btn-info">
                         <input type="reset" id="reset" value="reset" name="reset" class="btn btn-warning">
                     </div>  
                         <div align="right">
                             <p><a href="fiyatlar.jsp">GERİ ÇIK</a></p>
                            
                         </div>
  
                </form>
            </div>          
        </div>
  
    </body>
</html>