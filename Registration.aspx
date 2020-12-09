<%@ Page Title="" Language="C#" MasterPageFile="~/GeneralMaster.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        width: 75%;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="auto-style1">
    <tr>
        <td>&nbsp;</td>
        <td>
            <br />
            <br />
            <br />
            <br />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td colspan="2" style="font-family: 'book Antiqua'; font-size: x-large; font-weight: bold; color: #0000FF; text-align: center;">&nbsp;Registration Form</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td colspan="2" style="font-family: 'book Antiqua'; font-size: x-large; font-weight: bold; color: #0000FF; text-align: center;">
            <br />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>Enter Your Name</td>
        <td>
            <asp:TextBox ID="TxtName" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtName" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>Gender</td>
        <td>
            <asp:RadioButton ID="RdbMale" runat="server" GroupName="Gender" Text="Male" />
            <asp:RadioButton ID="RdbFemale" runat="server" GroupName="Gender" Text="Female" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>Enter Your DOB</td>
        <td>
            <asp:TextBox ID="TxtDOB" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtDOB" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>Enter Your Address</td>
        <td>
            <asp:TextBox ID="TxtAddress" runat="server" TextMode="MultiLine"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TxtAddress" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>Enter Your Email </td>
        <td>
            <asp:TextBox ID="TxtEmail" runat="server" TextMode="Email"></asp:TextBox>
        </td>
        <td>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TxtEmail" ErrorMessage="*" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td>Enter Your Mobile No</td>
        <td>
            <asp:TextBox ID="TxtMobileNo" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TxtMobileNo" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>Select Your Profile Picture</td>
        <td>
            <asp:FileUpload ID="FUProfilePicture" runat="server" />
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="FUProfilePicture" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>Password</td>
        <td>
            <asp:TextBox ID="TxtPassword" runat="server" TextMode="Password"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TxtPassword" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>Confirm Password</td>
        <td>
            <asp:TextBox ID="TxtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
        </td>
        <td>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TxtPassword" ControlToValidate="TxtConfirmPassword" ErrorMessage="*" ForeColor="Red"></asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td>Captcha Code</td>
        <td>
            <asp:Label ID="LblCaptcha" runat="server" Font-Strikeout="True" ForeColor="#2F2FFF"></asp:Label>
            <asp:ImageButton ID="ImageButton1" runat="server" Height="40px" ImageAlign="Middle" ImageUrl="~/images/synchronise_reload_refresh-128.png" Width="40px" OnClick="ImageButton1_Click" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>Enter Captcha Code</td>
        <td>
            <asp:TextBox ID="TxtCaptchaCode" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="BtnSubmit" runat="server" Text="Submit" OnClick="BtnSubmit_Click" />
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>

