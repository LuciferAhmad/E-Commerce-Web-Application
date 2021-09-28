<%@ Page Title="" Language="C#" MasterPageFile="~/log-user/LogUserMasterPage.master" AutoEventWireup="true" CodeFile="wishlist.aspx.cs" Inherits="cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
        width: 351px;
    }
    .auto-style4 {
        width: 383px;
    }
    .auto-style5 {
        width: 100%;
        height: 194px;
            margin-bottom: 12px;
        }
    .auto-style6 {
        width: 315px;
    }
        .auto-style9 {
            width: 253px;
            height: 30px;
        }
        .auto-style10 {
            width: 261px;
            height: 30px;
        }
        .auto-style11 {
            height: 30px;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentBody" Runat="Server">
    <table style="width: 1683px">
        <tr>
            <td class="auto-style3" >&nbsp;</td>
            <td class="auto-style4" style="text-align: center">
                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" style="margin-left: 0px" Width="811px">
                    <ItemTemplate>
                        <table class="auto-style5">
                            <tr>
                                <td>
                                    <table class="auto-style5">
                                        <tr>
                                            <td class="auto-style6">
                                                <asp:Image ID="Image3" runat="server" Height="200px" ImageUrl='<%# Eval("image") %>' Width="200px" />
                                            </td>
                                            <td>
                                                <table class="auto-style5">
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="Label5" runat="server" style="color: #000000" Text="Product ID-  "></asp:Label>
                                                            <asp:Label ID="Label6" runat="server" style="color: #000000" Text='<%# Eval("pid") %>'></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="Label1" runat="server" style="color: #000000" Text="Name-   "></asp:Label>
                                                            <asp:Label ID="Label2" runat="server" style="color: #000000" Text='<%# Eval("pname") %>'></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="Label3" runat="server" style="color: #000000" Text="Price-   "></asp:Label>
                                                            <asp:Label ID="Label4" runat="server" style="color: #000000" Text='<%# Eval("dprice") %>'></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Image ID="Image4" runat="server" Height="30px" ImageUrl='<%# Eval("rimg") %>' Width="100px" />
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                        <br />
                        <table style="width: 789px; height: 53px">
                            <tr>
                                <td class="auto-style10" >
                                    <asp:Label ID="Label7" runat="server" Font-Size="Medium" Height="25px" Text="Quantity-   "></asp:Label>
                                    <asp:TextBox ID="TextBox1" runat="server" Height="16px" OnTextChanged="TextBox1_TextChanged" Width="28px">01</asp:TextBox>
                                </td>
                                <td class="auto-style9" >
                                    <asp:Button ID="Button1" runat="server" Text="Delete" CommandName="delete" CommandArgument='<%# Eval("pid") %>' OnCommand="Button1_Command"/>
                                </td>
                                <td class="auto-style11">
                                    <asp:Button ID="Button2" runat="server" Height="26px" Text="Add To Cart" CommandName="cart" CommandArgument='<%# Eval("pid") %>' OnCommand="Button2_Command1"/>
                                </td>
                            </tr>
                        </table>
<br />
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Wishlist] WHERE ([name] = @name)">
                    <SelectParameters>
                        <asp:SessionParameter Name="name" SessionField="new" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    </asp:Content>


