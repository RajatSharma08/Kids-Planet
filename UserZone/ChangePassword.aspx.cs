using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserZone_ChangePassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnSubmit_Click(object sender, EventArgs e)
    {
        DatabaseManager dm = new DatabaseManager();
        string oldpassword = EncryptionManager.EncryptMyData(TxtOldPassword.Text);
        string newpassword = EncryptionManager.EncryptMyData(TxtNewPassword.Text);
        string Query = "update Login set Passwd='" + newpassword + "' where userid='" + Session["userid"] + "' and Passwd='" + oldpassword + "'";
        bool x = dm.ExecuteInsertUpdateDelete(Query);
        if (x == true)
        {
            Response.Write("<script>alert('Password Change Successfully')</script>");
        }
        else
        {
            Response.Write("<script>alert('Password Isn't Changed')</script>");
        }
    }
}