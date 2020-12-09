<%@ Page Title="" Language="C#" MasterPageFile="~/GeneralMaster.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script>
        function Enquiry()
        {
            var dv = document.getElementById('box');
            var lnk1 = document.getElementById('lnk');
            var a = dv.style.display;
            if (a == 'none')
            {
                dv.style.display = "block";
                lnk1.style.background = "green";
            }
            else
            {
                dv.style.display = "none";
                lnk1.style.background = "red";
            }

        }

    </script>
    <style>
        #box {
        padding-left:25px;
        padding-right:25px;
        padding-bottom:25px;
        height:auto;
        width:250px;
        background:#b200ff;
        position:absolute;
        right:0px;
        top:150px;
        display:none;
        }
        .txt {
        height:40px;
        width:250px;
        color:#0dc5d8;
        font-weight:bold;
        }
        .btn {
        height:40px;
        width:250px;
        background-color:#9b9c07;
        color:white;
        
        }
        .txta {
         height:70px;
        width:250px;
        color:#0dc5d8;
        font-weight:bold;
        
        }
        #lnk {
        height:30px;
        width:80px;
        text-align:center;
        font-weight:bold;
        color:white;
        padding-top:10px;
        background:rgba(255,0,0,0.82);
        border-radius:5px 0px 5px 0px;
        position:absolute;
        right:0px;
        top:110px;
        text-decoration:none;
        
        }
        h2 {
        color:#9b9c07;
        font-family:Century;
        text-shadow:3px 3px 3px black;
        
        }
        h1 {
        color:blue;
        text-shadow:3px 3px 3px yellow;
        font-size:40px;
        font-family:Cooper Cooper black;
        font-style:italic;
        }
        b {
        color:black;
        font-size:25px;
        font-style:italic;
        }
        a {
        color:black;
        font-size:23px;
        font-style:italic;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
                                                          <h1>Introduction</h1>
       <b>In todays complex world,as the world flying under the umbrella of technology the development of children required full attention of the parents.
        the overall development of child depends an enviorment of his home.all the thing which children usage in their school,should be available at home so,that 
        he can enjoy in home learns likes at a school.</b> <br /><br />
           <a>kids planet for vkids is a global,nonprofit foundation dedicated to funand free learnig on the internet for children ages 3-8.kids planet offer free
        best in -class courseware in math ,english reading and building a community for parrent and educator to share inovations and insite inchildhood 
        education .kids planet designs and provides qualities courseware education to children arround the world this application 
        provide an effective means for the children at initial lavel of their acadmic life.the application will provide a various
         resourses to makew child pay attention(likes images,video,audioandeducation game etc.) and learn how to pronounce the world,
        how to write a what they means. the parrent/teacher take help of this site to teach any kind of thing(related to english,math)to their child/student with the 
        help of contain present on site in the form of audio,video,games etc.</a>
    </center>
    <div id="box">
        <h2>
        <center>Enquiry Form</center></h2>
        <asp:TextBox ID="TxtName" runat="server" placeholder="Enter Your Name...." CssClass="txt" required></asp:TextBox><br /><br />
        <asp:TextBox ID="TxtEmail" runat="server" TextMode="Email" placeholder="Enter Your Email..." CssClass="txt" required></asp:TextBox><br /><br />
        <asp:TextBox ID="TxtMobNo" runat="server" TextMode="Number" placeholder="Enter Your MobileNo..." CssClass="txt" required></asp:TextBox><br /><br />
        <asp:TextBox ID="TxtMsg" runat="server" TextMode="MultiLine" placeholder="Enter Your Message..." CssClass="txt" required></asp:TextBox><br /><br />
        <asp:Button ID="BtnEnquiry" runat="server" CssClass="btn" Text="Submit" OnClick="BtnEnquiry_Click"/>
    </div>
    <a href="#"id="lnk" onclick="Enquiry()">Enquiry</a>
</asp:Content>

