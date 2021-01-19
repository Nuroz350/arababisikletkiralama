<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HesapKaydet</title>
        <link href="https://fonts.googleapis.com/css?family=ZCOOL+XiaoWei" rel="stylesheet">
       <link href="css/style1.css" rel="stylesheet" type="text/css"/>
        
    </head>
    <body>
           
        <div class="anlasma">
            <div class="regbox box">
                <img class="anlasma" src="img/anlasma.png">
                  
                <h1>
                    Hesabı Kaydet</h1>
<form action="registerServlet" method="post" >
                   <p>AD SOYAD</p>
<input type="text" placeholder="Username" name="name" > 
  
                   
Kullanıcı Email</p>
<input type="text" placeholder="Useremail" name="email" >
                   <p>
Şifre</p>
<input type="password" placeholder="Password" name="password">
   
    <input type="submit" value="Kayıt Ol">
    
                   <a href="index.jsp">Zaten Hesabınız Var Mı?</a>
                 
                   </form>
</div>
</div>
</body>
</html>

