using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Main_page : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("Find_cat.aspx");
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("About_us.aspx");
    }
}