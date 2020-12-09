using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserZone_Testimonial : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnSubmit_Click(object sender, EventArgs e)
    {
        DatabaseManager dm = new DatabaseManager();
        string mycmd="insert into TblTestimonial(topic,testimonial,givenby,posteddt) values('"+TxtTopic.Text+"','"+TxtTestimonial.Text+"','"+Session["userid"]+"','"+DateTime.Now.ToShortDateString()+"')";
        bool x = dm.ExecuteInsertUpdateDelete(mycmd);
        if (x == true)
        {
            Response.Write("<script>alert('Testimonial is saved')</script>");
        }
        else
        {
            Response.Write("<script>alert('Dtatabase Error')</script>");
        }
        TxtTopic.Text = "";
        TxtTestimonial.Text = "";
    }
}