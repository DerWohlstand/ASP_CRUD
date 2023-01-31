using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPProject
{
    public partial class admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string name = Request.QueryString["name"];
            uname.Text = name;
            SqlConnection con = new SqlConnection("data source=LAPTOP-HL7HIS5U\\SQLEXPRESS;database=contactus;integrated security=SSPI");
            con.Open();
            SqlCommand sda = new SqlCommand("SELECT(SELECT COUNT(id)  FROM banner) as id, (SELECT COUNT(id) FROM services) as sid,(SELECT COUNT(id)  FROM projects)as pid,(SELECT COUNT(id) FROM blog)as bid,(SELECT COUNT(id)  FROM contact) as cid ", con);
            SqlDataReader sdr = sda.ExecuteReader();
            sdr.Read();
            label1.Text = sdr["id"].ToString();

            label2.Text = sdr["sid"].ToString();


            label3.Text = sdr["pid"].ToString();


            label4.Text = sdr["bid"].ToString();
            label5.Text = sdr["cid"].ToString();

            con.Close();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

    }
}