using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminZone_ChangePassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnSubmit_Click(object sender, EventArgs e)
    {
        DatabaseManager dm = new DatabaseManager();
        string oldpassword = EncryptionManager.EncryptMyData(TxtOldPassword.Text);
        string newpassword = EncryptionManager.EncryptMyData(TxtNewPassword.Text);
        string Query = "update Login set Passwd='" + TxtNewPassword.Text + "' where userid='" + Session["adminid"] + "' and passwd='" + oldpassword + "'";
        bool x=dm.ExecuteInsertUpdateDelete(Query);
        if (x == true)
        {
            Response.Write("<script>alert('Password is Change Successfully')</script>");

        }
        else
        {
            Response.Write("<script>alert('Password is not Changed')</script>");
        }
    }
}