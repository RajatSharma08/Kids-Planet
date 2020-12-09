<%@ Page Title="" Language="C#" MasterPageFile="~/UserZone/UserMaster.master" AutoEventWireup="true" CodeFile="VideoGallery.aspx.cs" Inherits="UserZone_VideoGallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHHeading" Runat="Server">
    Play Video As Per Your Choice
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHContent" Runat="Server">
    <center>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" PageSize="1" ShowHeader="False">
        <Columns>
           <asp:TemplateField>
               <ItemTemplate>
                   <video width="500" height="500" controls="controls">
                       <source src="<%#string.Concat("../video/",Eval("filename")) %>" type="video/mp4" />
                   </video>
               </ItemTemplate>
           </asp:TemplateField>
        </Columns>
    </asp:GridView>
     </center>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [TblMaterial] WHERE ([category] = ?)">
        <SelectParameters>
            <asp:Parameter DefaultValue="video" Name="category" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

