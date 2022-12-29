using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class p1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["userCredentials"];
            if (cookie != null)
            {

                tbName.Text = cookie["username"];
                tbPassword.Text = cookie["password"];
            }

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (chRemember.Checked)
            {

                HttpCookie cookie = new HttpCookie("userCredentials");
                cookie["username"] = tbName.Text;
                cookie["password"] = tbPassword.Text;
                cookie.Expires = DateTime.Now.AddDays(10);
                Response.Cookies.Add(cookie);

            }
        }
    }
}