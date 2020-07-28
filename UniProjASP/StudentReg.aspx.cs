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
    public partial class Administrator : System.Web.UI.Page
    {
        SqlConnection sql1 = new SqlConnection(@"Data Source=DESKTOP-QQ1R2CE\SQLEXPRESS;Initial Catalog=Universityproj;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void createStdtxt_Click(object sender, EventArgs e)
        {
            sql1.Open();
            SqlDataAdapter s = new SqlDataAdapter("select Sid from Student ",sql1);
            DataTable d = new DataTable();
            s.Fill(d);
            int i = d.Rows.Count;
            int id = int.Parse(d.Rows[i - 1][0].ToString()) + 1;

            SqlCommand sc = new SqlCommand("Insert into Student values ('"+id+"','"+TextBox2.Text+"','"+TextBox3.Text+ "','" + TextBox4.Text + "','" + TextBox5.Text + "','"+TextBox6.Text+"','"+ddlDep.SelectedIndex+"','"+TextBox15.Text+"','"+TextBox16.Text+"')", sql1);
            sc.ExecuteNonQuery();
            sql1.Close();
            Response.Redirect("~/Login.aspx");
        //    displaySession();

           
        }
        void displaySession()
        {
            sql1.Open();
             
            sql1.Close();
        }

        protected void dropStdbtn_Click(object sender, EventArgs e)
        {
            sql1.Open();
            SqlCommand s1 = new SqlCommand("delete from Student where Sid='" + TextBox8.Text + "' and SFname='"+TextBox9.Text+"' ", sql1);
            s1.ExecuteNonQuery();
            sql1.Close();
            Response.Redirect("~/login.aspx");
          //  displayGridView();
        }

 
        public void displayGridView()
        {

        }

        protected void cancelbtn_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            ddlDep.SelectedIndex = 0;
        }
    }
}