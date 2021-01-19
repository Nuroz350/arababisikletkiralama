<%@page import="java.sql.*" %> 
 
 
<% 
        String id = request.getParameter("id");
        Connection con;
        PreparedStatement pst;
        ResultSet rs;
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/registerdb?useUnicode=true&useLegacyDatetimeCode=false&serverTimezone=Turkey&characterEncoding=UTF-8", "root", "fener1998.");
        pst = con.prepareStatement("delete from kiralama where idkiralama = ?");
        pst.setString(1, id);
        pst.executeUpdate();  
        %>
        <script>
            location.href ="fiyatlar.jsp";
       </script>