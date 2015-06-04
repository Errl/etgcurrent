using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class businessfirst : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        LinkButton1.Visible = false;
        panel5.Visible = true;
        LinkButton2.Visible = true;
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        LinkButton1.Visible = true;
        panel5.Visible = false;
        LinkButton2.Visible = false;
    }
}