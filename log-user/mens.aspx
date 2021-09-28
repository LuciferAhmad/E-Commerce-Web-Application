<%@ Page Title="" Language="C#" MasterPageFile="~/log-user/LogUserMasterPage.master" AutoEventWireup="true" CodeFile="LogUserHome.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
   
   
   
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
   
   
   
    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentBody" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <asp:Panel ID="Panel1" runat="server" Height="2224%">
            <table style="height: 598px; margin-bottom: 0px; width: 518px;">
                <tr>
                    <td>
                        <asp:DataList ID="DataList1" runat="server" CellPadding="3" DataSourceID="SqlDataSource1" RepeatColumns="3" Width="80%" OnItemCommand="DataList1_ItemCommand" Height="887px" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellSpacing="2" GridLines="Both" style="font-size: xx-large" >
                            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                            <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                            <ItemTemplate>
                                <table style="width: 551px" >
                                    <tr>
                                        <td class="auto-style1">
                                            <asp:Label ID="Label7" runat="server" Text="Product ID-  "></asp:Label>
                                            <asp:Label ID="Label8" runat="server" Text='<%# Eval("pid") %>'></asp:Label>
                                        </td>
                                        <td style="text-align: center">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1">
                                            <asp:Image ID="Image3" runat="server" Height="200px" ImageUrl='<%# Eval("image") %>' style="text-align: center" Width="200px" />
                                        </td>
                                        <td style="text-align: center">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1" >
                                            <asp:Label ID="Label1" runat="server" Text="Name-  "></asp:Label>
                                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                                        </td>
                                        <td style="text-align: center">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1" >
                                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("dprice") %>'></asp:Label>
                                            <asp:Label ID="Label4" runat="server" Font-Size="Medium" Font-Strikeout="True" ForeColor="#CC0000" Text='<%# Eval("price") %>'></asp:Label>
                                        </td>
                                        <td style="text-align: center">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1">
                                            <asp:Label ID="Label6" runat="server" Text="Save upto   "></asp:Label>
                                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("save") %>'></asp:Label>
                                        </td>
                                        <td style="text-align: center">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1" >
                                            <asp:ImageButton ID="ImageButton1" runat="server" CommandName="cart" Height="84px" ImageUrl="~/images/add.png" CommandArgument='<%# Eval("pid") %>' OnCommand="ImageButton1_Command"/>            
                                            <asp:ImageButton ID="ImageButton2" runat="server" Height="88px" ImageUrl="~/images/wish.jpg" Width="119px" CommandName="wish" OnCommand="ImageButton2_Command" CommandArgument='<%# Eval("pid") %>'/>
                                        </td>
                                        <td style="text-align: center">&nbsp;</td>
                                    </tr>
                                </table>
                                <br />
                                <br />
                            </ItemTemplate>
                            <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                        </asp:DataList>
                    </td>
                </tr>
            </table>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Product] WHERE ([category] = @category)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="category" QueryStringField="shop" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </asp:Panel>
    
    </asp:Content>

