using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Threading.Tasks;
namespace UniProjASP
{
    public partial class login : System.Web.UI.Page
    {
        SqlConnection sql = new SqlConnection(@"Data Source =DESKTOP-QQ1R2CE\SQLEXPRESS; Initial Catalog = Universityproj; Integrated Security = True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void loginbtn_Click(object sender, EventArgs e)
        {
            sql.Open();
            SqlDataAdapter Sa = new SqlDataAdapter("select count(*) from Student where Sid='"+Usernametxt.Text+"' and Spassword='"+Passwordtxt.Text+"' ",sql );
            DataTable d1 = new DataTable();
            Sa.Fill(d1);
          

            SqlDataAdapter Ia = new SqlDataAdapter("select count(*) from Instructor where Iid='" + Usernametxt.Text + "' and Ipassword='" + Passwordtxt.Text + "' ", sql);
            DataTable d2 = new DataTable();
            Ia.Fill(d2);

            SqlDataAdapter Aa = new SqlDataAdapter("select count(*) from Administrator where Aid='" + Usernametxt.Text + "' and Apassword='" + Passwordtxt.Text + "' ", sql);
            DataTable d3 = new DataTable();
            Aa.Fill(d3);

            if (d1.Rows[0][0].ToString() == "1")
            {
                Session.Add("us", Usernametxt.Text);
                Response.Redirect("~/Student.aspx");
            }
            if (d2.Rows[0][0].ToString() == "1")
                Response.Redirect("~/Instructor.aspx");
            if (d3.Rows[0][0].ToString() == "1")
                Response.Redirect("~/AdmMenu.aspx");

            sql.Close();
        }

        protected void Exitbtn_Click(object sender, EventArgs e)
        {
            //this.Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/StudentReg.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/login.aspx");
        }
    }
}