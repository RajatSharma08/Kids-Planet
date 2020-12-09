using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserZone_Feedback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnSubmit_Click(object sender, EventArgs e)
    {
        DatabaseManager dm = new DatabaseManager();
        string Query = "insert into Feedback(subject,message,givenby,posteddt) values('"+TxtFeedback.Text+"','"+Session["userid"]+"','"+DateTime.Now.ToString()+"')";
        bool x = dm.ExecuteInsertUpdateDelete(Query);
        if (x == true)
        {
            Response.Write("<script>alert('Feedback Sumitted')</script>");
        }
        else
        {
            Response.Write("<script>alert('Feedback Isn't Sumitted')</script>");
        }
        TxtSubject.Text = "";
        TxtFeedback.Text = "";
    }
}