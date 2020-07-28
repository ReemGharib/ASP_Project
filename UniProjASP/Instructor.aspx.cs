using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UniProjASP
{
    public partial class Instructor : System.Web.UI.Page
    {
        SqlConnection s = new SqlConnection(@"Data Source=DESKTOP-QQ1R2CE\SQLEXPRESS;Initial Catalog=Universityproj;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/InstructorReg.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            s.Open();
            SqlCommand sa = new SqlCommand("insert into StudentCourse values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "' )", s);
            sa.ExecuteNonQuery();
            s.Close();

        }
    }
}