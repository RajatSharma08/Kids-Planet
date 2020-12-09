<%@ Page Title="" Language="C#" MasterPageFile="~/AdminZone/Admin.master" AutoEventWireup="true" CodeFile="UserMgmt.aspx.cs" Inherits="AdminZone_UserMgmt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="overflow-x:scroll; width:800px;">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="EmailId" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Width="100%" PageSize="5" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:BoundField DataField="UName" HeaderText="Name" SortExpression="UName" />
            <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
            <asp:BoundField DataField="DOB" HeaderText="Date Of Birth " SortExpression="DOB" />
            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
            <asp:BoundField DataField="EmailId" HeaderText="EmailId" ReadOnly="True" SortExpression="EmailId" />
            <asp:BoundField DataField="MobileNo" HeaderText="Mobile No." SortExpression="MobileNo" />
            <asp:ImageField DataImageUrlField="ProfilePic" DataImageUrlFormatString="~/ProfilePic/{0}" HeaderText="Profile Pic" ControlStyle-Height="100px" ControlStyle-Width="100px">
<ControlStyle Height="100px" Width="100px"></ControlStyle>
            </asp:ImageField>
            <asp:BoundField DataField="Regdt" HeaderText="Reg. Dt" SortExpression="Regdt" />
            <asp:HyperLinkField DataNavigateUrlFields="EmailId" DataNavigateUrlFormatString="DeleteUser.aspx?EmailId={0}" HeaderText="Delete" Text="Delete" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Registration]"></asp:SqlDataSource>
            </div>
</asp:Content>

