<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Youtube.aspx.cs" Inherits="Youtube" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Youtube</title>
    <meta http-equiv="Refresh" content="10;url=Anasayfa.aspx" />
    <style type="text/css">
        .style1
        {
            font-size: x-large;
            text-align: center;
        }
        .style2
        {
            color: #FF0000;
            text-align: center;
        }
        .style3
        {
            color: #FF0000;
        }
        .style4
        {
            text-decoration: none;
        }
        .style5
        {
            color: #000000;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server" />
    <asp:Timer ID="Timer1" runat="server" Interval="1000" Enabled="true" 
        ontick="Timer1_Tick" />
    <div class="style1">
        <h1 class="style5">
            BU SAYFA BAKIM AÞAMASINDADIR. ÝLERLEYEN ZAMANLARDA SÝZLERLE BÝRLÝKTE OLACAKTIR.</h1>
        <p class="style5">
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
        </Triggers>
        
        <ContentTemplate>
        
            <asp:Label ID="Label1" runat="server" Text="10" 
                style="text-align: center; color: #FF0000"></asp:Label>
        
        </ContentTemplate>
    
    </asp:UpdatePanel>
        <p class="style5">
            SANÝYE SONRA ANA SAYFAYA YÖNLENDÝRÝLECEKSÝNÝZ.</p>
        <p class="style2">
            <a href="Anasayfa.aspx" class="style4"><span class="style3">BEKLEMEK ÝSTEMÝYORSANIZ TIKLAYINIZ.</span></a></p>
    </div>
    
    
    </form>
</body>
</html>
