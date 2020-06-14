<%@ Page Language="C#" AutoEventWireup="true" CodeFile="iletisim.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>İletişim</title>
<meta name="keywords" content="city, blog, contact form, design, free templates, website templates, CSS, HTML" />
<meta name="description" content="City Blog Contact - free website template for everyone" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />

<link href="css/svwp_style.css" rel="stylesheet" type="text/css" />
<script src="js/jquery-1.3.2.min.js" type="text/javascript"></script>
<script src="js/jquery.slideViewerPro.1.0.js" type="text/javascript"></script>

<!-- Optional plugins  -->
<script src="js/jquery.timers.js" type="text/javascript"></script>

</head>
<body>

    <form id="form1" runat="server">

<div id="templatemo_wrapper">
     <div id="templatemo_header">
        <div id="site_title">
            <a href="Anasayfa.aspx">
                <img src="resimler/Logo.png" />
            </a>
        </div>
    </div>

	<div id="templatemo_menu">
        <ul>
            <li><a href="Anasayfa.aspx" >Anasayfa<span></span></a></li>
            <li><a href="Hakkimizda.aspx">Hakkımızda<span>Kısaca Biz</span></a></li>
            <li><a href="Iletisim.aspx" class="current">İletişim<span>Görüşünüzü Belirtin</span></a></li>
            <li><a href="https://www.youtube.com/channel/UCR5UfhOg7aGIFoEIDYNEWsQ">Youtube<span>Youtube Kanalımız</span></a></li>
            <li><a href="Profil.aspx"><asp:Label ID="Label3" runat="server" Text="Profil" Font-Size="Medium" ForeColor="White"></asp:Label><span>Profiliniz</span></a></li>
        </ul>    	
    </div>
    <div id="templatemo_main">
    	<div id="templatemo_content">
        
        <div class="cleaner h40">
           <p> Blogumuz henüz kuruldu. Şu anda hala beta sürümündeyiz. Hatalarımız ve eksiklerimiz bulunmaktadır. 
            İsteklerinizi ve gördüğünüz hataları bize bildirirseniz mutlu oluruz.</p>
        </div>
        
           
            <div id="contact_form">
            
				
						
					<div class="cleaner h40"></div>
					
                   

                         <div class="cleaner_h10"></div>
                        
                         <div class="cleaner_h10"></div>
                        
                          <div class="cleaner_h10"></div>
                        
                        <div class="cleaner_h10"></div>
                    
						<div class="cleaner_h10"></div>
					
                    
                

            </div>
            <div class="cleaner">

            <asp:Button ID="Button1"  BackColor="#121211" ForeColor="White"  runat="server" OnClick="Button1_Click" Text="Bize Yazın" Height="39px" Width="103px" />

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

    </form>

</body>
</html>
