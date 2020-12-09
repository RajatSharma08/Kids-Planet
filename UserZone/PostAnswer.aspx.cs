using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserZone_PostAnswer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnSubmit_Click(object sender, EventArgs e)
    {
        DatabaseManager dm = new DatabaseManager();
        string Query = "insert into TblAnswer(qid,answer,answeredby,posteddt) values('" + Request.QueryString["qid"] + "','" + TxtAnswer.Text + "','" + Session["userid"] + "','" + DateTime.Now.ToShortDateString() + "')";
        bool x = dm.ExecuteInsertUpdateDelete(Query);
        if (x == true)
        {
            Response.Write("<script>alert('Answer Posted Successfully');window.location.href='PostQuestion.aspx';</script>");

        }
        else
        {
            Response.Write("<script>alert('Answer Isn't Posted');window.location.href='PostQuestion.aspx';</script>");
        
        }
    }
}