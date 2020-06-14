<%@ Control Language="C#" AutoEventWireup="true" CodeFile="kategoriler.ascx.cs" Inherits="moduller_kategoriler" %>
<style type="text/css">
    .style1
    {
        width: 100%;
        height: 133px;
    }
    .style2
    {
        width: 142px;
    }
    .style3
    {
        width: 175px;
        text-align: center;
    }
    .style4
    {
        width: 175px;
        text-align: center;
        height: 32px;
    }
    .style5
    {
        width: 142px;
        height: 32px;
    }
    .style6
    {
        height: 32px;
    }
    .style7
    {
        width: 175px;
        text-align: center;
        height: 45px;
    }
    .style8
    {
        width: 142px;
        height: 45px;
    }
    .style9
    {
        height: 45px;
    }
</style>
KATEGORİLER
<asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
<ItemTemplate>
<table>
<tr><td><b>Kategori Adı:</b><%#Eval("Kategori_Adi") %></td></tr>
<tr><td><b>Kategori Linki:</b><%#Eval("Kategori_Link") %></td></tr>
<tr><td><b>---------------------------------------------</b></td></tr>
</table>
</ItemTemplate>
</asp:Repeater>
&nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:baglan %>" 
    SelectCommand="SELECT * FROM [Kategoriler]"></asp:SqlDataSource>
<p>
    KATEGORİ EKLEME İŞLEMİ</p>
<table class="style1">
    <tr>
        <td class="style4">
            <asp:Label ID="Label1" runat="server" Text="Kategori Adı"></asp:Label>
        </td>
        <td class="style5">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
        <td class="style6">
        </td>
    </tr>
    <tr>
        <td class="style7">
            <asp:Label ID="Label2" runat="server" Text="Kategoriye Verilecek Link"></asp:Label>
        </td>
        <td class="style8">
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
        <td class="style9">
        </td>
    </tr>
    <tr>
        <td class="style3">
            &nbsp;</td>
        <td class="style2">
            <asp:Button ID="Button1" runat="server" Height="39px" onclick="Button1_Click" 
                Text="Kayıt Et" Width="74px" />
        </td>
        <td>
            &nbsp;</td>
    </tr>
</table>

<p>
    KATEGORİ SİLME İŞLEMİ</p>
<asp:DropDownList ID="DropDownList1" runat="server" 
    DataSourceID="SqlDataSource1" DataTextField="Kategori_Adi" DataValueField="id">
</asp:DropDownList>
<p>
    &nbsp;</p>
<p>
    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Sil" 
        Height="43px" Width="69px" />
</p>


