using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Data;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPProject
{
    public partial class projects : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection("data source=LAPTOP-HL7HIS5U\\SQLEXPRESS;database=contactus;integrated security=SSPI");

            SqlDataAdapter sda = new SqlDataAdapter("SELECT * FROM projects", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(@"C:\Users\AISHWARYA\Desktop\ASPProject\imgupload\" + FileUpload1.FileName);

            }
            else
            {
                Response.Redirect("WebForm1.aspx");
            }
            // Creating Connection  
            SqlConnection con = new SqlConnection("data source=LAPTOP-HL7HIS5U\\SQLEXPRESS;database=contactus;integrated security=SSPI");
            string img = FileUpload1.FileName;
            string heading = Request.Form["head"];
            string descp = Request.Form["desc"];



            // Writing insert query  
            string sql = "INSERT INTO projects(img,head,descp)VALUES('" + img + "','" + heading + "','" + descp + "')";
            con.Open();
            SqlCommand cmd = new SqlCommand(sql, con);
            int status = cmd.ExecuteNonQuery();

            con.Close();

        }
    }
}