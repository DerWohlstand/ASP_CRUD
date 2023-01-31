using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPProject
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Creating Connection  
            SqlConnection con = new SqlConnection("data source=LAPTOP-HL7HIS5U\\SQLEXPRESS;database=contactus;integrated security=SSPI");
            // Writing select query  
            SqlDataAdapter sda = new SqlDataAdapter("SELECT * FROM banner", con);
            SqlDataAdapter sda1 = new SqlDataAdapter("SELECT * FROM services", con);
            SqlDataAdapter sda2 = new SqlDataAdapter("SELECT * FROM projects", con);
            SqlDataAdapter sda3 = new SqlDataAdapter("SELECT * FROM blog", con);
            SqlDataAdapter sda4 = new SqlDataAdapter("SELECT * FROM add_review", con);



            DataTable dt = new DataTable();
            DataTable dt1 = new DataTable();
            DataTable dt2 = new DataTable();
            DataTable dt3 = new DataTable();
            DataTable dt4 = new DataTable();



            sda.Fill(dt);
            sda1.Fill(dt1);
            sda2.Fill(dt2);
            sda3.Fill(dt3);
            sda4.Fill(dt4);



            Repeater1.DataSource = dt;
            Repeater1.DataBind();

            Repeater2.DataSource = dt1;
            Repeater2.DataBind();

            Repeater3.DataSource = dt2;
            Repeater3.DataBind();


            Repeater4.DataSource = dt3;
            Repeater4.DataBind();


            Repeater5.DataSource = dt4;
            Repeater5.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection("data source=LAPTOP-HL7HIS5U\\SQLEXPRESS;database=contactus;integrated security=SSPI");
            string heading = Request.Form["email"];
            string descp = Request.Form["pwd"];



            SqlCommand sql = new SqlCommand("SELECT * FROM login WHERE email='"+heading+"' and pwd='"+descp+"'", con);
            con.Open();
            SqlDataReader sdr = sql.ExecuteReader();
            bool abc=sdr.Read();
            if(abc!=false)
            {
                Response.Redirect("admin.aspx?name="+heading+"");
            }
            else
            {
                Response.Write("<script>alert('Wrong')</script>");

            }
            con.Close();


        }

        protected void submit_Click(object sender, EventArgs e)
        {

            SqlConnection con = null;
            try
            {
                // Creating Connection  
                con = new SqlConnection("data source=LAPTOP-HL7HIS5U\\SQLEXPRESS;database=contactus;integrated security=SSPI");
                // Writing insert query  
                string emaill = Request.Form["emaill"];
                string uname = Request.Form["uname"];
                string msg = Request.Form["msg"];
                string phone = Request.Form["phone"];



                string query = "insert into contact(fname,email,phone,msg)values('" + uname + "','" + emaill + "','" + phone + "','" + msg + "')";
                SqlCommand sc = new SqlCommand(query, con);
                // Opening connection  
                con.Open();
                // Executing query  
                int status = sc.ExecuteNonQuery();
                if(status==1)
                {
                    Response.Write("<script>alert('Check Your Email')</script>");

                    try
                    {
                        MailMessage message = new MailMessage();
                        SmtpClient smtp = new SmtpClient();
                        message.From = new MailAddress("aishwaryajawalekar6452@gmail.com");
                        message.To.Add(new MailAddress( emaill));
                        message.Subject = "Test";
                        message.IsBodyHtml = true; //to make message body as html  
                        message.Body = "We'll Answer You shortly" +
                            "" +
                            " ";
                        smtp.Port = 587;
                        smtp.Host = "smtp.gmail.com"; //for gmail host  
                        smtp.EnableSsl = true;
                        smtp.UseDefaultCredentials = true;
                        smtp.Credentials = new NetworkCredential("aishwaryajawalekar6452@gmail.com", "yvkfrogoegfhxtqw");
                        smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
                        smtp.Send(message);
                    }

                    catch (Exception ex)
                    {
                        throw ex;
                    }



                    Console.ReadLine();

                }

            }
            catch (Exception ex)
            {
                Console.WriteLine("OOPs, something went wrong." + ex);
            }
            // Closing the connection  
            finally
            {
                con.Close();
            }

        }
    }
}