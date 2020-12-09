<%@ Page Title="" Language="C#" MasterPageFile="~/UserZone/UserMaster.master" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="UserZone_ChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            background-color: #3399FF;
            margin:0px auto;
            border-radius:25px;
        }
        .tdstyle {
        color:white;
        font-size:24px;
        
        }
        .textstyle {
        width:200px;
        height:30px;
        border-radius:5px;
        font-size:20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHHeading" Runat="Server">
    Change Your Password
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHContent" Runat="Server">
    <div style="width:75%;height:auto;border-radius:25px;padding:25px;border:1px solid groove;margin:0px auto; ">
        <table align="center" class="auto-style1">
            <tr>
                <td class="tdstyle">&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="tdstyle">Enter Old Password</td>
                <td>
                    <asp:TextBox ID="TxtOldPassword" runat="server" TextMode="Password" CssClass="textstyle"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtOldPassword" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="tdstyle">Enter New Password</td>
                <td>
                    <asp:TextBox ID="TxtNewPassword" runat="server" TextMode="Password" CssClass="textstyle"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtNewPassword" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="tdstyle">Confirm Password</td>
                <td>
                    <asp:TextBox ID="TxtConfirmPassword" runat="server" TextMode="Password" CssClass="textstyle"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TxtNewPassword" ControlToValidate="TxtConfirmPassword" ErrorMessage="Password Doesn't Match" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="tdstyle">&nbsp;</td>
                <td>
                    <asp:Button ID="BtnSubmit" runat="server" Text="Change Password" CssClass="textstyle" OnClick="BtnSubmit_Click" />
                </td>
            </tr>
            <tr>
                <td class="tdstyle">&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>

