<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Giris Hesabı</title>
        <link href="https://fonts.googleapis.com/css?family=ZCOOL+XiaoWei" rel="stylesheet">
                    <link href="css/style2.css" rel="stylesheet" type="text/css"/>

    </head>
    <body>
        <div class="container">
            <div class="box">
                <img class="avatar" src="img/user.jpg">
                <h1>Giriş hesabı</h1>
                <form action="loginControl.jsp" method="post">
                      
                    <p>Kullanıcı Adı</p>
                    <input type="text" placeholder="Username" name="email" required>
                    <p>Şifre</p>
                    <input type="password" placeholder="Password" name="password" required>
                    <input type="submit" value="Oturum Aç">
                       
                    <a href="kayitol.jsp">Yeni hesap oluştur</a>
                 
                </form>
                <button><a href="anasayfa.jsp">ANASAYFA</a></button>
            </div>


        </div>
    </body>
</html>

ha oldu :)