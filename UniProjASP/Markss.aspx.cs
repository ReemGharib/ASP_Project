﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UniProjASP
{
    public partial class Markss : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String a = Session["us"].ToString();
            Label1.Text = a;
        }
    }
}