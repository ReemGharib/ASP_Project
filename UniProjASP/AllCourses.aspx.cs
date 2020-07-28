using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UniProjASP
{
    public partial class AllCourses : System.Web.UI.Page
    {
       SqlConnection sq1 = new SqlConnection(@"Data Source=DESKTOP-QQ1R2CE\SQLEXPRESS;Initial Catalog=Universityproj;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)

        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Student.aspx");
        }
    }

    
}