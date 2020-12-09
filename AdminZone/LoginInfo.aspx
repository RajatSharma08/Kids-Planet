<%@ Page Title="" Language="C#" MasterPageFile="~/AdminZone/Admin.master" AutoEventWireup="true" CodeFile="LoginInfo.aspx.cs" Inherits="AdminZone_LoginInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="userid" DataSourceID="AccessDataSource1" EmptyDataText="There are no data records to display." ForeColor="Black" GridLines="Vertical" Width="436px">
    <AlternatingRowStyle BackColor="#CCCCCC" />
    <Columns>
        <asp:BoundField DataField="userid" HeaderText="userid" ReadOnly="True" SortExpression="userid" />
        <asp:BoundField DataField="Passwd" HeaderText="Passwd" SortExpression="Passwd" />
        <asp:BoundField DataField="usertype" HeaderText="usertype" SortExpression="usertype" />
        <asp:CheckBoxField DataField="status" HeaderText="status" SortExpression="status" />
        <asp:BoundField DataField="lcount" HeaderText="lcount" SortExpression="lcount" />
        <asp:BoundField DataField="lastlogin" HeaderText="lastlogin" SortExpression="lastlogin" />
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
<asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="E:\KidsP\KidsPlenet.accdb" DeleteCommand="DELETE FROM `Login` WHERE `userid` = ?" InsertCommand="INSERT INTO `Login` (`userid`, `Passwd`, `usertype`, `status`, `lcount`, `lastlogin`) VALUES (?, ?, ?, ?, ?, ?)" SelectCommand="SELECT `userid`, `Passwd`, `usertype`, `status`, `lcount`, `lastlogin` FROM `Login`" UpdateCommand="UPDATE `Login` SET `Passwd` = ?, `usertype` = ?, `status` = ?, `lcount` = ?, `lastlogin` = ? WHERE `userid` = ?">
    <DeleteParameters>
        <asp:Parameter Name="userid" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="userid" Type="String" />
        <asp:Parameter Name="Passwd" Type="String" />
        <asp:Parameter Name="usertype" Type="String" />
        <asp:Parameter Name="status" Type="Boolean" />
        <asp:Parameter Name="lcount" Type="Int32" />
        <asp:Parameter Name="lastlogin" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Passwd" Type="String" />
        <asp:Parameter Name="usertype" Type="String" />
        <asp:Parameter Name="status" Type="Boolean" />
        <asp:Parameter Name="lcount" Type="Int32" />
        <asp:Parameter Name="lastlogin" Type="String" />
        <asp:Parameter Name="userid" Type="String" />
    </UpdateParameters>
</asp:AccessDataSource>
</asp:Content>

