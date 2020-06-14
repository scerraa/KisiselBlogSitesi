<%@ Page Language="C#" AutoEventWireup="true" CodeFile="yonetim.aspx.cs" Inherits="admin_yonetim" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin paneli</title>
    <style type="text/css">
        
       
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table align=center>
            <tr>
                <td colspan="2" valign="top">
                    <img alt="" src="images/yonetim.png" style="width: 943px; height: 218px" /></td>
            </tr>
            <tr>
                <td valign="top" width="20%"><%Server.Execute("menu.html"); %>
                    </td>
                <td width="80%"  valign="top">
                    <table border="0" cellpadding="0" cellspacing="0" style="width: 80%">
                        <tr>
                            <td rowspan="3" style="width: 138px;">
                                &nbsp; &nbsp;&nbsp;</td>
                            <td background="rsm/sol/sol6.png" bgcolor="#ffffff" 
                                style="width: 19; height: 19px;">
                                <img border="0" height="19" src="rsm/sol/sol2.png" width="19" /></td>
                            <td bgcolor="#FFFFFF" style="height: 19px">
                                &nbsp;</td>
                            <td align="right" bgcolor="#ffffff" style="HEIGHT: 19px">
                                <img border="0" height="19" src="rsm/sol/sol3.png" width="19" /></td>
                        </tr>
                        <tr>
                            <td align="left" bgcolor="#ffffff" colspan="3" style="height: 58px" 
                                valign="top" width="100%">
                                <table cellpadding="10" width="100%">
                                    <tr>
                                        <td>
                                            <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td bgcolor="#ffffff" style="width: 19">
                                <img border="0" height="19" src="rsm/sol/sol5.png" width="19" /></td>
                            <td bgcolor="#FFFFFF">
                                &nbsp;</td>
                            <td align="right" bgcolor="#ffffff">
                                <img border="0" height="19" src="rsm/sol/sol4.png" width="19" /></td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
