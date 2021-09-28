<%@ Page Title="" Language="C#" MasterPageFile="~/without-log-user/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentBody" Runat="Server">
    <asp:Panel ID="Panel2" runat="server" Height="481px">
        <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 568px; top: 200px; position: absolute; color: #000000; width: 846px; font-size: xx-large; margin-bottom: 0px;" Text="WELCOME TO SHOPPING HEART LOGIN PAGE" Font-Bold="True" Font-Size="X-Large"></asp:Label>
        <hr style="z-index: 1; left: 654px; top: 481px; position: absolute; height: 0px; width: 200px" />
        <hr style="z-index: 1; left: 907px; top: 480px; position: absolute; height: 0px; width: 200px" />
        <asp:Label ID="Label5" runat="server" style="z-index: 1; left: 866px; top: 476px; position: absolute; color: #000000" Text="OR"></asp:Label>
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Size="20px" style="z-index: 1; left: 793px; top: 534px; position: absolute; color: #000000; width: 186px" Font-Underline="False" NavigateUrl="~/without-log-user/signup.aspx">SIGNUP FOR FREE</asp:HyperLink>
        <asp:HyperLink ID="HyperLink2" runat="server" Font-Size="Large" style="z-index: 1; left: 790px; top: 594px; position: absolute; color: #000000; width: 205px">FORGOT PASSWORD ?</asp:HyperLink>
        <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 662px; top: 283px; position: absolute; color: #000000; font-size: medium" Text="ENTER YOUR EMAIL"></asp:Label>
        <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 659px; top: 361px; position: absolute; color: #000000; font-size: medium" Text="ENTER YOUR PASSWORD"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" BorderStyle="Solid" style="z-index: 1; left: 931px; top: 282px; position: absolute" OnTextChanged="TextBox1_TextChanged" TextMode="Email"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" BorderStyle="Solid" style="z-index: 1; left: 932px; top: 360px; position: absolute" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="* Incorrect Password" Font-Size="Medium" style="z-index: 1; left: 1162px; top: 359px; position: absolute; width: 223px; color: #CC0000;"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="* Please Enter Your Email" Font-Size="Medium" style="z-index: 1; left: 1142px; top: 282px; position: absolute; width: 245px; height: 17px; color: #CC0000;"></asp:RequiredFieldValidator>
        <asp:Button ID="Button1" runat="server" style="z-index: 1; left: 760px; top: 430px; position: absolute; width: 268px; color: #FFFFFF; background-color: #0000FF; height: 30px;" Text="LOGIN" OnClick="Button1_Click" />
    </asp:Panel>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

