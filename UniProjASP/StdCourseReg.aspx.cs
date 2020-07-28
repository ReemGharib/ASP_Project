using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UniProjASP

{
    public partial class StdCourseReg : System.Web.UI.Page
    {
        
        SqlConnection sqll = new SqlConnection(@"Data Source=DESKTOP-QQ1R2CE\SQLEXPRESS;Initial Catalog=Universityproj;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
           // String s = Session["us"].ToString();
            //TextBox1.Text= s;
        }

        protected void saveDetbtn_Click(object sender, EventArgs e)
        {
            sqll.Open();
            SqlCommand a=new SqlCommand("insert into StudentCourse values('"+TextBox1.Text+"','"+TextBox2.Text+"','"+TextBox7.Text+"','"+TextBox3.Text+"','"+TextBox4.Text+"','"+TextBox5.Text+"','"+TextBox6.Text+"','"+TextBox8.Text+"') ",sqll);
            a.ExecuteNonQuery();
            sqll.Close();
            //Response.Redirect("~/login.aspx");    
        }

        protected void cancelbtn_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
        }

       
            
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow grr = GridView1.SelectedRow;
            TextBox1.Text = grr.Cells[1].Text;
            TextBox2.Text = grr.Cells[2].Text;
            TextBox3.Text = grr.Cells[3].Text;
            TextBox4.Text = grr.Cells[4].Text;
            TextBox5.Text = grr.Cells[5].Text;
            TextBox6.Text = grr.Cells[6].Text;
        }

      
    }
}
