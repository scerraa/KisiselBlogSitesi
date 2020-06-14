<%@ Page Language="C#" AutoEventWireup="true" CodeFile="form.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style3
        {
            width: 566px;
        }
        .style4
        {
            width: 88px;
        }
        .style5
        {
            width: 233px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table cellpadding="0" cellspacing="0"     
    style="border: thin groove #C0C0C0; width:100%; ">
    <tr>
        <td align="left" width="11">
            &nbsp;</td>
        <td align="center" width="100%">
            <font style="color:#077BD4; font-size:20px; font-family:Trebuchet MS; font-weight:bold">İletişim Formu</font></td>
        <td align="right" width="11">
            &nbsp;</td>
    </tr>
    <tr>
        <td align="left" width="11">
            &nbsp;</td>
        <td align="center" 
            style="padding-top: 5px;" 
            width="100%">
            
            <table style="border: thin groove #C0C0C0; width: 495px; background-color: #f0f0f0;" 
    align="center">
                <tr>
                    <td class="style4">
                        &nbsp;</td>
                    <td class="style3" colspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style4">
                        <img src="resimler/info.gif" style="width: 25px; height: 25px" /></td>
                    <td align="left" class="style3" colspan="2">
                        <nobr>
                        <asp:TextBox ID="TextBox1" runat="server" Font-Italic="True" 
                            Font-Names="Arial" ForeColor="Black" MaxLength="20"></asp:TextBox>
                        
                        <font size="2px" color="gray"><i> (Adınız(*)</i></font></nobr><asp:RequiredFieldValidator 
                            ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" 
                            ErrorMessage="Boş Bırakılamaz"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td class="style4">
                        <img src="resimler/mail.gif" style="width: 25px; height: 25px" /></td>
                    <td align="left" class="style3" colspan="2">
                        <asp:TextBox ID="TextBox2" runat="server" Font-Italic="True" Font-Names="Arial" 
                            ForeColor="Black" MaxLength="20"></asp:TextBox>
                    <font size="2px" color="gray"><i> (E-Mail)<asp:RegularExpressionValidator 
                            ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" 
                            ErrorMessage="Hatalı E-Mail" 
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></i></font></td>
                </tr>
                <tr>
                    <td valign="top" class="style4">
                        <img src="resimler/mesaj.gif" style="width: 25px; height: 25px" /></td>
                    <td valign="middle" class="style3" colspan="2">
                        
                        <asp:TextBox ID="TextBox4" runat="server" Height="176px" TextMode="MultiLine" 
                            Width="249px" Font-Italic="True" Font-Names="Arial" ForeColor="Black"></asp:TextBox>                        
                        <nobr>
                        <font color="gray" size="2px"><i>(Mesaj(*))</i></font></nobr></td>
                </tr>
                <tr>
                    <td class="style4">
                        &nbsp;</td>
                    <td align="left" class="style3" colspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style4">
                        &nbsp;</td>
                    <td class="style5">
                        <asp:Button ID="Button1" runat="server" Text="Gönder" ValidationGroup="a" OnClick="Button1_Click" 
                            />
                    </td>
                    <td>
                        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                            Text="Geri git" />
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        &nbsp;</td>
                    <td class="style3" colspan="2">
                        <nobr>
                        
                        &nbsp;
                        </nobr>
                    </td>
                </tr>
            </table>
<br />

        </td>
        <td align="right" width="11">
            &nbsp;</td>
    </tr>
</table>
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:baglan %>" SelectCommand="SELECT * FROM [Mesajlar]"></asp:SqlDataSource>
    </form>
</body>
</html>
