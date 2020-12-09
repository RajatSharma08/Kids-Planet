using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Registration : System.Web.UI.Page
{
    DatabaseManager dm = new DatabaseManager();
    static string capcode;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            capcode = CaptchaGenerator.GetCode();
            LblCaptcha.Text = capcode;
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        capcode = CaptchaGenerator.GetCode();
        LblCaptcha.Text = capcode;
    }
    protected void BtnSubmit_Click(object sender, EventArgs e)
    {
        if (capcode == TxtCaptchaCode.Text)
        {
            Response.Write("<script>alert('Do Ragistration')</script>");
            string gender = "", filename = "", epass = "";
            if (RdbMale.Checked == true)
                gender = "Male";
            if (RdbFemale.Checked == true)
                gender = "Female";
            epass = EncryptionManager.EncryptMyData(TxtPassword.Text);
            if (FUProfilePicture.HasFile == true)
                filename = FUProfilePicture.FileName;
            string Query1 = "insert into Registration values('"+TxtName.Text+"','"+gender+"','"+TxtDOB.Text+"','"+TxtAddress.Text+"','"+TxtEmail.Text+"','"+TxtMobileNo.Text+"','"+filename+"','"+epass+"','"+DateTime.Now.ToShortDateString()+"')";
            string Query2 = "insert into Login values('"+TxtEmail.Text+"','"+epass+"','User',1,0,'')";
            bool b = dm.ExecuteInsertUpdateDelete(Query1);
            if (b == true)
            {
                b = dm.ExecuteInsertUpdateDelete(Query2);
                if (b == true)
                {
                    FUProfilePicture.SaveAs(Server.MapPath("ProfilePic/"+filename));
                    string msg = "Hello " + TxtName.Text + ",Thanks for registration.Your user id is:" + TxtEmail.Text + "and Your Pssword is:" + TxtPassword + "Regards-Kids Planet";
                    MySmsSender ss = new MySmsSender();
                    ss.SendMySMS(TxtMobileNo.Text, msg);
                    Response.Write("<script>alert('Registration Successfully! ')</script>");
                }
                else
                {
                    Response.Write("<script>alert('Login Details are not saved ')</script>");
                }

            }
            else
            {
                Response.Write("<script>alert('Database Error')</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('Invalid Catcha Code')</script>");
        }
    }
}