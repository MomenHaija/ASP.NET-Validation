using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace WebApplication1
{
    public partial class Task2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
                Label1.Text = DateTime.Now.ToString();
                if (Request.Cookies["TimeColor"] != null)
                {
                    string cookies = Request.Cookies["TimeColor"]["Color"];
                    Label1.Style["Color"] = cookies;
                }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            HttpCookie cookie = new HttpCookie("TimeColor");
            cookie["Color"] = DropDownList1.SelectedValue;
            cookie.Expires = DateTime.Now.AddMonths(10);
            Response.Cookies.Add(cookie);
        }
    }
}