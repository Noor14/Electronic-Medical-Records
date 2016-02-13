using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
namespace EMR
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string FullName = string.Empty;
            string Hold = string.Empty;
            string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            SqlConnection conn = new SqlConnection(CS);
            string sql = "Select Count(*) From DoctorTable Where RegisterId = @RegiterId AND Password = @Password";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@RegiterId", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Password", TextBox2.Text);
            conn.Open();
            int Result = (int)cmd.ExecuteScalar();
            if (Result == 1)
            {
                SqlCommand cmdd = new SqlCommand("Select FullName From DoctorTable where RegisterId = '" + TextBox1.Text + "'", conn);
                SqlDataReader dr = cmdd.ExecuteReader();
                while (dr.Read())
                {
                    TextBox2.Text = dr["FullName"].ToString();
                }

                Server.Transfer("WebForm2.aspx");
                conn.Close();
            }
            else
            {
                loginlabel.Text = "username or password is wrong";
                conn.Close();
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("Select Count(*) From DoctorTable Where RegisterId = @RegisterId", con);
                cmd.Parameters.AddWithValue("@RegisterId", TextBox1.Text);
                con.Open();
                int Result = (int)cmd.ExecuteScalar();
                if (Result == 1)
                {
                    lblMessage1.Text = "Already Exist";
                    
                }
                else
                {
                    string sql = "Insert Into DoctorTable (RegisterId, FullName, ContactNo, CNIC, ClinicAddress, Password) VALUES (@RegisterId, @FullName, @ContactNo, @CNIC, @ClinicAddress, @Password)";
                    SqlCommand cmd2 = new SqlCommand(sql, con);
                    cmd2.Parameters.AddWithValue("@RegisterId", TextBox3.Text);
                    cmd2.Parameters.AddWithValue("@FullName", TextBox4.Text);
                    cmd2.Parameters.AddWithValue("@ContactNo", TextBox5.Text);
                    cmd2.Parameters.AddWithValue("@CNIC", TextBox6.Text);
                    cmd2.Parameters.AddWithValue("@Password", TextBox7.Text);
                    cmd2.Parameters.AddWithValue("@ClinicAddress", TextBox9.Text);
                    cmd2.ExecuteNonQuery();
                    Server.Transfer("WebForm2.aspx");
                }
            }
        }
    }
}