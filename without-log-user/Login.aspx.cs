using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


public partial class Default2 : System.Web.UI.Page
{
   
    protected void Page_Load(object sender, EventArgs e)
    {
      
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string checkuser = "select count(*)from user_details where email='" + TextBox1.Text + "'";
        SqlCommand com = new SqlCommand(checkuser, conn);
        int temp = Convert.ToInt32(com.ExecuteScalar().ToString().Replace(" ", ""));
        conn.Close();
        if (temp > 0)
        {
            conn.Open();
            string checkpasswordquery = "select password from user_details where email='" + TextBox1.Text + "' ";
            SqlCommand passcom = new SqlCommand(checkpasswordquery, conn);
            string password = passcom.ExecuteScalar().ToString().Replace(" ","");
            if (password == TextBox2.Text)
            {
                Session["new"] = TextBox1.Text;
                Response.Redirect("~/log-user/LogUserHome.aspx");
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this.Page, this.GetType(), "MY SCRIPT1", @"alert(' Incorrect Password');", true);
            }
        }
        else
        {
               ScriptManager.RegisterClientScriptBlock(this.Page, this.GetType(), "MY SCRIPT1", @"alert('Invalid Email Please Enter Another Email');", true);
        }
       
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}