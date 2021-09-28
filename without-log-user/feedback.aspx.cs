using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class without_log_user_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        con.Open();
        string insertquery = "insert into user_details(name,email,feed) values(@username,@email,@d)";
        SqlCommand com = new SqlCommand(insertquery, con);

        com.Parameters.AddWithValue("@username", TextBox1.Text);
        com.Parameters.AddWithValue("@email", TextBox2.Text);
        com.Parameters.AddWithValue("@d", TextBox3.Text);
        com.ExecuteNonQuery();
        ScriptManager.RegisterClientScriptBlock(this.Page, this.GetType(), "MY SCRIPT1", @"alert('Thank You For Your FeedBack');", true);
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        Response.Redirect("~/without-log-user/UserHome.aspx");
        con.Close();
    }
}