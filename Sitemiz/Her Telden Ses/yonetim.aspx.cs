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

public partial class admin_yonetim : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["giris"] == null) { Response.Redirect("Admin.aspx"); }
        else
        {
            if (Request.QueryString["ad"] == null)
            {
                PlaceHolder1.Controls.Clear();


            }
            else
            {
                PlaceHolder1.Controls.Clear();
                PlaceHolder1.Controls.Add(LoadControl("moduller/" + Request.QueryString["ad"].ToString() + ".ascx"));

            }
        }
        
    }
}
