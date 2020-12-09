using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class UserZone_MyProfile : System.Web.UI.Page
{
    DatabaseManager dm = new DatabaseManager();
    static string gender = "", filename = "";
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            DisplayProfile();
            DisableControls();
        }

    }
    void DisplayProfile()
    {
        string Query = "select * from Registration where EmailId='" + Session["userid"] + "'";
        dt = dm.ExecuteSlect(Query);
        if (dt.Rows.Count > 0)
        {
            TxtName.Text = dt.Rows[0][0].ToString();
            gender = dt.Rows[0][1].ToString();
            if (gender == "Male")
            {
                RdbMale.Checked = true;
            }
            if (gender == "Female")
            {
                RdbFemale.Checked = true;
            }
            TxtDOB.Text = dt.Rows[0][2].ToString();
            TxtAddress.Text = dt.Rows[0][3].ToString();
            LblEmailAddress.Text = dt.Rows[0][4].ToString();
            TxtMobileNo.Text = dt.Rows[0][5].ToString();
            filename = dt.Rows[0][6].ToString();
            ImgUserPic.ImageUrl = "~/ProfilePic/" + filename;
            LblRegdt.Text = dt.Rows[0][8].ToString();
        }
    }
    void DisableControls()
    {
        BtnEdit.Visible = true;
        BtnUpdate.Visible = false;
        FUProfilePic.Visible = false;
        TxtName.Enabled = false;
        TxtDOB.Enabled = false;
        TxtAddress.Enabled = false;
        TxtMobileNo.Enabled = false;

    }
    void EnableControls()
    {
        BtnEdit.Visible = false;
        BtnUpdate.Visible = true;
        FUProfilePic.Visible = true;
        TxtName.Enabled = true;
        TxtDOB.Enabled = true;
        TxtAddress.Enabled = true;
        TxtMobileNo.Enabled = true;

    }

    protected void BtnEdit_Click(object sender, EventArgs e)
    {
        EnableControls();
    }
    protected void BtnUpdate_Click(object sender, EventArgs e)
    {
        if (RdbMale.Checked)
            gender = "Male";
        if (RdbFemale.Checked)
            gender = "Female";
        if (FUProfilePic.HasFile == true)
            filename = FUProfilePic.FileName;
        string Query = "update Registration set UName='" + TxtName.Text + "',gender='" + gender + "',DOB='" + TxtDOB + "',Address='" + TxtAddress + "',MobileNo='" + TxtMobileNo + "',ProfilePic='"+filename+"' where EmailId='"+Session["userid"]+"'";
        bool x = dm.ExecuteInsertUpdateDelete(Query);
        if (x == true)
        {
            if (FUProfilePic.HasFile == true)
                FUProfilePic.SaveAs(Server.MapPath("~/ProfilePic/" + FUProfilePic.FileName));
            DisplayProfile();
            DisableControls();
            Response.Write("<script>alert('Your Prifile is Updated')</script>");
        }
        else 
        {
            DisplayProfile();
            DisableControls();
            Response.Write("<script>alert('Your Prifile is not Updated')</script>");
            
        }

    }
}