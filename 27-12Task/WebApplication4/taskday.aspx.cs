using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;

namespace WebApplication4
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
           

        }

        protected void send_Click(object sender, EventArgs e)
        {
            
                Label2.Text += tbcomment.Text;
                SqlConnection connection = new SqlConnection("data source=DESKTOP-B9B8CS7\\SQLEXPRESS;database=comment;Integrated security=SSPI");
                connection.Open();
                SqlCommand command = new SqlCommand($"insert into comment values('{tbcomment.Text}');", connection);
                command.ExecuteNonQuery();
                connection.Close();
                
            
        }
    }
}