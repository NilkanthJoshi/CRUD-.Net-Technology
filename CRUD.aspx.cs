using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Premium
{
    public partial class CRUD : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadRecord();
            }
        }

        SqlConnection conn = new SqlConnection("Data Source = DESKTOP-SU1FID3\\DESKTOP; database=demo;Integrated Security = True");

        protected void Button1_Click(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand comm = new SqlCommand("Insert into students values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "')", conn);
            comm.ExecuteNonQuery();
            conn.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script",
            "alert('Successfully Inserted');", true);
            LoadRecord();
            ClearData();
        }

        void ClearData()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";

        }

        void LoadRecord()
        {
            SqlCommand comm = new SqlCommand("select * from students", conn);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            conn.Open(); SqlCommand comm = new SqlCommand("update students set Name= '" + TextBox2.Text + "', Age = '" + TextBox3.Text + "' where ID ='" + TextBox1.Text + "' ", conn);
            comm.ExecuteNonQuery();
            conn.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Updated');", true);
            LoadRecord();
            ClearData();
        }


        protected void Button3_Click(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand comm = new SqlCommand("delete students where ID = '" + TextBox1.Text + "' ", conn);
            comm.ExecuteNonQuery();
            conn.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(),
            "script", "alert('Successfully Deleted');", true);
            LoadRecord();
            ClearData();

        }
    }

}
