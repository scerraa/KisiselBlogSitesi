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
using System.Web.UI.HtmlControls;

public partial class Youtube : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        int a = Convert.ToInt32(Label1.Text);
        a = a - 1;
        Label1.Text = a.ToString();
    }
}
