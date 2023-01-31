using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPProject
{
    public partial class customer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Creating Connection  

            SqlConnection con = new SqlConnection("data source=LAPTOP-HL7HIS5U\\SQLEXPRESS;database=contactus;integrated security=SSPI");
            // Writing select query  

            SqlDataAdapter sdda = new SqlDataAdapter("SELECT * FROM contact", con);
            DataTable dt = new DataTable();
            sdda.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
           
        }
        
        protected void del_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("data source=LAPTOP-HL7HIS5U\\SQLEXPRESS;database=contactus;integrated security=SSPI");

            string id = Request.QueryString["id"];
            string sda = "DELETE FROM contact WHERE id='" + id + "'";
            con.Open();
            SqlCommand cmd = new SqlCommand(sda, con);
            int status = cmd.ExecuteNonQuery();
            con.Close();

        }

        protected void delete_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("data source=LAPTOP-HL7HIS5U\\SQLEXPRESS;database=contactus;integrated security=SSPI");

            string sda = "TRUNCATE TABLE contact";
            con.Open();
            SqlCommand cmd = new SqlCommand(sda, con);
            int status = cmd.ExecuteNonQuery();
            con.Close();

        }
    }
    }