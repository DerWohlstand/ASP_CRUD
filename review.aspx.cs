using System;
using System.Data.SqlClient;

using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPProject
{
    public partial class review : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (imgInp.HasFile)
            {
                imgInp.SaveAs(@"C:\Users\AISHWARYA\Desktop\ASPProject\imgupload\" + imgInp.FileName);

            }
            else
            {
                Response.Redirect("WebForm1.aspx");
            }
            // Creating Connection  
            SqlConnection con = new SqlConnection("data source=LAPTOP-HL7HIS5U\\SQLEXPRESS;database=contactus;integrated security=SSPI");
            string img = imgInp.FileName;
            string name = Request.Form["rname"];
            string comment = Request.Form["rcomment"];
            string sql = "INSERT INTO review(cname,comment,img)VALUES('" + name + "','" + comment + "','" + img + "')";
            con.Open();
          SqlCommand cmd = new SqlCommand(sql, con);
            int status = cmd.ExecuteNonQuery();
            con.Close();
        }
    }
  }