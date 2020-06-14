<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Anasayfa.aspx.cs" Inherits="Her_Telden_Ses_Default" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Anasayfa</title>
<meta name="keywords" content="Her, Telden, Ses, Her Telden Ses, Asp.net, C#, Web Site, Grafik, Yazılım, Ders Anlatım" />
<meta name="description" content="Sitemizin temel amacı 'Web Site' Tasarım ve yazılımını başlangıç düzeyden üst düzeye çıkarmaktır." />
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
            <li><a href="Anasayfa.aspx" class="current">Anasayfa<span></span></a></li>
            <li><a href="Hakkimizda.aspx">Hakkımızda<span>Kısaca Biz</span></a></li>
            <li><a href="Iletisim.aspx">İletişim<span>Görüşünüzü Belirtin</span></a></li>
            <li><a href="https://www.youtube.com/channel/UCR5UfhOg7aGIFoEIDYNEWsQ">Youtube<span>Youtube Kanalımız</span></a></li>
            <li><a href="Profil.aspx"><asp:Label ID="Label3" runat="server" Text="Profil" Font-Size="Medium" ForeColor="White"></asp:Label><span>Profiliniz</span></a></li>
        </ul>    	
    </div>
    
    <div id="templatemo_main">
    	<div id="templatemo_content">
        
        	<div id="templatemo_slider">
                <div id="featuredslideshow">
                    <ul> 
                        <li><img width="580" height="300" alt="Ders İçerikli Videolar" src="resimler/01.jpg" /></li> 
                        <li><img width="580" height="300" alt="Videolara Ek Yazılı Anlatımlar" src="resimler/02.jpg" /></li> 
                        <li><img width="580" height="300" alt="Web Site Hazırlama" src="resimler/03.jpg" /></li> 
                        <li><img width="580" height="300" alt="Grafik Tasarım Hazırlama" src="images/slideshow/05.jpg" /></li>
                    </ul> 
                </div>
                <script type="text/javascript">
                    $("div#featuredslideshow").slideViewerPro({
                        thumbs: 4,
                        thumbsPercentReduction: 15,
                        galBorderWidth: 0,
                        galBorderColor: "#666",
                        thumbsTopMargin: 10,
                        thumbsRightMargin: 10,
                        thumbsBorderWidth: 1,
                        thumbsActiveBorderColor: "#000",
                        thumbsActiveBorderOpacity: 0.8,
                        thumbsBorderOpacity: 0,
                        buttonsTextColor: "#707070",
                        autoslide: true,
                        typo: true
                    });
                </script>
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
            <div class="sidebar_box">
            <h4>Duyurular</h4>
                <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                <table><tr style="color:Black">
                <td><b><%#Eval ("Duyuru_Baslik") %></b></td>
                </tr>
                <tr>
                <td><%#Eval("Duyuru_Icerik")%></td>
                </tr>
                </table>
                </ItemTemplate>
                </asp:Repeater>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:baglan %>" 
                        SelectCommand="SELECT * FROM [Duyurular]"></asp:SqlDataSource>
            </div>  
        	
            
        </div>
    
    	<div class="cleaner">
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                ConnectionString="<%$ ConnectionStrings:baglan %>" 
                SelectCommand="SELECT * FROM [Kayan_Resimler]"></asp:SqlDataSource>
            </div>
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
