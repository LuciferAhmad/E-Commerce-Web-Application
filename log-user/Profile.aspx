<%@ Page Title="" Language="C#" MasterPageFile="~/log-user/LogUserMasterPage.master" AutoEventWireup="true" CodeFile="Profile.aspx.cs" Inherits="log_user_Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 581px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentBody" Runat="Server">
    <asp:Panel ID="Panel2" runat="server" Height="587px">
        <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 807px; top: 205px; position: absolute; color: #000000; font-size: xx-large; width: 144px;" Text="My Profile" Font-Size="50px"></asp:Label>
    </asp:Panel>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

