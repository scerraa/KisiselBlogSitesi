<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Profil.aspx.cs" Inherits="Her_Telden_Ses_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Profil</title>
<meta name="keywords" content="city, blog, contact form, design, free templates, website templates, CSS, HTML" />
<meta name="description" content="City Blog Contact - free website template for everyone" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />

<link href="css/svwp_style.css" rel="stylesheet" type="text/css" />
<script src="js/jquery-1.3.2.min.js" type="text/javascript"></script>
<script src="js/jquery.slideViewerPro.1.0.js" type="text/javascript"></script>

<!-- Optional plugins  -->
<script src="js/jquery.timers.js" type="text/javascript"></script>

    <style type="text/css">
        .auto-style2 {
            width: 262px;
        }
        .auto-style3 {
            width: 263px;
        }
        .auto-style4 {
            height: 31px;
        }
        .auto-style5 {
            width: 263px;
            height: 31px;
        }
    </style>

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
            <li><a href="Iletisim.aspx">İletişim<span>Görüşünüzü Belirtin</span></a></li>
            <li><a href="https://www.youtube.com/channel/UCR5UfhOg7aGIFoEIDYNEWsQ">Youtube<span>Youtube Kanalımız</span></a></li>
            <li><a href="Profil.aspx" class="current"><asp:Label ID="Label3" runat="server" Text="Profil" Font-Size="Medium" ForeColor="White"></asp:Label><span>Profiliniz</span></a></li>
        </ul>    	
    </div>
    <div id="templatemo_main">
    	<div id="templatemo_content">
        
        <div class="cleaner h40">
         
        </div>
        
           
            <div id="contact_form">
                <asp:Panel ID="Panel1" runat="server">
    
                
               <table border="1">
                   <tr>
                       <td colspan="2" align="center"><b>Giriş Yap</b></td>
                     
                   </tr>
                   <tr>
                       <td>
                           <asp:Label ID="Label1" runat="server" Text="Kullanıcı Adı :"></asp:Label>
                       </td>
                       <td>
                           <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                       </td>
                   </tr>
                   <tr>
                       <td>
                           <asp:Label ID="Label2" runat="server" Text="Şifre :"></asp:Label>
                       </td>
                       <td>
                           <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                       </td>
                   </tr>
                   <tr><td colspan="2">
                       <asp:Panel ID="Panel4" runat="server">
                           <img src="images/hata.png" alt="" /> <a>Hata :</a> lütfen kullanıcı 
    adı ve şifrenizi kontol edin
                       </asp:Panel>
                       </td></tr>
                   <tr>
                       <td>Henüz bir hesabınız yok mu? Hemen üye olun</td>
                   </tr>

                   <tr>
                       <td colspan="2">
                           <div class="cleaner">

            <asp:Button ID="Button1"  BackColor="#121211" ForeColor="White"  runat="server" OnClick="Button1_Click" Text="Giriş Yap" Height="39px" Width="103px" />
            
            <asp:Button ID="Button2"  BackColor="#121211" ForeColor="White"  runat="server" OnClick="Button2_Click" Text="Üye Ol" Height="39px" Width="103px" />

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:baglan %>" SelectCommand="SELECT * FROM [Uyeler]"></asp:SqlDataSource>

            </div>	
                       </td>

                   </tr>
                       

               </table>
                    </asp:Panel>
      <asp:Panel ID="Panel2" runat="server">
          <table border="1">
                   <tr>
                       <td colspan="2" align="center"><b>Üye Ol</b></td>
                     
                   </tr>
                   <tr>
                       <td>
                           <asp:Label ID="Label4" runat="server" Text="Kullanıcı Adı :"></asp:Label>
                       </td>
                       <td class="auto-style2">
                           <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Boş Bırakılamaz" ForeColor="Red"></asp:RequiredFieldValidator>
                       </td>
                   </tr>
                   <tr>
                       <td>
                           <asp:Label ID="Label5" runat="server" Text="Şifre :"></asp:Label>
                       </td>
                       <td class="auto-style2">
                           <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox4" ErrorMessage="Boş Bırakılamaz" ForeColor="Red"></asp:RequiredFieldValidator>
                       </td>
                   </tr>
                   <tr>
                       <td>
                           <asp:Label ID="Label6" runat="server" Text="Adı :"></asp:Label>
                       </td>
                       <td class="auto-style2">
                           <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox5" ErrorMessage="Boş Bırakılamaz" ForeColor="Red"></asp:RequiredFieldValidator>
                       </td>
                   </tr>
                   <tr>
                       <td>
                           <asp:Label ID="Label7" runat="server" Text="Soyadı :"></asp:Label>
                       </td>
                       <td class="auto-style2">
                           <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox6" ErrorMessage="Boş Bırakılamaz" ForeColor="Red"></asp:RequiredFieldValidator>
                       </td>
                   </tr>
                  

                   <tr>
                       <td colspan="2">
                           <div class="cleaner">

            <asp:Button ID="Button3"  BackColor="#121211" ForeColor="White"  runat="server" OnClick="Button3_Click" Text="Üye Ol" Height="39px" Width="103px" />
            
            

                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:baglan %>" SelectCommand="SELECT * FROM [Uyeler]"></asp:SqlDataSource>

            </div>	
                       </td>

                   </tr>
                       

               </table>

      </asp:Panel>


                <asp:Panel ID="Panel3" runat="server">
          <table border="1">
                   <tr>
                       <td colspan="2" align="center"><b>Profil</b></td>
                     
                   </tr>
                   <tr>
                       <td>
                           <asp:Label ID="Label8" runat="server" Text="Kullanıcı Adı :"></asp:Label>
                       </td>
                       <td class="auto-style3">
                           <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox7" ErrorMessage="Boş Bırakılamaz" ForeColor="Red"></asp:RequiredFieldValidator>
                       </td>
                   </tr>
                   <tr>
                       <td>
                           <asp:Label ID="Label9" runat="server" Text="Şifre :"></asp:Label>
                       </td>
                       <td class="auto-style3">
                           <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox8" ErrorMessage="Boş Bırakılamaz" ForeColor="Red"></asp:RequiredFieldValidator>
                       </td>
                   </tr>
                   <tr>
                       <td>
                           <asp:Label ID="Label10" runat="server" Text="Adı :"></asp:Label>
                       </td>
                       <td class="auto-style3">
                           <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox9" ErrorMessage="Boş Bırakılamaz" ForeColor="Red"></asp:RequiredFieldValidator>
                       </td>
                   </tr>
                   <tr>
                       <td class="auto-style4">
                           <asp:Label ID="Label11" runat="server" Text="Soyadı :"></asp:Label>
                       </td>
                       <td class="auto-style5">
                           <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox10" ErrorMessage="Boş Bırakılamaz" ForeColor="Red"></asp:RequiredFieldValidator>
                       </td>
                   </tr>
                  

                   <tr>
                       <td colspan="2">
                           <div class="cleaner">

            <asp:Button ID="Button4"  BackColor="#121211" ForeColor="White"  runat="server" OnClick="Button4_Click" Text="Güncelle" Height="39px" Width="103px" />
            
            

                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:baglan %>" SelectCommand="SELECT * FROM [Uyeler]"></asp:SqlDataSource>

            </div>	
                       </td>

                   </tr>
                       

               </table>

      </asp:Panel>
				
				<!--    		
					<div class="cleaner h40"></div>
					
                   

                     <div class="cleaner_h10"></div>
                        
                         <div class="cleaner_h10"></div>
                        
                          <div class="cleaner_h10"></div>
                        
                        <div class="cleaner_h10"></div>
                    
						<div class="cleaner_h10"></div> -->
					
                    
                

            </div>
            
			        
        </div> <!-- end of content -->
        
        <div id="templatemo_sidebar">
        
	        <div class="sidebar_box">
				<a href="Iletisim.aspx"><img src="resimler/templatemo_ssads.jpg" /></a>
            </div>  
        	
            <div class="sidebar_box">
            	<h4>Kategoriler</h4>
                <ul class="tmo_list">  
                    <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource4">
                    <ItemTemplate>
                    <li><a href=<%#Eval ("Kategori_Link") %>><%#Eval("Kategori_Adi")%></a></li>
                    </ItemTemplate>
                    </asp:Repeater>              
                </ul>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
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

