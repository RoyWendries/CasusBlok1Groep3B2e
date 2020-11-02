using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Casusblok1b2egroep3
{
    public partial class Inloggen : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            HttpCookie cookie = new HttpCookie("UserID");
            cookie.Value = GridView1.Rows[0].Cells[0].Text;
            Response.Cookies.Add(cookie);
            Response.Redirect("Home.aspx");
        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {

        }
    }
}