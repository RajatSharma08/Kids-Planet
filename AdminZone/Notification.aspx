<%@ Page Title="" Language="C#" MasterPageFile="~/AdminZone/Admin.master" AutoEventWireup="true" CodeFile="notification.aspx.cs" Inherits="AdminZone_notification" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        #box {
        height:auto;
        width:350px;
        padding:25px;
        border:5px double skyblue;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"><br /> <br />
    <center>  <div id="box">

         <asp:TextBox ID="TxtNotification" runat="server" Height="50px" TextMode="MultiLine" Width="300px"></asp:TextBox>
         <br /> <br />
         <asp:Button ID ="btnAdd" runat="server" BackColor="#FF46FF" Text="Add Notification" ForeColor="White" Height="40px" Width="300px" OnClick="btnAdd_Click" Font-Size="Large" />

     </div>
       </center>
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="NID" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None" Width="100%">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:BoundField DataField="NID" HeaderText="NID" InsertVisible="False" ReadOnly="True" SortExpression="NID" />
            <asp:BoundField DataField="Nmsg" HeaderText="Nmsg" SortExpression="Nmsg" />
            <asp:BoundField DataField="NDT" HeaderText="NDT" SortExpression="NDT" />
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
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [TblNotification] WHERE [NID] = ? AND (([Nmsg] = ?) OR ([Nmsg] IS NULL AND ? IS NULL)) AND (([NDT] = ?) OR ([NDT] IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO [TblNotification] ([NID], [Nmsg], [NDT]) VALUES (?, ?, ?)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [TblNotification] ORDER BY [NID] DESC" UpdateCommand="UPDATE [TblNotification] SET [Nmsg] = ?, [NDT] = ? WHERE [NID] = ? AND (([Nmsg] = ?) OR ([Nmsg] IS NULL AND ? IS NULL)) AND (([NDT] = ?) OR ([NDT] IS NULL AND ? IS NULL))">
    <DeleteParameters>
        <asp:Parameter Name="original_NID" Type="Int32" />
        <asp:Parameter Name="original_Nmsg" Type="String" />
        <asp:Parameter Name="original_Nmsg" Type="String" />
        <asp:Parameter Name="original_NDT" Type="String" />
        <asp:Parameter Name="original_NDT" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="NID" Type="Int32" />
        <asp:Parameter Name="Nmsg" Type="String" />
        <asp:Parameter Name="NDT" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Nmsg" Type="String" />
        <asp:Parameter Name="NDT" Type="String" />
        <asp:Parameter Name="original_NID" Type="Int32" />
        <asp:Parameter Name="original_Nmsg" Type="String" />
        <asp:Parameter Name="original_Nmsg" Type="String" />
        <asp:Parameter Name="original_NDT" Type="String" />
        <asp:Parameter Name="original_NDT" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
    <br />
</asp:Content>

