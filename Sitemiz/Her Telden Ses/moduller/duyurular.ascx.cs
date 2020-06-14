using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class moduller_duyurular : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlDataAdapter kayit = new SqlDataAdapter("insert into Duyurular (Duyuru_Baslik,Duyuru_Icerik) values ('" + TextBox1.Text + "','" + TextBox2.Text + "')", ConfigurationManager.ConnectionStrings["baglan"].ConnectionString);
        DataTable kay = new DataTable();
        kayit.Fill(kay);
        Response.Redirect("yonetim.aspx?ad=duyurular");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlDataAdapter sil = new SqlDataAdapter("DELETE FROM Duyurular WHERE id='" + DropDownList1.SelectedValue + "'", ConfigurationManager.ConnectionStrings["baglan"].ConnectionString);
        DataTable silmek = new DataTable();
        sil.Fill(silmek);
        Response.Redirect("yonetim.aspx?ad=duyurular");
    }
}
