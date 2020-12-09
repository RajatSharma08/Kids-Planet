<%@ Page Title="" Language="C#" MasterPageFile="~/UserZone/UserMaster.master" AutoEventWireup="true" CodeFile="MyProfile.aspx.cs" Inherits="UserZone_MyProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .trstyle {
        color:white;
        font-size:20px;
        
        }
        .auto-style2 {
            width: 100%;
            background-color:#13a0bf;
        }
         .trstyle {
        color:white;
        font-size:20px;
        
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHHeading" Runat="Server">
    Manage Your Profile
    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHContent" Runat="Server">
    <table align="center" class="auto-style2">
        <tr>
            <td class="trstyle">Name</td>
            <td class="trstyle">
                <asp:TextBox ID="TxtName" runat="server"></asp:TextBox>
            </td>
            <td class="trstyle">Email Id</td>
            <td class="trstyle">
                <asp:Label ID="LblEmailAddress" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="trstyle">Gender</td>
            <td class="trstyle">
                <asp:RadioButton ID="RdbMale" runat="server" GroupName="Gender" Text="Male" />
                <asp:RadioButton ID="RdbFemale" runat="server" GroupName="Gender" Text="Female" />
            </td>
            <td class="trstyle">Mobile No</td>
            <td class="trstyle">
                <asp:TextBox ID="TxtMobileNo" runat="server" TextMode="Number"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="trstyle">Date Of Birth</td>
            <td class="trstyle">
                <asp:TextBox ID="TxtDOB" runat="server"></asp:TextBox>
            </td>
            <td class="trstyle">Profile Pic</td>
            <td class="trstyle" rowspan="4">
                <asp:Image ID="ImgUserPic" runat="server" Height="100px" Width="100px" />
            </td>
        </tr>
        <tr>
            <td class="trstyle">Address</td>
            <td class="trstyle">
                <asp:TextBox ID="TxtAddress" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td class="trstyle">&nbsp;</td>
        </tr>
        <tr>
            <td class="trstyle">&nbsp;</td>
            <td class="trstyle">&nbsp;</td>
            <td class="trstyle">&nbsp;</td>

        </tr>
        <tr>
            <td class="trstyle">&nbsp;</td>
            <td class="trstyle">&nbsp;</td>
            <td class="trstyle">&nbsp;</td>

        </tr>
        <tr>
            <td class="trstyle">&nbsp;</td>
            <td class="trstyle">&nbsp;</td>
            <td class="trstyle">
                <asp:FileUpload ID="FUProfilePic" runat="server" />
            </td>
            <td class="trstyle">&nbsp;</td>
        </tr>
             
        <tr>
            <td class="trstyle">&nbsp;</td>
            <td class="trstyle">&nbsp;</td>
            <td class="trstyle">
                &nbsp;</td>
            <td class="trstyle">&nbsp;</td>
        </tr>
             
        <tr>
            <td class="trstyle"></td>
            <td class="trstyle"></td>
            <td class="trstyle">Registration Date</td>
            <td class="trstyle">
                <asp:Label ID="LblRegdt" runat="server"></asp:Label>
            </td>
        </tr>
             
        <tr>
            <td class="trstyle">&nbsp;</td>
            <td class="trstyle">&nbsp;</td>
            <td class="trstyle">&nbsp;</td>
            <td class="trstyle">&nbsp;</td>
        </tr>
             
        <tr>
            <td class="trstyle">&nbsp;</td>
            <td class="trstyle">
                <asp:Button ID="BtnEdit" runat="server" OnClick="BtnEdit_Click" Text="Edit" />
            </td>
            <td class="trstyle">
                <asp:Button ID="BtnUpdate" runat="server" Text="Update" OnClick="BtnUpdate_Click" />
            </td>
            <td class="trstyle">&nbsp;</td>
        </tr>
             
        <tr>
            <td class="trstyle">&nbsp;</td>
            <td class="trstyle">
                &nbsp;</td>
            <td class="trstyle">
                &nbsp;</td>
            <td class="trstyle">&nbsp;</td>
        </tr>
             
    </table>
</asp:Content>

