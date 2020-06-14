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

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click1(object sender, EventArgs e)
    {

        
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
            SqlDataAdapter kayit = new SqlDataAdapter("insert into mesajlar(adi,email,mesaj) Values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox4.Text + "')", ConfigurationManager.ConnectionStrings["baglan"].ConnectionString);
            DataTable vt = new DataTable();
            kayit.Fill(vt);
            Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "Başlık", "<script>alert('Mesajınız başarıyla iletilmiştir. Değerli yorumunuz için teşekkür ederiz :) Geri git butonuna basarak sitemizde gezinmeye devam edebilirsiniz.');</script>");
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("iletisim.aspx");
    }
}