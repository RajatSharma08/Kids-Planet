using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class UserZone_UserMaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userid"] != null)
        {
            DatabaseManager dm = new DatabaseManager();
            if (IsPostBack == false)
            {
                string Query = "select UName,ProfilePic from Registration where EmailId='" + Session["userid"] + "'";
                DataTable dt = dm.ExecuteSlect(Query);
                if (dt.Rows.Count > 0)
                {
                    UName.Text = dt.Rows[0][0].ToString();
                    string profilepic = dt.Rows[0][1].ToString();
                    if (profilepic != "")
                    {
                        UserPic.ImageUrl = "~/ProfilePic/" + profilepic;
                    }
                }
            }
        }
        else
        {
            Response.Redirect("~/Login.aspx");

        }
    }
    protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
    {

    }
}