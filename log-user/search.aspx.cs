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
    }
    protected void Button2_Command(object sender, CommandEventArgs e)
    {
        if (e.CommandName == "proceed")
        {

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            string insert = "insert into Cart(pid,image,pname,rimg,dprice,name) select pid,image,name,rimg,dprice,@name from Product where Product.pid=" + e.CommandArgument.ToString();
            SqlCommand cmd = new SqlCommand(insert, con);

            cmd.Parameters.AddWithValue("@name", Convert.ToString(Session["new"]));
            cmd.ExecuteNonQuery();
            con.Close();

            Response.Redirect("~/log-user/cart.aspx?id=" + e.CommandArgument.ToString());
        }   
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        
    }


    protected void Button3_Click(object sender, EventArgs e)
    {
        Session["ser"] = TextBox2.Text;
    }
}