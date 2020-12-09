<%@ Page Title="" Language="C#" MasterPageFile="~/UserZone/UserMaster.master" AutoEventWireup="true" CodeFile="Game.aspx.cs" Inherits="UserZone_Game" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHHeading" Runat="Server">
    Download Kids Game
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHContent" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" Width="100%">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="category" HeaderText="category" SortExpression="category" />
            <asp:BoundField DataField="filecaption" HeaderText="filecaption" SortExpression="filecaption" />
            <asp:BoundField DataField="filename" HeaderText="filename" SortExpression="filename" />
             <asp:TemplateField>
                <ItemTemplate>
                    <asp:LinkButton ID="lnkDownload" runat="server" Text="Download" CommandName="cmd" CommandArgument='<%#Eval("filename") %>'></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [TblMaterial] WHERE [ID] = ? AND (([category] = ?) OR ([category] IS NULL AND ? IS NULL)) AND (([filecaption] = ?) OR ([filecaption] IS NULL AND ? IS NULL)) AND (([filename] = ?) OR ([filename] IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO [TblMaterial] ([ID], [category], [filecaption], [filename]) VALUES (?, ?, ?, ?)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [TblMaterial] WHERE ([category] = ?)" UpdateCommand="UPDATE [TblMaterial] SET [category] = ?, [filecaption] = ?, [filename] = ? WHERE [ID] = ? AND (([category] = ?) OR ([category] IS NULL AND ? IS NULL)) AND (([filecaption] = ?) OR ([filecaption] IS NULL AND ? IS NULL)) AND (([filename] = ?) OR ([filename] IS NULL AND ? IS NULL))">
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
        <SelectParameters>
            <asp:Parameter DefaultValue="game" Name="category" Type="String" />
        </SelectParameters>
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
</asp:Content>

