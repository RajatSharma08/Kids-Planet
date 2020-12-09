<%@ Page Title="" Language="C#" MasterPageFile="~/AdminZone/Admin.master" AutoEventWireup="true" CodeFile="Upload.aspx.cs" Inherits="AdminZone_Upload" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style2 {
        width: 90%;
        background-color: #CCFFFF;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="auto-style2">
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td colspan="2" style="font-family: 'book Antiqua'; font-size: x-large; font-weight: bold; color: #0000FF; text-align: center;">Upload Video/Audio/GamesMaterial</td>
    </tr>
    <tr>
        <td>Select the Category</td>
        <td>
            <asp:DropDownList ID="DDLCategory" runat="server">
                <asp:ListItem>audio</asp:ListItem>
                <asp:ListItem>video</asp:ListItem>
                <asp:ListItem>game</asp:ListItem>
                <asp:ListItem>material</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td>Enter File Caption</td>
        <td>
            <asp:TextBox ID="TxtCaption" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>Select the file to upload</td>
        <td>
            <asp:FileUpload ID="FUUpload" runat="server" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="FUUpload" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="BtnSubmit" runat="server" OnClick="BtnSubmit_Click" Text="Submit" />
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="ID" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Width="100%">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" />
                    <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="category" HeaderText="category" SortExpression="category" />
                    <asp:BoundField DataField="filecaption" HeaderText="filecaption" SortExpression="filecaption" />
                    <asp:BoundField DataField="filename" HeaderText="filename" SortExpression="filename" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [TblMaterial] WHERE [ID] = ? AND (([category] = ?) OR ([category] IS NULL AND ? IS NULL)) AND (([filecaption] = ?) OR ([filecaption] IS NULL AND ? IS NULL)) AND (([filename] = ?) OR ([filename] IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO [TblMaterial] ([ID], [category], [filecaption], [filename]) VALUES (?, ?, ?, ?)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [TblMaterial]" UpdateCommand="UPDATE [TblMaterial] SET [category] = ?, [filecaption] = ?, [filename] = ? WHERE [ID] = ? AND (([category] = ?) OR ([category] IS NULL AND ? IS NULL)) AND (([filecaption] = ?) OR ([filecaption] IS NULL AND ? IS NULL)) AND (([filename] = ?) OR ([filename] IS NULL AND ? IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_ID" Type="Int32" />
                    <asp:Parameter Name="original_category" Type="String" />
                    <asp:Parameter Name="original_category" Type="String" />
                    <asp:Parameter Name="original_filecaption" Type="String" />
                    <asp:Parameter Name="original_filecaption" Type="String" />
                    <asp:Parameter Name="original_filename" Type="String" />
                    <asp:Parameter Name="original_filename" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ID" Type="Int32" />
                    <asp:Parameter Name="category" Type="String" />
                    <asp:Parameter Name="filecaption" Type="String" />
                    <asp:Parameter Name="filename" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="category" Type="String" />
                    <asp:Parameter Name="filecaption" Type="String" />
                    <asp:Parameter Name="filename" Type="String" />
                    <asp:Parameter Name="original_ID" Type="Int32" />
                    <asp:Parameter Name="original_category" Type="String" />
                    <asp:Parameter Name="original_category" Type="String" />
                    <asp:Parameter Name="original_filecaption" Type="String" />
                    <asp:Parameter Name="original_filecaption" Type="String" />
                    <asp:Parameter Name="original_filename" Type="String" />
                    <asp:Parameter Name="original_filename" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
</table>
</asp:Content>

