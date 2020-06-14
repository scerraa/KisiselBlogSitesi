using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Her_Telden_Ses_Default : System.Web.UI.Page
{

    int id;
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel4.Visible = false;
        Panel3.Visible = false;
        Panel2.Visible = false;
        if (Session["kullanici"] == null)
        {
            
        }
        else {
            Panel3.Visible = true;
            Panel1.Visible = false;
            Label3.Text = Session["kullanici"].ToString();
            TextBox7.Text = Session["kullanici"].ToString();
            TextBox8.Text = Session["sifre"].ToString();
            TextBox9.Text = Session["adi"].ToString();
            TextBox10.Text = Session["soyadi"].ToString(); 

        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string baglanti = ConfigurationManager.ConnectionStrings["baglan"].ConnectionString;
        SqlDataAdapter kontrol = new SqlDataAdapter("select * from Uyeler where k_adi='" + TextBox1.Text + "' and sifre='" + TextBox2.Text + "'", baglanti);
        DataTable s = new DataTable();
        kontrol.Fill(s);
        if (s.Rows.Count != 0)
        {
            id = Convert.ToInt32(s.Rows[0]["id"]);
            Session["kullanici"] = s.Rows[0]["k_adi"].ToString();
            Session["sifre"] = s.Rows[0]["sifre"].ToString();
            Session["adi"] = s.Rows[0]["adi"].ToString();
            Session["soyadi"] = s.Rows[0]["soyadi"].ToString();
            //Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "Başlık", "<script>alert('Giriş Başarılı');</script>");
            Response.Redirect("Anasayfa.aspx");
        }
        else
            Panel4.Visible = true;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = true;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
       /* String kadi = TextBox3.Text;
        String sifre = TextBox4.Text;
        String ad = TextBox5.Text;
        String soyad = TextBox6.Text;*/
        SqlDataAdapter ekle = new SqlDataAdapter("insert into Uyeler (k_adi,sifre,adi,soyadi) values ('" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "')", ConfigurationManager.ConnectionStrings["baglan"].ConnectionString);
        DataTable dt = new DataTable();
        ekle.Fill(dt);
        Session["kullanici"] = null;
        Response.Redirect("Profil.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        SqlDataAdapter guncelle = new SqlDataAdapter("update Uyeler set k_adi='" + TextBox7.Text + "',sifre='" + TextBox8.Text + "',adi='" + TextBox9.Text + "',soyadi='" + TextBox10.Text + "' where id='" + id + "'", ConfigurationManager.ConnectionStrings["baglan"].ConnectionString);
        DataTable dt = new DataTable();
        guncelle.Fill(dt);
        Session["kullanici"] = null;
        TextBox1.Text = id.ToString();
        Response.Redirect("Profil.aspx");
    }
}