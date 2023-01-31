using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPProject
{
    public partial class Delete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("data source=LAPTOP-HL7HIS5U\\SQLEXPRESS;database=contactus;integrated security=SSPI");

            string id = Request.QueryString["id"];
            string sda = "DELETE FROM contact WHERE id='" + id + "'";
            con.Open();
            SqlCommand cmd = new SqlCommand(sda, con);
            int status = cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("customer.aspx");
        }
    }
}