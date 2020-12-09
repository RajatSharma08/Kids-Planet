<%@ Page Title="" Language="C#" MasterPageFile="~/UserZone/UserMaster.master" AutoEventWireup="true" CodeFile="PostQuestion.aspx.cs" Inherits="UserZone_PostQuestion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHHeading" Runat="Server">
    Discussion Board
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHContent" Runat="Server">
    <table align="center" class="auto-style1">
        <tr>
            <td colspan="2" style="font-family: 'book Antiqua'; text-align: center; background-color: #FF7A22; font-weight: bold; font-size: x-large; color: #0000FF;">Post Your Question</td>
        </tr>
        <tr>
            <td>Enter Your Question</td>
            <td>
                <asp:TextBox ID="TxtQuestion" runat="server" Height="100px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtQuestion" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="BtnSubmit" runat="server" Text="Post Question" OnClick="BtnSubmit_Click" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="qid" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="100%">
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <Columns>
                        <asp:BoundField DataField="qid" HeaderText="qid" InsertVisible="False" ReadOnly="True" SortExpression="qid" />
                        <asp:BoundField DataField="question" HeaderText="question" SortExpression="question" />
                        <asp:BoundField DataField="askedby" HeaderText="askedby" SortExpression="askedby" />
                        <asp:BoundField DataField="posteddt" HeaderText="posteddt" SortExpression="posteddt" />
                        <asp:HyperLinkField DataNavigateUrlFields="qid" DataNavigateUrlFormatString="PostAnswer.aspx?qid={0}" HeaderText="Post Answer" Text="Post" />
                        <asp:HyperLinkField DataNavigateUrlFields="qid" DataNavigateUrlFormatString="ViewAnswer.aspx?qid={0}" HeaderText="ViewAnswer" Text="View" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [TblQuestion] ORDER BY [qid] DESC"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

