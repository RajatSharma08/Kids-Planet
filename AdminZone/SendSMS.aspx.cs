using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminZone_SendSMS : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnSubmit_Click(object sender, EventArgs e)
    {
        MySmsSender mss = new MySmsSender();
        bool b = mss.SendMySMS(TxtMobNo.Text, TxtMsg.Text);
        if(b==true)
        {
            TxtMobNo.Text="";
            TxtMsg.Text="";
            Response.Write("<script>alert('SMS Sent Successfully')</script>");       
        }
        else
        {
             Response.Write("<script>alert('SMS Not Sent')</script>");
        
        }
    }
}