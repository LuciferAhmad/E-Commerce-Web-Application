<%@ Page Title="" Language="C#" MasterPageFile="~/log-user/LogUserMasterPage.master" AutoEventWireup="true" CodeFile="categories.aspx.cs" Inherits="categories" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 321px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentBody" Runat="Server">
  
    <asp:Panel ID="Panel2" runat="server" Height="779px" Width="1681px">
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="8">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td style="text-align: center">
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="200px" ImageUrl='<%# Eval("image") %>' Width="200px" CommandArgument='<%# Eval("name") %>' CommandName="shop" OnCommand="ImageButton1_Command" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:Label ID="Label1" runat="server" style="color: #000000" Text='<%# Eval("name") %>'></asp:Label>
                    </td>
                </tr>
            </table>
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Categories]"></asp:SqlDataSource>
</asp:Panel>
  
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

