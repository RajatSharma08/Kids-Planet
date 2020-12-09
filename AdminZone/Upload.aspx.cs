using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminZone_Upload : System.Web.UI.Page
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
        string mycmd = "insert into TblMaterial(category,filecaption,filename) values('" + DDLCategory.SelectedValue + "','" + TxtCaption.Text + "','" + FUUpload.FileName + "')";
        bool x = dm.ExecuteInsertUpdateDelete(mycmd);
        if (x == true)
        {
            GridView1.DataBind();
            if (DDLCategory.SelectedValue.ToString() == "audio")
                FUUpload.SaveAs(Server.MapPath("~/audio/" + FUUpload.FileName));
            else if (DDLCategory.SelectedValue.ToString() == "video")
                FUUpload.SaveAs(Server.MapPath("~/video/" + FUUpload.FileName));
            else if (DDLCategory.SelectedValue.ToString() == "game")
                FUUpload.SaveAs(Server.MapPath("~/game/" + FUUpload.FileName));
            else if (DDLCategory.SelectedValue.ToString() == "material")
                FUUpload.SaveAs(Server.MapPath("~/material/" + FUUpload.FileName));

        }
        else
        {
            Response.Write("<script>alert('File is not uploaded')</script>");
        }
    }
}