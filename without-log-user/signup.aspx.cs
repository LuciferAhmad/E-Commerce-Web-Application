using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Configuration;
public partial class signup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox4.Text = Convert.ToString(DropDownList1.SelectedItem.Value.ToString());
    }
    protected void TextBox6_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string checkuser = "select count (*) from user_details where email='" + TextBox2.Text + "'";
            SqlCommand pcom = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(pcom.ExecuteScalar().ToString());
            conn.Close();
            if (temp >0)
            {
                ScriptManager.RegisterClientScriptBlock(this.Page, this.GetType(), "MY SCRIPT1", @"alert('Please Enter Another Email This Is Already In Use');", true);
                TextBox2.Text = "";
            }
            else
            {

                Session["new"] = TextBox2.Text;

                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                con.Open();
                string insertquery = "insert into user_details(user_name,email,d,gender,city,password) values(@username,@email,@d,@gender,@city,@password)";
                SqlCommand com = new SqlCommand(insertquery, con);

                com.Parameters.AddWithValue("@username", TextBox1.Text);
                com.Parameters.AddWithValue("@email", TextBox2.Text);
                com.Parameters.AddWithValue("@d", TextBox3.Text);
                com.Parameters.AddWithValue("@gender", RadioButtonList1.SelectedItem.Value.ToString());
                com.Parameters.AddWithValue("@city", DropDownList1.SelectedItem.Value.ToString());
                com.Parameters.AddWithValue("@password", TextBox5.Text);
                com.ExecuteNonQuery();
                con.Close();
                Response.Write("login successful");
                Response.Redirect("~/log-user/LogUserHome.aspx");
            }
        }
        
    }
}