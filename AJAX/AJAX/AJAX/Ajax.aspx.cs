using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AJAX
{
    public partial class Ajax : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Send_Click(object sender, EventArgs e)
        {
            SqlCommand command;
            Label2.Text += tbcomment.Text+"<br>";
            SqlConnection connection = new SqlConnection("data source=DESKTOP-B9B8CS7;database=taskday;Integrated security=SSPI");
            connection.Open();
            command = new SqlCommand($"insert into comment(comment) values('{tbcomment.Text}');", connection);
            command.ExecuteNonQuery();
            connection.Close();

            ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert",
               "swal('Good job!', 'Message added seccessfully ')", true);

        }
    }
}
