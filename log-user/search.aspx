<%@ Page Title="" Language="C#" MasterPageFile="~/log-user/LogUserMasterPage.master" AutoEventWireup="true" CodeFile="search.aspx.cs" Inherits="cart" %>

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
  
    <asp:Panel ID="Panel2" runat="server" Height="178px">
        <asp:Label ID="Label8" runat="server" Text="SEARCH" style="z-index: 1; left: 774px; top: 212px; position: absolute"></asp:Label>
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" style="z-index: 1; left: 864px; top: 280px; position: absolute; width: 125px; height: 29px" Text="SEARCH" />
        <asp:TextBox ID="TextBox2" runat="server" style="z-index: 1; left: 616px; top: 271px; position: absolute; height: 42px; width: 235px"></asp:TextBox>
    </asp:Panel>
  
    </asp:Content>


<asp:Content ID="Content4" runat="server" contentplaceholderid="ContentPlaceHolder1">
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
                                                            <asp:Label ID="Label2" runat="server" style="color: #000000" Text='<%# Eval("name") %>'></asp:Label>
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
                                    &nbsp;</td>
                                <td class="auto-style9" >
                                    <asp:Button ID="Button2" runat="server" CommandArgument='<%# Eval("pid") %>' CommandName="proceed" Height="26px" OnCommand="Button2_Command" Text="Add To Cart" />
                                </td>
                                <td class="auto-style11">
                                    &nbsp;</td>
                            </tr>
                        </table>
<br />
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Product] WHERE ([name] LIKE '%' + @name + '%')">
                    <SelectParameters>
                        <asp:SessionParameter Name="name" SessionField="ser" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>



