<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%@ page import="java.sql.ResultSet" %>
<% 
    if(request.getParameter("rezerv")!=null)
    {  
        String adSoyad = request.getParameter("adSoyad");
        String alisGunu = request.getParameter("alisGunu");
        String telNo = request.getParameter("telNo");
        String gunSayisi = request.getParameter("gunSayisi");
        String arac = request.getParameter("arac");
        String cardNumber = request.getParameter("cardNumber");
        String cardName = request.getParameter("cardName");
        String date = request.getParameter("date");
        String cvv = request.getParameter("cvv");

        Connection con;
        PreparedStatement pst;
        ResultSet rs;
        
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/registerdb?useUnicode=true&useLegacyDatetimeCode=false&serverTimezone=Turkey&characterEncoding=UTF-8", "root", "fener1998.");
       
        pst = con.prepareStatement("insert into kiralama(isimSoyisim,alisGunu,telNo,kacGun,arac,cardNumber,cardName,date,cvv)values(?,?,?,?,?,?,?,?,?)");
        pst.setString(1, adSoyad);
        pst.setString(2, alisGunu);
        pst.setString(3, telNo);
        pst.setString(4, gunSayisi);
        pst.setString(5, arac);
         pst.setString(6, cardNumber);
        pst.setString(7, cardName);
        pst.setString(8, date);
        pst.setString(9, cvv);
        
        
        if (adSoyad!="" && alisGunu!="") {
               pst.executeUpdate();  
           }           
    }

    
   %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>REZERVASYON</title>
     <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
                <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" rel="stylesheet" type="text/css"/>
                <style>
                    .fa-edit:before{
                        color: white !important; 
                    }
                     .fa-trash:before{
                        color: white !important; 
                    }
                </style>
</head>
 <body>
        <h1>ARABA VE BİSİKLET KİRALAMA REZERVASYONU</h1>
         <nav class="navbar navbar-inverse">
    <div class="container-fluid">
      <div class="navbar-header">
        <a class="navbar-brand" href="#">AR-Bİ KİRALAMA</a>
      </div>
      <ul class="nav navbar-nav">
        <li class="active"><a href="anasayfa.jsp">Anasayfa</a></li>
        <li><a href="araba.jsp">Arabalar</a></li>
        <li><a href="bisiklet.jsp">Bisikletler</a></li>
        <li><a href="fiyatlar.jsp">Kiralama</a></li>
      </ul>
    </div>
  </nav>
        </br>
        <div class="row">
            <div class="col-sm-4">
                <form  method="POST" action="#" > 
                     <div alight="center">
                        <label class="form-label">Alıcı Bilgileri</label>
                     </div>
                    <div alight="left">
                        <label class="form-label">Ad Soyad</label>
                        <input type="text" class="form-control" placeholder="name" name="adSoyad" id="sname" required >
                     </div>
                         
                    <div alight="left">
                        <label class="form-label">Alış Günü</label>
                        <input type="datetime-local" class="form-control" placeholder="gun" name="alisGunu" id="course" required >
                     </div>
                    <div alight="left">
                        <label class="form-label">Telefon Numarası</label>
                        <input type="text" class="form-control" placeholder="Course" name="telNo" id="course" required >
                     </div>
                     <div alight="left">
                        <label class="form-label">Gün Sayısı</label>
                        <input type="text" class="form-control" placeholder="Course" name="gunSayisi" id="course" required >
                     </div>
                    <div alight="left">
                        <label class="form-label">Araçlar - Günlük ücretlendirme</label>
                        <select class="form-select" name="arac">
                          <option selected>Seçiniz</option>
                          <option value="Peugeout 301 - 170 TL">Peugeout 301 - 170 TL</option>
                          <option value="Fiat Linea - 175 TL">Fiat Linea - 175 TL</option>
                          <option value="Ford Tourneo Courier - 150 TL">Ford Tourneo Courier - 150 TL</option>
                          <option value="HUNDAI İ20 - 130 TL">HUNDAI İ20 - 130 TL</option>
                          <option value="Citroen C Elysee 1,6 DİZEL - 190 TL">Citroen C Elysee 1,6 DİZEL - 190 TL</option>
                          <option  value="FORD CUSTOM VİP - 400 TL">FORD CUSTOM VİP - 400 TL</option>
                          <option value="Cannondale Trail 7 27.5 Dağ Bisikleti - Yeşil - 80TL">Cannondale Trail 7 27.5 Dağ Bisikleti - Yeşil - 80TL</option>
                          <option value="Corratec Inside Link Carbon 10Hz Base - 85TL">Corratec Inside Link Carbon 10Hz Base - 85TL</option>
                          <option value="Cannondale Habit 6 Alloy 27,5 Dağ Bisikleti - Gri - 75TL">Cannondale Habit 6 Alloy 27,5 Dağ Bisikleti - Gri - 75TL</option>
                          <option value="Cannondale SystemSix Carbon Disc Ultegra 2021 - Siyah - 50TL">Cannondale SystemSix Carbon Disc Ultegra 2021 - Siyah - 50TL</option>
                          <option value="Cannondale Synapse Carbon 105 Yol Bisikleti - Kırmızı - 55TL">Cannondale Synapse Carbon 105 Yol Bisikleti - Kırmızı - 55TL</option>
                          <option value="Corratec Dolomiti Tiagra Yol Bisikleti - Beyaz - 55TL">Corratec Dolomiti Tiagra Yol Bisikleti - Beyaz - 55TL</option>
                          <option value="Cannondale Tesoro 2 Şehir/Tur Bisikleti 2020 - Gri - 65TL">Cannondale Tesoro 2 Şehir/Tur Bisikleti 2020 - Gri - 65TL</option>
                          <option value="Schwinn Hornet Cruiser Bisiklet - 75TL">Schwinn Hornet Cruiser Bisiklet - 75TL</option>
                          <option value="Schwinn Sivica 7 Man Şehir/Tur Bisikleti - 70TL">Cannondale Cujo 20 Boys Çocuk Bisikleti- 50TL</option>
                          <option value="Geotech Mini Tricycle 3 Tekerlekli Çocuk Bisikleti - Siyah - 55TL">Geotech Mini Tricycle 3 Tekerlekli Çocuk Bisikleti - Siyah - 55TL</option>
                          <option value="Geotech Rocky 14 Jant Çocuk Bisikleti - 80TL">Geotech Rocky 14 Jant Çocuk Bisikleti - 80TL</option>
                        
                      
                        </select>                     
                    </div>
                    
                    <hr/>
                          <div alight="center">
                        <label class="form-label">Ödeme Bilgileri</label>
                     </div>
                         <div alight="left">
                        <label class="form-label">Kart Numarası</label>
                        <input type="text" class="form-control" placeholder="Course" name="cardNumber" id="course"  >
                     </div>
                     <div alight="left">
                        <label class="form-label">Kart Üzerindeki İsim</label>
                        <input type="text" class="form-control" placeholder="Kart Üzerindeki İsim" name="cardName" id="course"  >
                     </div>
                         <div alight="left">
                        <label class="form-label">Son Kullanım Tarihi</label>
                        <input type="text" class="form-control" placeholder="Course" name="date" id="course"  >
                     </div>
                     <div alight="left">
                        <label class="form-label">CVV</label>
                        <input type="text" class="form-control" placeholder="Course" name="cvv" id="course"  >
                     </div>
                         </br>
                     <div alight="right">
                         <input type="submit" id="submit" value="Kaydet" name="rezerv" class="btn btn-info">
                         <input type="reset" id="reset" value="Temizle" name="reset" class="btn btn-warning">
                     </div>  
                         
                </form>
            </div>
            
             <div class="col-sm-8">
                 <div class="panel-body">
                     <table id="tbl-student" class="table table-responsive table-bordered" cellpadding ="0" width="100%">
<thead class="thead-dark">
    <tr>
                                    <th>Ad Soyad</th>
                                    <th>Alış Tarihi</th>
                                    <th>Telefon Numarası</th>
                                    <th>Gün Sayısı</th>
                                    <th>ARAÇLAR</th>
                                    <th>Ödeme Türü</th>
                                    <th>Düzenle</th>
                                    <th>
                                        Sil
                                    </th>
                             </tr>  
                             
                             <%  
                                 
                              Connection con;
                              ResultSet rs; 
                        Class.forName(driverName);
                        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/registerdb?useUnicode=true&useLegacyDatetimeCode=false&serverTimezone=Turkey&characterEncoding=UTF-8", "root", "fener1998.");
                                  String query = "SELECT idkiralama,alisGunu,alisSaati,telNo,kacGun,isimSoyisim,arac, IF((cardNumber!='' && cardName!='' && cvv!='' && date!=''),'Kart','Nakit') as odeme FROM registerdb.kiralama;";
                                  Statement st = con.createStatement();
                                    rs =  st.executeQuery(query);
                                        while(rs.next())
                                        {
                                            String id = rs.getString("idkiralama");
                                   %>
                             <tr>
                                <td><%=rs.getString("isimSoyisim") %></td>
                                 <td><%=rs.getString("alisGunu") %></td>
                                 <td><%=rs.getString("telNo") %></td>
                                 <td><%=rs.getString("kacGun") %></td>
                                 <td><%=rs.getString("arac") %></td>
                                 <td><%=rs.getString("odeme") %></td>
                                 <td>
                                     <button type="button" class="btn btn-warning">
                                           <a href="fiyatUpdate.jsp?id=<%=id%>"><i class="fas fa-edit"></i></a>
                                     </button>
                                 </td>
                                 <td>
                                     <button type="button" class="btn btn-danger">
                                           <a href="fiyatDelete.jsp?id=<%=id%>"><i class="fas fa-trash"></i></a>
                                     </button>
                                 </td>
                             </tr> 
                                <%
                                 }
                               %>
                             
                     </table>    
                 </div>

            </div>  
        </div>

    </body>
 
</html> 


