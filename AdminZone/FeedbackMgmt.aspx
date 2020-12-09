<%@ Page Title="" Language="C#" MasterPageFile="~/AdminZone/Admin.master" AutoEventWireup="true" CodeFile="FeedbackMgmt.aspx.cs" Inherits="AdminZone_FeedbackMgmt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td colspan="2" style="font-family: &quot;book Antiqua&quot;; font-size: x-large; font-weight: bold; color: #0000FF; text-align: center;">Feedback Management</td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="ID" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Width="100%">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" />
                    <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="subject" HeaderText="subject" SortExpression="subject" />
                    <asp:BoundField DataField="message" HeaderText="message" SortExpression="message" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Feedback] WHERE [ID] = ? AND (([subject] = ?) OR ([subject] IS NULL AND ? IS NULL)) AND (([message] = ?) OR ([message] IS NULL AND ? IS NULL)) AND (([givenby] = ?) OR ([givenby] IS NULL AND ? IS NULL)) AND (([posteddt] = ?) OR ([posteddt] IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO [Feedback] ([ID], [subject], [message], [givenby], [posteddt]) VALUES (?, ?, ?, ?, ?)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Feedback] ORDER BY [ID] DESC" UpdateCommand="UPDATE [Feedback] SET [subject] = ?, [message] = ?, [givenby] = ?, [posteddt] = ? WHERE [ID] = ? AND (([subject] = ?) OR ([subject] IS NULL AND ? IS NULL)) AND (([message] = ?) OR ([message] IS NULL AND ? IS NULL)) AND (([givenby] = ?) OR ([givenby] IS NULL AND ? IS NULL)) AND (([posteddt] = ?) OR ([posteddt] IS NULL AND ? IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_ID" Type="Int32" />
                    <asp:Parameter Name="original_subject" Type="String" />
                    <asp:Parameter Name="original_subject" Type="String" />
                    <asp:Parameter Name="original_message" Type="String" />
                    <asp:Parameter Name="original_message" Type="String" />
                    <asp:Parameter Name="original_givenby" Type="String" />
                    <asp:Parameter Name="original_givenby" Type="String" />
                    <asp:Parameter Name="original_posteddt" Type="String" />
                    <asp:Parameter Name="original_posteddt" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ID" Type="Int32" />
                    <asp:Parameter Name="subject" Type="String" />
                    <asp:Parameter Name="message" Type="String" />
                    <asp:Parameter Name="givenby" Type="String" />
                    <asp:Parameter Name="posteddt" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="subject" Type="String" />
                    <asp:Parameter Name="message" Type="String" />
                    <asp:Parameter Name="givenby" Type="String" />
                    <asp:Parameter Name="posteddt" Type="String" />
                    <asp:Parameter Name="original_ID" Type="Int32" />
                    <asp:Parameter Name="original_subject" Type="String" />
                    <asp:Parameter Name="original_subject" Type="String" />
                    <asp:Parameter Name="original_message" Type="String" />
                    <asp:Parameter Name="original_message" Type="String" />
                    <asp:Parameter Name="original_givenby" Type="String" />
                    <asp:Parameter Name="original_givenby" Type="String" />
                    <asp:Parameter Name="original_posteddt" Type="String" />
                    <asp:Parameter Name="original_posteddt" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
</table>
</asp:Content>

