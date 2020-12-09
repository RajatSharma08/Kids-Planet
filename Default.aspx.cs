using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnEnquiry_Click(object sender, EventArgs e)
    {
        DatabaseManager db = new DatabaseManager();
        string cmd = "insert into TblEnquiry(uname,Emailid,Mobno,E_Msg,EDT) values('" + TxtName.Text + "','" + TxtEmail.Text + "','" + TxtMobNo.Text + "','" + TxtMsg.Text + "', '" + DateTime.Now.ToString() + "')";
        bool x = db.ExecuteInsertUpdateDelete(cmd);
        if (x == true)
        {
            MySmsSender mss = new MySmsSender();
            string msg = "Hello " + TxtName.Text + ",Thanks for enquiry. We will contact you shortly.Regrdads-Kids Planet";
            mss.SendMySMS(TxtMobNo.Text, msg);
            TxtName.Text = "";
            TxtEmail.Text = "";
            TxtMsg.Text = "";
            TxtMobNo.Text = "";

            Response.Write("<script>alert('Enquiry Successfull')</script>");
        }
        else
        {
            Response.Write("<script>alert('Enquiry not Successfull')</script>");
        }
    }
}