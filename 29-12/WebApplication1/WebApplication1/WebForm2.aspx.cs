﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Application["name"].ToString() != null)
            {
                lbname2.Text = Application["name"].ToString();
                Lbage.Text = Application["Age"].ToString();
            }
        }
    }
}