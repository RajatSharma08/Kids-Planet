<%@ Page Title="" Language="C#" MasterPageFile="~/UserZone/UserMaster.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="UserZone_Feedback" %>

<asp:Content ID="Content4" ContentPlaceHolderID="head" Runat="Server">
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
<asp:Content ID="Content5" ContentPlaceHolderID="CPHHeading" Runat="Server">
    Give your valuable feedback
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="CPHContent" Runat="Server">
    <div style="width:75%;height:auto;border-radius:25px;padding:25px;border:1px solid groove;margin:0px auto; ">
        <table align="center" class="auto-style1">
            <tr>
                <td class="tdstyle">&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="tdstyle">Enter Subject</td>
                <td>
                    <asp:TextBox ID="TxtSubject" runat="server" CssClass="textstyle"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtSubject" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="tdstyle">Enter Your Feedback</td>
                <td>
                    <asp:TextBox ID="TxtFeedback" runat="server" Height="100px" TextMode="MultiLine"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtFeedback" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="tdstyle">&nbsp;</td>
                <td>
                    <asp:Button ID="BtnSubmit" runat="server" Text="Submit" CssClass="textstyle" OnClick="BtnSubmit_Click" />
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

