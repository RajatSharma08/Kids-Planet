using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserZone_PostQuestion : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            GridView1.DataBind();
        }

    }
    protected void BtnSubmit_Click(object sender, EventArgs e)
    {
        DatabaseManager dm = new DatabaseManager();
        string Query = "insert into TblQuestion(question,askedby,posteddt) values('" + TxtQuestion.Text + "','" + Session["userid"] + "','" + DateTime.Now.ToShortDateString() + "')";
        bool x = dm.ExecuteInsertUpdateDelete(Query);
        if (x == true)
        {
            GridView1.DataBind();
            Response.Write("<script>alert('Question Posted Successfully')</script>");

        }
        else
        {
            Response.Write("<script>alert('Question Isn't Posted Successfully')</script>");
        
        }
        TxtQuestion.Text = "";

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}