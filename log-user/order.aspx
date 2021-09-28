<%@ Page Title="" Language="C#" MasterPageFile="~/log-user/LogUserMasterPage.master" AutoEventWireup="true" CodeFile="order.aspx.cs" Inherits="order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 165px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentBody" Runat="Server">
    <table align="center" style="width: 1483px">
        <tr>
            <td>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>
            </td>
            <td style="text-align: center">
                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" Width="789px" CellPadding="4" ForeColor="#333333" Height="1312px">
                    <AlternatingItemStyle BackColor="White" />
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <ItemTemplate>
                        <br />
                        <table border="0" style="width: 685px">
                            <tr>
                                <td style="text-align: center">
                                    <asp:Image ID="Image3" runat="server" Height="200px" ImageUrl='<%# Eval("image") %>' Width="200px" />
                                </td>
                                <td>
                                    <table border="0">
                                        <tr>
                                            <td class="auto-style1" >
                                                <asp:Label ID="Label1" runat="server" style="color: #000000" Text='<%# Eval("name") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: center" class="auto-style1">
                                                <asp:Image ID="Image4" runat="server" Height="25px" ImageUrl='<%# Eval("rimg") %>' Width="80px" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style1" >
                                                <asp:Label ID="Label2" runat="server" style="color: #000000" Text='<%# Eval("dprice") %>'></asp:Label>
                                                <asp:Label ID="Label3" runat="server" Font-Size="Medium" Font-Strikeout="True" style="color: #CC0000" Text='<%# Eval("price") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="color: #000000" class="auto-style1">
                                                <asp:Label ID="Label4" runat="server" Text="Save upto   "></asp:Label>
                                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("save") %>'></asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                        <br />
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                </asp:DataList>
                </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    </asp:Content>


