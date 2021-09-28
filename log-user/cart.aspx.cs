using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class cart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {
       
    }
    
    protected void Button1_Command(object sender, CommandEventArgs e)
    {
        if (e.CommandName == "delete")
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string check = "DELETE FROM Cart WHERE pid =" + e.CommandArgument.ToString();
            SqlCommand cmd = new SqlCommand(check, conn);
            cmd.ExecuteNonQuery();
            
            conn.Close();

            Response.Redirect("~/log-user/cart.aspx");

        }
    }
    protected void Button2_Command(object sender, CommandEventArgs e)
    {
        if (e.CommandName == "proceed")
        {
            
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string checkuser = "insert into buy (pid,name) values(@id,@name)";
            SqlCommand com = new SqlCommand(checkuser, conn);
            com.Parameters.AddWithValue("@id", Convert.ToInt32(Request.QueryString["id"]));
            com.Parameters.AddWithValue("@name", Convert.ToString(Session["new"]));
            conn.Close();
            Response.Redirect("~/log-user/buy.aspx?id=" + e.CommandArgument.ToString());
        }
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        
    }

    
}