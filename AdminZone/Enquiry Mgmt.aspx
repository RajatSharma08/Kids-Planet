<%@ Page Title="" Language="C#" MasterPageFile="~/AdminZone/Admin.master" AutoEventWireup="true" CodeFile="Enquiry Mgmt.aspx.cs" Inherits="AdminZone_Enquiry_Mgmt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="auto-style1">
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td colspan="2" style="font-family: 'book Antiqua'; font-size: x-large; font-weight: bold; color: #0000FF; text-align: center;">Enquiry Management</td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="Eid" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Width="100%">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" />
                    <asp:BoundField DataField="Eid" HeaderText="Eid" InsertVisible="False" ReadOnly="True" SortExpression="Eid" />
                    <asp:BoundField DataField="UName" HeaderText="UName" SortExpression="UName" />
                    <asp:BoundField DataField="Emailid" HeaderText="Emailid" SortExpression="Emailid" />
                    <asp:BoundField DataField="MobNo" HeaderText="MobNo" SortExpression="MobNo" />
                    <asp:BoundField DataField="E_Msg" HeaderText="E_Msg" SortExpression="E_Msg" />
                    <asp:BoundField DataField="EDT" HeaderText="EDT" SortExpression="EDT" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [TblEnquiry] WHERE [Eid] = ? AND (([UName] = ?) OR ([UName] IS NULL AND ? IS NULL)) AND (([Emailid] = ?) OR ([Emailid] IS NULL AND ? IS NULL)) AND (([MobNo] = ?) OR ([MobNo] IS NULL AND ? IS NULL)) AND (([E_Msg] = ?) OR ([E_Msg] IS NULL AND ? IS NULL)) AND (([EDT] = ?) OR ([EDT] IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO [TblEnquiry] ([Eid], [UName], [Emailid], [MobNo], [E_Msg], [EDT]) VALUES (?, ?, ?, ?, ?, ?)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [TblEnquiry] ORDER BY [Eid] DESC" UpdateCommand="UPDATE [TblEnquiry] SET [UName] = ?, [Emailid] = ?, [MobNo] = ?, [E_Msg] = ?, [EDT] = ? WHERE [Eid] = ? AND (([UName] = ?) OR ([UName] IS NULL AND ? IS NULL)) AND (([Emailid] = ?) OR ([Emailid] IS NULL AND ? IS NULL)) AND (([MobNo] = ?) OR ([MobNo] IS NULL AND ? IS NULL)) AND (([E_Msg] = ?) OR ([E_Msg] IS NULL AND ? IS NULL)) AND (([EDT] = ?) OR ([EDT] IS NULL AND ? IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_Eid" Type="Int32" />
                    <asp:Parameter Name="original_UName" Type="String" />
                    <asp:Parameter Name="original_UName" Type="String" />
                    <asp:Parameter Name="original_Emailid" Type="String" />
                    <asp:Parameter Name="original_Emailid" Type="String" />
                    <asp:Parameter Name="original_MobNo" Type="String" />
                    <asp:Parameter Name="original_MobNo" Type="String" />
                    <asp:Parameter Name="original_E_Msg" Type="String" />
                    <asp:Parameter Name="original_E_Msg" Type="String" />
                    <asp:Parameter Name="original_EDT" Type="String" />
                    <asp:Parameter Name="original_EDT" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Eid" Type="Int32" />
                    <asp:Parameter Name="UName" Type="String" />
                    <asp:Parameter Name="Emailid" Type="String" />
                    <asp:Parameter Name="MobNo" Type="String" />
                    <asp:Parameter Name="E_Msg" Type="String" />
                    <asp:Parameter Name="EDT" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="UName" Type="String" />
                    <asp:Parameter Name="Emailid" Type="String" />
                    <asp:Parameter Name="MobNo" Type="String" />
                    <asp:Parameter Name="E_Msg" Type="String" />
                    <asp:Parameter Name="EDT" Type="String" />
                    <asp:Parameter Name="original_Eid" Type="Int32" />
                    <asp:Parameter Name="original_UName" Type="String" />
                    <asp:Parameter Name="original_UName" Type="String" />
                    <asp:Parameter Name="original_Emailid" Type="String" />
                    <asp:Parameter Name="original_Emailid" Type="String" />
                    <asp:Parameter Name="original_MobNo" Type="String" />
                    <asp:Parameter Name="original_MobNo" Type="String" />
                    <asp:Parameter Name="original_E_Msg" Type="String" />
                    <asp:Parameter Name="original_E_Msg" Type="String" />
                    <asp:Parameter Name="original_EDT" Type="String" />
                    <asp:Parameter Name="original_EDT" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
</table>
</asp:Content>

