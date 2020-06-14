<%@ Control Language="C#" AutoEventWireup="true" CodeFile="yoneticiler.ascx.cs" Inherits="moduller_yonetici" %>
<style type="text/css">
    .style1
    {
        width: 100%;
    }
    .style2
    {
        width: 159px;
    }
    .style3
    {
        width: 159px;
        height: 23px;
    }
    .style4
    {
        height: 23px;
    }
</style>
<table class="style1">
    <tr>
        <td colspan="2">
            <asp:DropDownList ID="DropDownList1" runat="server" 
                DataSourceID="SqlDataSource1" DataTextField="Kullanici_Adi" DataValueField="id">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:Button ID="Button2" runat="server" Text="Yönetici Sil" 
                onclick="Button2_Click" Height="40px" Width="114px" />
        </td>
    </tr>
    <tr>
        <td colspan="2">
            YÖNETİCİ EKLEÖNETİCİ EKLE</td>
    </tr>
    <tr>
        <td class="style2">
            Yönetici Adı</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style2">
            Şifre</td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style3">
            Şifre tekrar</td>
        <td class="style4">
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" Text="Kaydet" onclick="Button1_Click" />
        </td>
    </tr>
</table>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:baglan %>" 
    SelectCommand="SELECT * FROM [Adminler]"></asp:SqlDataSource>
<asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
<ItemTemplate>
<table>
<tr><td>Kulanıcı Adı: <%#Eval ("Kullanici_Adi") %></td></tr>
<tr><td>Şifre: <%#Eval ("Sifre") %></td></tr>
<tr><td><b>---------------------------------------------</b></td></tr>
</table>
</ItemTemplate>
</asp:Repeater>

