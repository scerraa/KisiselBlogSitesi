<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Hakkimizda.aspx.cs" Inherits="Her_Telden_Ses_Default" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Hakkımızda</title>
<meta name="keywords" content="city, blog, web, theme, design, free templates, website templates, CSS, HTML" />
<meta name="description" content="City Blog Theme is a free website template provided by templatemo.com for all webmasters." />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />

<link href="css/svwp_style.css" rel="stylesheet" type="text/css" />
<script src="js/jquery-1.3.2.min.js" type="text/javascript"></script>
<script src="js/jquery.slideViewerPro.1.0.js" type="text/javascript"></script>

<!-- Optional plugins  -->
<script src="js/jquery.timers.js" type="text/javascript"></script>

</head>
<body>

<div id="templatemo_wrapper">

    <div id="templatemo_header">
        <div id="site_title">
            <a href="http://www.templatemo.com">
                <img src="resimler/Logo.png" />
            </a>
        </div>
    </div>

	<div id="templatemo_menu">
        <ul>
            <li><a href="Anasayfa.aspx">Anasayfa<span></span></a></li>
            <li><a href="Hakkimizda.aspx" class="current">Hakkımızda<span>Kısaca Biz</span></a></li>
            <li><a href="Iletisim.aspx">İletişim<span>Görüşünüzü Belirtin</span></a></li>
            <li><a href="https://www.youtube.com/channel/UCR5UfhOg7aGIFoEIDYNEWsQ">Youtube<span>Youtube Kanalımız</span></a></li>
            <li><a href="Profil.aspx"><asp:Label ID="Label3" runat="server" Text="Profil" Font-Size="Medium" ForeColor="White"></asp:Label><span>Profiliniz</span></a></li>
        </ul>     	
    </div>
    
    <div id="templatemo_main">
    	<div id="templatemo_content">
        
        	
            
            <div class="content_box">
                <div class="image_wrapper image_fl"><img src="resimler/indir.png" width="160" height="250" /></div>
                <p><em>Vejdi Burak</em></p>
                <p>Web Programlama dersi projesi için hazırlanmıştır</p>
            	<p><a href="https://www.facebook.com/IscerraI" target=_blank><img src="Logolar/Facebook logo Png (98).png" width="25" height="25" />  <a href="https://twitter.com/scerra_" target=_blank><img src="Logolar/Twitter logo Png (12).png" width="25" height="25" /> </a> <a href="https://www.instagram.com/scerra_" target=_blank><img src="Logolar/İnstagram logo Png (2).png" width="25" height="25" /> </a></p>
            	
                <div class="cleaner_h20"></div>
                <div class="cleaner"></div>
            </div>
            <div class="content_box">
                <div class="image_wrapper image_fl"><img src="resimler/indir.png" width="160" height="250" /></div>
                <p><em>Yunus Emre AÇAR</em></p>
                <p>Web Programlama dersi projesi için hazırlanmıştır</p>
            	<p><a href="https://www.facebook.com/IscerraI" target=_blank><img src="Logolar/Facebook logo Png (98).png" width="25" height="25" />  <a href="https://twitter.com/scerra_" target=_blank><img src="Logolar/Twitter logo Png (12).png" width="25" height="25" /> </a> <a href="https://www.instagram.com/scerra_" target=_blank><img src="Logolar/İnstagram logo Png (2).png" width="25" height="25" /> </a></p>
            	
                <div class="cleaner_h20"></div>
                <div class="cleaner"></div>
            </div>
            
            
            
        </div> <!-- end of content -->
        
        <div id="templatemo_sidebar">
        
	        <div class="sidebar_box">
				<a href="Iletisim.aspx"><img src="resimler/templatemo_ssads.jpg" /></a>
            </div>  
        	
            <div class="sidebar_box">
            	<h4>Kategoriler</h4>
                <ul class="tmo_list">  
                    <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource2">
                    <ItemTemplate>
                    <li><a href=<%#Eval ("Kategori_Link") %>><%#Eval("Kategori_Adi")%></a></li>
                    </ItemTemplate>
                    </asp:Repeater>              
                </ul>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:baglan %>" 
                    SelectCommand="SELECT * FROM [Kategoriler]"></asp:SqlDataSource>
            </div>
            
        </div> 
    
    	<div class="cleaner"></div>
    </div> <!-- end of main -->

</div> <!-- end of wrapper -->

<div id="templatemo_footer_wrapper">
	<div id="templatemo_footer">
		<a href="Anasayfa.aspx" class="current">Anasayfa</a> | <a href="Hakkimizda.aspx">Hakkımızda</a> | <a href="Iletisim.aspx">İletişim</a> | <a href="https://www.youtube.com/channel/UCR5UfhOg7aGIFoEIDYNEWsQ">Youtube Kanalımız</a>       
        <div class="cleaner h10"></div>	   
         	
        Copyright © 2016 | <a href="Anasayfa.aspx">Her Telden Ses</a> | Tüm Hakları Saklıdır.
        
    	<div class="cleaner"></div>		
    </div>
</div>

</body>
</html>