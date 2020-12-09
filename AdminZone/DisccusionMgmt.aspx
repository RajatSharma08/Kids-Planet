<%@ Page Title="" Language="C#" MasterPageFile="~/AdminZone/Admin.master" AutoEventWireup="true" CodeFile="DisccusionMgmt.aspx.cs" Inherits="AdminZone_DisccusionMgmt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="qid" DataSourceID="AccessDataSource1" EmptyDataText="There are no data records to display." Width="100%">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" />
        <asp:BoundField DataField="qid" HeaderText="qid" ReadOnly="True" SortExpression="qid" />
        <asp:BoundField DataField="question" HeaderText="question" SortExpression="question" />
        <asp:BoundField DataField="askedby" HeaderText="askedby" SortExpression="askedby" />
        <asp:BoundField DataField="posteddt" HeaderText="posteddt" SortExpression="posteddt" />
    </Columns>
</asp:GridView>
<asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="E:\KidsP\KidsPlenet.accdb" DeleteCommand="DELETE FROM `TblQuestion` WHERE `qid` = ?" InsertCommand="INSERT INTO `TblQuestion` (`qid`, `question`, `askedby`, `posteddt`) VALUES (?, ?, ?, ?)" SelectCommand="SELECT `qid`, `question`, `askedby`, `posteddt` FROM `TblQuestion`" UpdateCommand="UPDATE `TblQuestion` SET `question` = ?, `askedby` = ?, `posteddt` = ? WHERE `qid` = ?">
    <DeleteParameters>
        <asp:Parameter Name="qid" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="qid" Type="Int32" />
        <asp:Parameter Name="question" Type="String" />
        <asp:Parameter Name="askedby" Type="String" />
        <asp:Parameter Name="posteddt" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="question" Type="String" />
        <asp:Parameter Name="askedby" Type="String" />
        <asp:Parameter Name="posteddt" Type="String" />
        <asp:Parameter Name="qid" Type="Int32" />
    </UpdateParameters>
</asp:AccessDataSource>
</asp:Content>

