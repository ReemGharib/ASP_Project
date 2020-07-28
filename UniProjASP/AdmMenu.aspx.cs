using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UniProjASP
{
    public partial class AdmMenu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void stdRegistbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/StudentReg.aspx");
        }

        protected void instRegistbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/InstructorReg.aspx");
        }

        protected void stdCourseRegistbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/StdCourseReg.aspx");
        }

        protected void instCourseRegistbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("InstructorCourseReg.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }
    }
}