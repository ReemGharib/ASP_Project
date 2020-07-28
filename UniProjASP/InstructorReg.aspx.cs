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
    public partial class InstructorReg : System.Web.UI.Page
    {
        SqlConnection sql2 = new SqlConnection(@"Data Source=DESKTOP-QQ1R2CE\SQLEXPRESS;Initial Catalog=Universityproj;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void savebtn_Click(object sender, EventArgs e)
        {
            sql2.Open();
            SqlDataAdapter a = new SqlDataAdapter("select Iid from Instructor", sql2);
            DataTable dt = new DataTable();
            a.Fill(dt);
            int i = dt.Rows.Count;
            int id = int.Parse(dt.Rows[i - 1][0].ToString()) + 1;
            SqlCommand sI = new SqlCommand("insert into Instructor values('" + id + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','"+TextBox5.Text+"','"+ddlDepIns.SelectedIndex+"')", sql2);
            sI.ExecuteNonQuery();
            sql2.Close();
            Response.Redirect("~/Login.aspx");
            //displayGridView();
        }

        protected void deleteInsbtn_Click(object sender, EventArgs e)
        {
            sql2.Open();
            SqlCommand dInst = new SqlCommand("delete from Instructor where Iid='" + TextBox1.Text + "' , IFname='" + TextBox2.Text + "',ILname='"+TextBox3.Text+"',phone='"+TextBox4.Text+"',Password='"+TextBox5.Text+"' and Major='"+ddlDepIns.SelectedIndex+"' ", sql2);
            dInst.ExecuteNonQuery();
            sql2.Close();

        }

        protected void cancelbtn_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            ddlDepIns.SelectedIndex = 0;
        }
    }
}