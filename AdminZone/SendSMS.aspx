<%@ Page Title="" Language="C#" MasterPageFile="~/AdminZone/Admin.master" AutoEventWireup="true" CodeFile="SendSMS.aspx.cs" Inherits="AdminZone_SendSMS" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        #box {
        height:auto;
        width:300px;
        border:5px double skyblue;
        padding:25px;
        
        }
        .btn {
        height:40px;
        width:250px;
        border:none;
        color:white;
        font-weight:bold;
        background:skyblue; 
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"><br /><br />
    <center>
        <h2>Send SMS</h2>
        <div id="box">
            <asp:TextBox ID="TxtMobNo" runat="server" TextMode="Number" Height="40px" Width="250px" placeholder="Enter Your Mobile No...."></asp:TextBox><br /><br />
            <asp:TextBox ID="TxtMsg" runat="server" TextMode="MultiLine" Height="70px" Width="250px" placeholder="Enter Your Message....."></asp:TextBox><br /><br />
            <asp:Button ID="BtnSubmit" runat="server" CssClass="btn" Text="Send SMS" OnClick="BtnSubmit_Click" />
        </div>
    </center>
</asp:Content>

