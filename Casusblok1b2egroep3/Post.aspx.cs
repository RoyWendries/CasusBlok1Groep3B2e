﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Casusblok1b2egroep3
{
    public partial class Post : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnComment_Click(object sender, EventArgs e)
        {
            String ID = Request.QueryString["ID"];
            Response.Redirect("~/MakeComment.aspx?PostID=" + ID);
        }

        protected void BtnReaction_Click(object sender, EventArgs e)
        {
            String ID = Request.QueryString["ID"];
            Response.Redirect("~/MakeReaction.aspx?PostID=" + ID);
        }
    }
}