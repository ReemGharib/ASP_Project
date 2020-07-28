using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UniProjASP
{
    public partial class InstructorCourseReg : System.Web.UI.Page
    {
        SqlConnection sq = new SqlConnection(@"Data Source=DESKTOP-QQ1R2CE\SQLEXPRESS;Initial Catalog=Universityproj;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Cancel_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            ddlDepInCourse.SelectedIndex = 0;
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            sq.Open();
            SqlCommand s = new SqlCommand("insert into InstructorCoursee values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + ddlDepInCourse.SelectedIndex + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "')", sq);
            s.ExecuteNonQuery();
            sq.Close();
            Response.Redirect("~/login.aspx");

        }
    }
}