using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPProject
{
    public partial class add : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("data source=LAPTOP-HL7HIS5U\\SQLEXPRESS;database=contactus;integrated security=SSPI");
           
            SqlDataAdapter sda1 = new SqlDataAdapter("SELECT * FROM add_review", con);
            DataTable dt = new DataTable();
            sda1.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();

            string id = Request.QueryString["id"];
            string sda = "SELECT * FROM review WHERE id='" + id + "'";
            con.Open();
            SqlCommand cmd = new SqlCommand(sda, con);
            SqlDataReader sdr = cmd.ExecuteReader();
            sdr.Read();
            photo.Text = sdr["img"].ToString();

            cname.Text = sdr["cname"].ToString();
            comment.Text = sdr["comment"].ToString();
            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
            // Creating Connection  
            SqlConnection con = new SqlConnection("data source=LAPTOP-HL7HIS5U\\SQLEXPRESS;database=contactus;integrated security=SSPI");
            string img = Request.Form["photo"];
            string name = Request.Form["cname"];
            string comment = Request.Form["comment"];
            string sql = "INSERT INTO add_review(client,comment,img)VALUES('" + name + "','" + comment + "','" + img+ "')";
            con.Open();
            SqlCommand cmd= new SqlCommand(sql, con);
            int status = cmd.ExecuteNonQuery();


        }
    }
}