using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //craeate new cookies
            HttpCookie cook = new HttpCookie("mylogin");
            cook.Values.Add("user1", "Ahamad");
            cook.Values.Add("Pass", "2021458");
            //cook.Expires = DateTime.Now;   //default
            cook.Expires = DateTime.Now.AddDays(3);
            Response.Cookies.Add(cook);

            HttpCookie cooki = new HttpCookie("mylogin");
            cooki.Expires = DateTime.Now.AddDays(-1);
            Response.Cookies.Add(cooki);
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (Request.Cookies["mylogin"] != null)
            {
                string user1 = Request.Cookies["mylogin"]["user1"];
                Response.Write(user1);
            }

        }

        protected void OK_Click(object sender, EventArgs e)
        {
            ViewState["name"] = tbname.Text;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            lbshowname.Text = "You'r name is:" + ViewState["name"].ToString();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            hdname.Value = txtname.Text;
            hdaddress.Value = txtaddress.Text;
        }

        protected void printdata_Click(object sender, EventArgs e)
        {
            Response.Write($"<h1 style=\"color:blue\">{hdname.Value}</h1>");
            Response.Write($"<h1 style=\"color:blue\">{hdaddress.Value}</h1>");
        }

        protected void txtname2_TextChanged(object sender, EventArgs e)
        {
            Application["name"] = txtname2.Text;
            Application["Age"] = txtAge.Text;
            Response.Redirect("WebForm2.aspx");
        }
    }
}