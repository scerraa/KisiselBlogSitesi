<%@ Control Language="C#" AutoEventWireup="true" CodeFile="duyurular.ascx.cs" Inherits="moduller_duyurular" %>
<style type="text/css">
    .style1
    {
        width: 100%;
    }
    .style2
    {
        width: 102px;
    }
    .style3
    {
        width: 261px;
    }
</style>
<asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
<ItemTemplate>
<table>
<tr><td><b>Duyuru Başlığı:</b> <%#Eval ("Duyuru_Baslik") %></td></tr>
<tr><td><b>Duyuru İçeriği:</b> <%#Eval ("Duyuru_Icerik") %></td></tr>
<tr><td><b>---------------------------------------------</b></td></tr>
</table>
</ItemTemplate>
</asp:Repeater>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:baglan %>" 
    SelectCommand="SELECT * FROM [Duyurular]"></asp:SqlDataSource>
<p>
    DUYURU EKLEME İŞLEMİ</p>
<table class="style1">
    <tr>
        <td class="style2">
            <asp:Label ID="Label1" runat="server" Text="Duyuru Başlığı"></asp:Label>
        </td>
        <td class="style3">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            <asp:Label ID="Label2" runat="server" Text="Duyuru İçeriği"></asp:Label>
        </td>
        <td class="style3">
            <asp:TextBox ID="TextBox2" runat="server" Height="104px" TextMode="MultiLine" 
                Width="238px"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Kayıt" />
        </td>
        <td>
            &nbsp;</td>
    </tr>
</table>
<p>
    &nbsp;</p>
<p>
    DUYURU SİLME İŞLEMİ</p>
<p>
    <asp:DropDownList ID="DropDownList1" runat="server" 
        DataSourceID="SqlDataSource1" DataTextField="Duyuru_Baslik" DataValueField="id">
    </asp:DropDownList>
</p>
<p>
    <asp:Button ID="Button2" runat="server" Height="43px" onclick="Button2_Click" 
        Text="Sil" Width="72px" />
</p>

