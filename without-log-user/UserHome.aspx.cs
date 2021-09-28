using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
       
    }
    protected void ImageButton1_Command(object sender, CommandEventArgs e)
    {
       
            Response.Redirect("~/without-log-user/Login.aspx?id=" + e.CommandArgument.ToString());
       
    }
    protected void ImageButton2_Command(object sender, CommandEventArgs e)
    {
       
            Response.Redirect("~/without-log-user/Login.aspx?id=" + e.CommandArgument.ToString());
        
    }
}