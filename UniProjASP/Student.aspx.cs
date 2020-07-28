using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UniProjASP
{
    public partial class Student : System.Web.UI.Page
    {
        SqlConnection s = new SqlConnection(@"Data Source =DESKTOP-QQ1R2CE\SQLEXPRESS; Initial Catalog = Universityproj; Integrated Security = True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void coursesbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/StdCourseReg.aspx");        
        }

        protected void marksbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Markss.aspx");
        }

        protected void creditsbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/credits");
        }

        protected void RegCourses_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/courses.aspx");
        }

        protected void AllCoursesbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AllCourses.aspx");
        }

        protected void creditsbtn_Click1(object sender, EventArgs e)
        {

        }
    }
}