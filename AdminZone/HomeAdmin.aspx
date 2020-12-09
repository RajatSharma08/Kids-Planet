<%@ Page Title="" Language="C#" MasterPageFile="~/AdminZone/Admin.master" AutoEventWireup="true" CodeFile="HomeAdmin.aspx.cs" Inherits="AdminZone_HomeAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
      #box {
        height:500px;
        width:800px;
        background:white;
        box-shadow:3px 3px 30px black inset;
        }
        .row {
        height:250px;
        width:800px;
        }
        .col {
            height: 140px;
            width: 216px;
            float: left;
            background: #0ff;
            padding-top: 60px;
            color: white;
            font-size:28px;
            text-align:center;
            font-family:Century;
            text-shadow:3px 3px 3px black;
            border: 5px double black;
            margin: 20px;
            box-shadow: 3px 3px 30px black inset;
            -webkit-transition: background 2s, border 2s, border-radius 2s, color 2s;
        
        }
            .col:hover {
            background:rgba(176,25,5,0.87);
            border-radius:20px;
            border:5px dotted #58bbd5;
            -webkit-transition:background 2s, border 2s, border-radius 2s,color 2s;color:skyblue;
            
            }


            </style> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="box">
    <div class="row"> 
        <div class="col">Today's News</div>
       <a href="Testimonial.aspx"><div class="col">Testimonials</div></a> 
       <a href="StudyMaterial.aspx"><div class="col">Study Material</div></a> 
    </div>

     <div class="row"> 
       <a href="AudioGallery.aspx"><div class="col">Audio Gallery</div></a>
       <a href="VideoGallery.aspx"><div class="col">Video Gallery</div></a>
       <a href="Game.aspx"><div class="col">Gaming World</div></a>
    </div>

</div>
</asp:Content>

