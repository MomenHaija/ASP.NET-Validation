using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4
{
    public partial class Ajax : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnOk_Click(object sender, EventArgs e)
        {
            string Name=tbname.Text;
            lbname.Text ="Hello"+ Name; 
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
           
                lbtimer.Text = DateTime.Now.ToString() + " ";
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {


            System.Threading.Thread.Sleep(2000);
            int c = Convert.ToInt32(num1.Text);
            int b = Convert.ToInt32(num2.Text);

            Label8.Text = "Multiple: " + Convert.ToString(c * b);
            Label9.Text = "add: " + Convert.ToString(c + b);
            Label10.Text = "Sup: " + Convert.ToString(c - b);


        }
    }
}