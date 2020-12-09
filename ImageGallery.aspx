<%@ Page Title="" Language="C#" MasterPageFile="~/GeneralMaster.master" AutoEventWireup="true" CodeFile="ImageGallery.aspx.cs" Inherits="ImageGallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script>
        function NextPrev()
        {
            var dv1 = document.getElementById("box");
            var dv2 = document.getElementById("box1");
            var lnk = document.getElementById("lnk");
            var a = dv1.style.display;
            var b = dv2.style.display;
            if (a == "block" && b == "none") {
                dv1.style.display = "none";
                dv2.style.display = "block";
                lnk1.style.background = "green";
                lnk1.innerHTML = "Next";

            }
            else
            {
                dv1.style.display = "block";
                dv2.style.display = "none";
                lnk1.style.background = "red";
                lnk1.innerHTML = "previous";
            }

        }
    </script>
    <style>
        #box {
        height:600px;
        width:700px;
        margin:0px auto;
        background:white;
        
        }
        #box1 {
        height:600px;
        width:700px;
        margin:0px auto;
        background:gray;  
        display:none;
        }
        .row {
        height:200px;
        width:700px;
        
        }
        .col {
        height:160px;
        width:310px;
        float:left;
        border:5px double black;
        margin:15px;
        }
        .img {
        height:160px;
        width:310px;
        }
        #lnk {
        padding:10px;
        background-color:black;
        color:white;
        font-weight:bold;
        position:relative;
        left:650px;
        margin-bottom:25px;
        }
        a {
        text-decoration:none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="box">
        <div class="row">
            <div class="col"><img src="#" class="img"/></div>
            <div class="col"><img src="#" class="img"/></div>
        </div>
         <div class="row">
            <div class="col"><img src="#" class="img"/></div>
            <div class="col"><img src="#" class="img"/></div>
        </div>
         <div class="row">
            <div class="col"><img src="#"  class="img"/></div>
            <div class="col"><img src="#"  class="img"/></div>
        </div>

    </div>
     <div id="box1">
        <div class="row">
            <div class="col"><img src="#" class="img"/></div>
            <div class="col"><img src="#" class="img"/></div>
        </div>
         <div class="row">
            <div class="col"><img src="#" class="img"/></div>
            <div class="col"><img src="#" class="img"/></div>
        </div>
         <div class="row">
            <div class="col"><img src="#"  class="img"/></div>
            <div class="col"><img src="#"  class="img"/></div>
        </div>

    </div>
    <br /> <br />
    <a href="#" id="lnk" onclick="NextPrev()">Next</a>
    <br /> <br />
</asp:Content>

