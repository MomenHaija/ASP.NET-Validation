using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4
{
    public partial class Task : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            this.Validate();
            if (this.IsValid)
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
                    "swal('Good job!', 'You clicked Success button!', 'success')", true);
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
                "swal('Good job!', 'You clicked Success button!', 'success')", true);

        }
    }
}