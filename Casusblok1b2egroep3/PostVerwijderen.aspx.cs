﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Casusblok1b2egroep3
{
    public partial class PostVerwijderen : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           if (Request.Cookies.Get("UserRoleID").Value != "1")
                {
                Response.Redirect("Home.aspx");
                }
        }
    }
}