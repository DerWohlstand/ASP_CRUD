using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPProject
{
    public partial class update : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection("data source=LAPTOP-HL7HIS5U\\SQLEXPRESS;database=contactus;integrated security=SSPI");

            string id = Request.QueryString["id"];
            string sda = "SELECT * FROM contact WHERE id='" + id + "'";
            con.Open();
            SqlCommand cmd = new SqlCommand(sda, con);
            SqlDataReader sdr = cmd.ExecuteReader();
            sdr.Read();
            UsernameId.Text=sdr["fname"].ToString();
            EmailId.Text = sdr["email"].ToString();
            ContactId.Text = sdr["phone"].ToString();
            msg.Text = sdr["msg"].ToString();
            con.Close();
        }

        protected void ButtonId_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection("data source=LAPTOP-HL7HIS5U\\SQLEXPRESS;database=contactus;integrated security=SSPI");

            string id = Request.QueryString["id"];
            string name = Request.Form["UsernameId"];
            string email = Request.Form["EmailId"];
            string phone = Request.Form["ContactId"];
            string msg = Request.Form["msg"];
            // Writing update query  
            string sql = "UPDATE contact SET fname='"+name+ "',email='" + email + "',phone='" + phone + "',msg='" + msg + "' WHERE id='"+id+"'";
            con.Open();
            SqlCommand cmd = new SqlCommand(sql, con);
            int status = cmd.ExecuteNonQuery();
            Response.Redirect("customer.aspx");


        }
    }
}