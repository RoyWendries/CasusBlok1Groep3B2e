using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Casusblok1b2egroep3
{
    public partial class NestedMasterPage1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonSearch(object sender, EventArgs e)
        {
            Response.Redirect("Zoeken.aspx?q=" + InpSearch.Text);
        }
    }
}