﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPProject
{
    public partial class update4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("data source=LAPTOP-HL7HIS5U\\SQLEXPRESS;database=contactus;integrated security=SSPI");
            string id = Request.QueryString["id"];
            string sda = "SELECT * FROM blog WHERE id='" + id + "'";
            con.Open();
            SqlCommand cmd = new SqlCommand(sda, con);
            SqlDataReader sdr = cmd.ExecuteReader();
            sdr.Read();
            head.Text = sdr["head"].ToString();
            desc.Text = sdr["descp"].ToString();
            con.Close();
            Response.Redirect("blog.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("data source=LAPTOP-HL7HIS5U\\SQLEXPRESS;database=contactus;integrated security=SSPI");
            string id = Request.QueryString["id"];
            string img = FileUpload1.FileName;
            string heading = Request.Form["head"];
            string descp = Request.Form["desc"];
            // Writing update query  
            string sql = "UPDATE blog SET img='" + img + "',head='" + heading + "',descp='" + descp + "' WHERE id='" + id + "'";
            con.Open();
            SqlCommand cmd = new SqlCommand(sql, con);
            int status = cmd.ExecuteNonQuery();

        }
    }
}