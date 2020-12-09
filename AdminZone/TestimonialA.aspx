<%@ Page Title="" Language="C#" MasterPageFile="~/AdminZone/Admin.master" AutoEventWireup="true" CodeFile="TestimonialA.aspx.cs" Inherits="AdminZone_Testimonial" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="ID" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Width="100%">
    <AlternatingRowStyle BackColor="#CCCCCC" />
    <Columns>
        <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
        <asp:BoundField DataField="topic" HeaderText="topic" SortExpression="topic" />
        <asp:BoundField DataField="testimonial" HeaderText="testimonial" SortExpression="testimonial" />
        <asp:BoundField DataField="givenby" HeaderText="givenby" SortExpression="givenby" />
        <asp:BoundField DataField="posteddt" HeaderText="posteddt" SortExpression="posteddt" />
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
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [TblTestimonial] WHERE [ID] = ? AND (([topic] = ?) OR ([topic] IS NULL AND ? IS NULL)) AND (([testimonial] = ?) OR ([testimonial] IS NULL AND ? IS NULL)) AND (([givenby] = ?) OR ([givenby] IS NULL AND ? IS NULL)) AND (([posteddt] = ?) OR ([posteddt] IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO [TblTestimonial] ([ID], [topic], [testimonial], [givenby], [posteddt]) VALUES (?, ?, ?, ?, ?)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [TblTestimonial]" UpdateCommand="UPDATE [TblTestimonial] SET [topic] = ?, [testimonial] = ?, [givenby] = ?, [posteddt] = ? WHERE [ID] = ? AND (([topic] = ?) OR ([topic] IS NULL AND ? IS NULL)) AND (([testimonial] = ?) OR ([testimonial] IS NULL AND ? IS NULL)) AND (([givenby] = ?) OR ([givenby] IS NULL AND ? IS NULL)) AND (([posteddt] = ?) OR ([posteddt] IS NULL AND ? IS NULL))">
    <DeleteParameters>
        <asp:Parameter Name="original_ID" Type="Int32" />
        <asp:Parameter Name="original_topic" Type="String" />
        <asp:Parameter Name="original_topic" Type="String" />
        <asp:Parameter Name="original_testimonial" Type="String" />
        <asp:Parameter Name="original_testimonial" Type="String" />
        <asp:Parameter Name="original_givenby" Type="String" />
        <asp:Parameter Name="original_givenby" Type="String" />
        <asp:Parameter Name="original_posteddt" Type="String" />
        <asp:Parameter Name="original_posteddt" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="ID" Type="Int32" />
        <asp:Parameter Name="topic" Type="String" />
        <asp:Parameter Name="testimonial" Type="String" />
        <asp:Parameter Name="givenby" Type="String" />
        <asp:Parameter Name="posteddt" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="topic" Type="String" />
        <asp:Parameter Name="testimonial" Type="String" />
        <asp:Parameter Name="givenby" Type="String" />
        <asp:Parameter Name="posteddt" Type="String" />
        <asp:Parameter Name="original_ID" Type="Int32" />
        <asp:Parameter Name="original_topic" Type="String" />
        <asp:Parameter Name="original_topic" Type="String" />
        <asp:Parameter Name="original_testimonial" Type="String" />
        <asp:Parameter Name="original_testimonial" Type="String" />
        <asp:Parameter Name="original_givenby" Type="String" />
        <asp:Parameter Name="original_givenby" Type="String" />
        <asp:Parameter Name="original_posteddt" Type="String" />
        <asp:Parameter Name="original_posteddt" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
   </asp:Content>

