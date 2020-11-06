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
            if (DropDownList1.SelectedValue != "") {
                HttpCookie cookie = new HttpCookie("UserID");
                cookie.Value = DropDownList1.SelectedValue;
                Response.Cookies.Add(cookie);
                Response.Redirect("Home.aspx");
            }
            else
            {
                LabelFalseLogin.Text = "Logingegevens zijn onjuist.";
            }
        }
    }
}