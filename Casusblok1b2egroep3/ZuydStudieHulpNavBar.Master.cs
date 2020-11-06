using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Casusblok1b2egroep3
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
protected void SignOff_Click(object sender, EventArgs e)
        {
            Response.Cookies["UserID"].Expires = DateTime.Now.AddDays(-1);
            Response.Redirect("Inloggen.aspx");
        }
    }
}