<%@ Page Title="" Language="C#" MasterPageFile="~/GeneralMaster.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
       #box {
       height:400px;
       width:80%;
       background-color:#ff6a00;
       border:5px double #ffd800;
       
       }
       h2 {
       color:blue;
       text-shadow:3px 2px 2px black;
       
       }
       #leftp {
       height:390px;
       width:40%;
       float:left;
       padding-top:5px;
       padding-bottom:5px;
       padding-right:5%;
       padding-left:5%;
       background-color:#d79c9c;

       }
       #right {
       height:390px;
       width:40%;
       float:left;
       padding-top:5px;
       padding-bottom:5px;
       padding-right:5%;
       padding-left:5%;
       background-color:#e8dda1;
       
       }
   </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center><div id="box">
        <h2>Contact Us</h2>
        <div id="leftp">
            <h2>Head Office</h2>
            Kapoorthala Aliganj Lucknow<br />
        </div>
        <div id="right">
            <h2>Google Map</h2>
            <iframe src="" height="300px" width="80%"
        </div>
    </div>
      </center>
</asp:Content>

