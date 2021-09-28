<%@ Page Title="" Language="C#" MasterPageFile="~/without-log-user/MasterPage.master" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        font-size: medium;
    }
</style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentBody" Runat="Server">
    <asp:Panel ID="Panel2" runat="server" Height="647px" CssClass="auto-style1">
</asp:Panel>
<asp:Label ID="Label1" runat="server" style="color: #000000; z-index: 1; left: 616px; top: 262px; position: absolute; width: 245px" Text="ENTER YOUR NAME" CssClass="auto-style1"></asp:Label>
    <asp:Button ID="Button1" runat="server" style="z-index: 1; left: 741px; top: 780px; position: absolute; width: 261px; height: 40px;" Text="SUBMIT" OnClick="Button1_Click" CssClass="auto-style1" />
    <asp:Label ID="Label8" runat="server" style="z-index: 1; left: 624px; top: 210px; position: absolute; color: #000000; font-weight: 700; width: 545px; text-align: center" Text="ENTER YOUR DETAILS" CssClass="auto-style1" Font-Size="XX-Large"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" BorderStyle="Solid" style="z-index: 1; left: 872px; top: 262px; position: absolute; height: 30px; width: 200px;" CssClass="auto-style1"></asp:TextBox>
    <asp:TextBox ID="TextBox2" runat="server" BorderStyle="Solid" style="z-index: 1; left: 871px; top: 320px; position: absolute; height: 30px; width: 200px;" CssClass="auto-style1" TextMode="Email"></asp:TextBox>
    <asp:TextBox ID="TextBox3" runat="server" BorderStyle="Solid" style="z-index: 1; left: 871px; top: 381px; position: absolute; height: 30px; width: 200px;" TextMode="Date" CssClass="auto-style1"></asp:TextBox>
    <asp:TextBox ID="TextBox4" runat="server" BorderStyle="Solid" style="z-index: 1; left: 872px; top: 579px; position: absolute; height: 30px; width: 200px;" CssClass="auto-style1"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox1" Font-Size="Medium" ForeColor="#CC0000" style="z-index: 1; left: 1109px; top: 270px; position: absolute; width: 269px" CssClass="auto-style1">*USER NAME IS REQUIRED</asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox2" Font-Size="Medium" ForeColor="#CC0000" style="z-index: 1; left: 1113px; top: 323px; position: absolute; width: 209px" CssClass="auto-style1">*EMAIL IS REQUIRED</asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox5" Font-Size="Medium" ForeColor="#CC0000" style="z-index: 1; left: 1121px; top: 588px; position: absolute; width: 295px" CssClass="auto-style1">*PASSWORD IS REQUIRED</asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox6" Font-Size="Medium" ForeColor="#CC0000" style="z-index: 1; left: 1119px; top: 650px; position: absolute; width: 393px" CssClass="auto-style1">*ENTER SAME PASSWORD AS PREVIOUS</asp:RequiredFieldValidator>
    <asp:TextBox ID="TextBox5" runat="server" BorderStyle="Solid" style="z-index: 1; left: 872px; top: 640px; position: absolute; height: 30px; width: 200px;" TextMode="Password" CssClass="auto-style1"></asp:TextBox>
    <asp:TextBox ID="TextBox6" runat="server" BorderStyle="Solid" OnTextChanged="TextBox6_TextChanged" style="z-index: 1; left: 873px; top: 704px; position: absolute; height: 30px; width: 200px;" TextMode="Password" CssClass="auto-style1"></asp:TextBox>
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" style="z-index: 1; left: 880px; top: 531px; position: absolute; width: 170px; height: 30px;" CssClass="auto-style1">
        <asp:ListItem Value="SELECT CITY"></asp:ListItem>
        <asp:ListItem Value="KANPUR"></asp:ListItem>
        <asp:ListItem Value="LUCKNOW"></asp:ListItem>
        <asp:ListItem Value="AGRA"></asp:ListItem>
        <asp:ListItem Value="DELHI"></asp:ListItem>
        <asp:ListItem Value="PATNA"></asp:ListItem>
        <asp:ListItem Value="PUNE"></asp:ListItem>
        <asp:ListItem Value="BANGLORE"></asp:ListItem>
        <asp:ListItem Value="MUMBAI"></asp:ListItem>
        <asp:ListItem Value="SIKKIM"></asp:ListItem>
        <asp:ListItem Value="GOA"></asp:ListItem>
        <asp:ListItem Value="HARIYANA"></asp:ListItem>
    </asp:DropDownList>
<span class="auto-style1">
<asp:Label ID="Label2" runat="server" style="color: #000000; z-index: 1; left: 616px; top: 320px; position: absolute; width: 250px" Text="ENTER YOUR EMAIL"></asp:Label>
<asp:Label ID="Label3" runat="server" style="z-index: 1; left: 616px; top: 383px; position: absolute; color: #000000; width: 245px" Text="ENTER YOUR D.O.B"></asp:Label>
<asp:Label ID="Label4" runat="server" style="color: #000000; z-index: 1; left: 615px; top: 459px; position: absolute" Text="SELECT YOUR GENDER"></asp:Label>
    <asp:RadioButtonList ID="RadioButtonList1" runat="server" BorderColor="Black" BorderStyle="Solid" style="z-index: 1; left: 909px; top: 433px; position: absolute; height: 76px; width: 141px; color: #000000">
        <asp:ListItem Value="MALE"></asp:ListItem>
        <asp:ListItem Value="FEMALE"></asp:ListItem>
    </asp:RadioButtonList>
<asp:Label ID="Label5" runat="server" style="z-index: 1; left: 614px; top: 586px; position: absolute; color: #000000;">ENTER YOUR CITY</asp:Label>
    <asp:Label ID="Label6" runat="server" style="z-index: 1; left: 615px; top: 647px; position: absolute; color: #000000" Text="ENTER PASSWORD"></asp:Label>
    <asp:Label ID="Label7" runat="server" style="z-index: 1; left: 613px; top: 710px; position: absolute; color: #000000" Text="RE-ENTER PASSWORD"></asp:Label>
</span>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

