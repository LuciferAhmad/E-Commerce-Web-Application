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
            
            string check = "DELETE FROM Wishlist WHERE pid =" + e.CommandArgument.ToString();
            SqlCommand cmd = new SqlCommand(check, conn);
            cmd.ExecuteNonQuery();
           
            conn.Close();

            Response.Redirect("~/log-user/wishlist.aspx");

        }
    }
    protected void Button2_Command1(object sender, CommandEventArgs e)
    {
        if (e.CommandName == "cart")
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
}