<%@ Page Title="" Language="C#" MasterPageFile="~/without-log-user/MasterPage.master" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="without_log_user_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentBody" Runat="Server">
&nbsp;<asp:Label ID="Label1" runat="server" ForeColor="Red" style="z-index: 1; left: 733px; top: 250px; position: absolute; width: 311px;" Text="GOT A QUESTION ?"></asp:Label>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel2" runat="server" Height="690px" Width="933px">
        <asp:Label ID="Label2" runat="server" Text="Chat with us - ShoppingHeart Team is here to help you boost your conversation" style="z-index: 1; left: 471px; top: 350px; position: absolute; font-size: x-large; width: 864px"></asp:Label>
        <asp:Label ID="Label3" runat="server" Font-Size="Large" style="z-index: 1; left: 630px; top: 461px; position: absolute" Text="Your Name"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" style="z-index: 1; left: 900px; top: 550px; position: absolute"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" style="z-index: 1; left: 900px; top: 460px; position: absolute"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" BorderColor="Black" BorderStyle="Solid" style="z-index: 1; left: 785px; top: 819px; position: absolute; width: 142px; height: 40px; background-color: #CCFFCC" Text="Submit" OnClick="Button1_Click" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="* Please enter your name" Font-Size="Medium" ForeColor="#CC0000" style="z-index: 1; left: 1250px; top: 463px; position: absolute; width: 190px"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="* Please write your feedback" Font-Size="Medium" ForeColor="#CC0000" style="z-index: 1; left: 1250px; top: 652px; position: absolute; width: 210px"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2" ErrorMessage="* Please enter your email" Font-Size="Medium" ForeColor="#CC0000" style="z-index: 1; left: 1250px; top: 552px; position: absolute; width: 183px"></asp:RequiredFieldValidator>
        <asp:TextBox ID="TextBox3" runat="server" style="z-index: 1; left: 900px; top: 630px; position: absolute; height: 129px" TextMode="MultiLine"></asp:TextBox>
        <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 630px; top: 550px; position: absolute; font-size: large" Text="Your Email"></asp:Label>
        <asp:Label ID="Label5" runat="server" Font-Size="Large" style="z-index: 1; left: 630px; top: 640px; position: absolute" Text="Type in your Question here "></asp:Label>
    </asp:Panel>
</asp:Content>

