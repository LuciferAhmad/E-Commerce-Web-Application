using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using System.Configuration;

public partial class log_user_wishlist : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);  
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button_continue_Click(object sender, EventArgs e)
    {
        try
        {
            if (Textuid.Text == Request.Cookies["username"].Value.ToString())
            {
                string s1 = Text_fullname.Text;
                string s2 = Text_addline1.Text;
                string s3 = Text_addline2.Text;
                string s4 = Text_city.Text;
                string s5 = Text_state.Text;
                string s6 = Textuid.Text;
                string s7 = DropDownList1.Text;
                long s8 = Convert.ToInt64(Text_phno.Text);
                string s9 = Text_email.Text;
                string s10 = Text_cardno.Text;
                if (s10.Length < 12)
                    throw new Exception();
                string q = "insert into orders values('" + s1 + "','" + s2 + "','" + s3 + "','" + s4 + "','" + s5 + "','" + s6 + "','" + s7 + "'," + s8 + ",'" + s9 + "')";
                SqlCommand com = new SqlCommand(q, con);
                com.ExecuteNonQuery();

                Response.Redirect("~/log-user/order.aspx");
            }
            else
            {

                Label2.Text = "Please Enter Your Current Uid";
            }
        }
        catch (Exception ex)
        {
            Label3.Text = "Atleast 12 Character";
        }
    }
    protected void Button_cancle_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/log-user/LogUserHome.aspx");
    }
    protected void Text_cardno_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Textuid_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Text_state_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Text_city_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Radio_credit_CheckedChanged(object sender, EventArgs e)
    {

    }
    protected void Radio_debit_CheckedChanged(object sender, EventArgs e)
    {

    }
}