<%@ Page Title="" Language="C#" MasterPageFile="~/AdminZone/Admin.master" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="AdminZone_ChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 75%;
            background-color: #CC99FF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="auto-style1">
        <tr>
            <td colspan="2" style="font-family: 'book Antiqua'; font-size: x-large; font-weight: bold; color: #FFFFCC; text-align: center">Change Your Password</td>
        </tr>
        <tr>
            <td style="font-family: 'book Antiqua'; font-size: 20px; color: #FFFFFF;">Enter Old Password</td>
            <td>
                <asp:TextBox ID="TxtOldPassword" runat="server" Height="30px" TextMode="Password" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="TxtOldPassword" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="font-family: 'book Antiqua'; font-size: 20px; color: #FFFFFF;">Enter New Password</td>
            <td>
                <asp:TextBox ID="TxtNewPassword" runat="server" Height="30px" TextMode="Password" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="TxtNewPassword"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="font-family: 'book Antiqua'; font-size: 20px; color: #FFFFFF;">Confirm Password</td>
            <td>
                <asp:TextBox ID="TxtConfirmPassword" runat="server" Height="30px" TextMode="Password" Width="200px"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="*" ForeColor="Red" ControlToCompare="TxtNewPassword" ControlToValidate="TxtConfirmPassword"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td style="font-family: 'book Antiqua'; font-size: 20px; color: #FFFFFF;">&nbsp;</td>
            <td>
                <asp:Button ID="BtnSubmit" runat="server" Height="30px" Text="Change Password" Width="200px" OnClick="BtnSubmit_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

