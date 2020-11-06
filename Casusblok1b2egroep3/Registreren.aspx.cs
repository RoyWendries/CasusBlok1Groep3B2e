using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Casusblok1b2egroep3
{
    public partial class Registreren : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void CheckCheckBoxPrivacyPolicy(object o, ServerValidateEventArgs e)
        {
            e.IsValid = CheckBoxPrivacyPolicy.Checked;
        }

    }
}