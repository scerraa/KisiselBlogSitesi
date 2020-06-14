<%@ Control Language="C#" AutoEventWireup="true" CodeFile="defter.ascx.cs" Inherits="admin_moduller_defter" %>
<asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
<ItemTemplate>
<table>
<tr><td><b>Yazanın Adı:</b><%#Eval("adi") %></td></tr>
<tr><td><b>Yazanın Mail Adresi:</b><%#Eval("email") %></td></tr>
<tr><td><b>Mesaj:</b><%#Eval("mesaj") %></td></tr>
<tr><td><b>---------------------------------------------</b></td></tr>
</table>
</ItemTemplate>
</asp:Repeater>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:baglan %>" 
    SelectCommand="SELECT * FROM [Mesajlar]"></asp:SqlDataSource>
<p>
    SİLME İŞLEMİ</p>
<p>
    <asp:DropDownList ID="DropDownList1" runat="server" 
        DataSourceID="SqlDataSource1" DataTextField="adi" DataValueField="id">
    </asp:DropDownList>
</p>
<asp:Button ID="Button1" runat="server" Height="47px" onclick="Button1_Click" 
    Text="Sil" Width="84px" />
<p>
    &nbsp;</p>

