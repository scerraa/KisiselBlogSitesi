<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="admin_giris" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Yönetim Paneli Giriş</title>
<link href="style.css" rel="stylesheet" type="text/css" />
</head>

<body>
    <form id="form1" runat="server">
<div id="site">
<div id="sitebosluk"></div>
<div id="ortainput">
<div id="kullaniciadi"><label>Kullanıcı Adı</label>
<div id="kullaniciadiinput">
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </div>
</div>

<div id="sifre">
<label>Şifre</label>
<div id="sifreinput">
    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
    </div>
</div>
<div id="alt">
<div id="hata">
    <asp:Panel ID="Panel1" runat="server">
    <img src="images/hata.png" alt="" /> <a>Hata :</a> lütfen kullanıcı 
    adı ve şifrenizi kontol edin</asp:Panel></div>


<div id="girisyap">
    <asp:Button ID="Button1" runat="server" Text="Button" onclick="Button1_Click" />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </div>
</div>
</div>
</div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:baglan %>" 
        SelectCommand="SELECT * FROM [Adminler]"></asp:SqlDataSource>
</form>
</body>
</html>

