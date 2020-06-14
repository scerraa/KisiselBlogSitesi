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
public partial class admin_giris : System.Web.UI.Page
{
    string baglanti = ConfigurationManager.ConnectionStrings["baglan"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        if (Session["kullanici"] == null)
        {
            Label1.Text = "Lütfen Giriş Yapınız!!!";
        }
        else
        {
            Response.Redirect("yonetim.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlDataAdapter kontrol = new SqlDataAdapter("select * from Adminler where Kullanici_adi='" + TextBox1.Text + "' and sifre='" + TextBox2.Text + "'", baglanti);
        DataTable s = new DataTable();
        kontrol.Fill(s);
        if (s.Rows.Count != 0)
        {
            Session["giris"] = s.Rows[0]["Kullanici_adi"].ToString();
            Response.Redirect("yonetim.aspx");
        }
        else {

            Panel1.Visible = true;
            TextBox1.Text = "";
            TextBox2.Text = "";
        }
    }
}
