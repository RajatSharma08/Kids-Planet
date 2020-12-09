using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnLogin_Click(object sender, EventArgs e)
    {
        DatabaseManager dm = new DatabaseManager();
        string epass = EncryptionManager.EncryptMyData(TxtPassword.Text);
        string mycmd = "select usertype from login where userid='" + TxtUserId.Text + "' and Passwd='" +epass+ "'";
        DataTable dt = new DataTable();
        dt = dm.ExecuteSlect(mycmd);
        if (dt.Rows.Count > 0)
        {
            mycmd = "update Login set lcount=lcount+1,lastlogin='" + DateTime.Now.ToShortDateString() + "'Where userid='" + TxtUserId.Text + "' and Passwd='" + epass + "'";
            dm.ExecuteInsertUpdateDelete(mycmd);
            string usertype = dt.Rows[0][0].ToString();
            if (usertype == "User")
            {
                Session["userid"] = TxtUserId.Text;
                Response.Redirect("UserZone/Home.aspx");
            }
            else if (usertype == "admin")
            {
                Session["adminid"] = TxtUserId.Text;
                Response.Redirect("AdminZone/HomeAdmin.aspx");
            
            }
           
        }
        else
        {
            Response.Write("<script>alert('Invalid User')</Script>");
        }
    }
}