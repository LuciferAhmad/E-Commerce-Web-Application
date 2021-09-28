<%@ Page Title="" Language="C#" MasterPageFile="~/log-user/LogUserMasterPage.master" AutoEventWireup="true" CodeFile="buy.aspx.cs" Inherits="log_user_wishlist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    
    <style type="text/css">
        .auto-style1 {
            font-size: medium;
            text-align: center;
        }
        .auto-style2 {
            font-size: medium;
            text-align: left;
            width: 521px;
        }
        .auto-style3 {
            font-size: large;
            text-align: center;
        }
        .auto-style4 {
            font-size: large;
        }
        .auto-style5 {
            font-size: large;
            text-align: left;
        }
        .auto-style6 {
            font-size: large;
            text-align: center;
            width: 521px;
        }
        .auto-style8 {
            width: 147%;
        }
        .auto-style9 {
            width: 551px;
            height: 33px;
        }
        .auto-style10 {
            width: 551px;
            height: 29px;
        }
        .auto-style11 {
            height: 29px;
        }
        .auto-style12 {
            width: 551px;
            height: 51px;
        }
        .auto-style13 {
            height: 51px;
        }
        .auto-style14 {
            height: 33px;
        }
        .auto-style15 {
            font-size: medium;
            text-align: left;
            width: 521px;
            height: 40px;
        }
        .auto-style16 {
            font-size: large;
            text-align: left;
            height: 40px;
        }
        .auto-style17 {
            height: 40px;
        }
    </style>
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentBody" Runat="Server">
    
    <p>
        <table style="height: 305px; width: 1390px;">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label4" runat="server" Font-Size="XX-Large" style="z-index: 1; left: 705px; top: 226px; position: absolute; width: 378px" Text="ENTER YOUR DETAILS"></asp:Label>
                </td>
                <td class="auto-style5">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15">
                    </td>
                <td class="auto-style16">
                    </td>
                <td class="auto-style17">
                </td>
                <td class="auto-style17">
                    </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="label_full_name" runat="server" Font-Names="Arial" 
                        Text="Full Name :"></asp:Label>
                    &nbsp;</span></td>
                <td>
                    <asp:TextBox ID="Text_fullname" runat="server" Width="401px" CssClass="auto-style3" Height="34px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="Text_fullname" ErrorMessage="Full Name is required" 
                        Font-Names="Arial" Font-Size="Small" SetFocusOnError="True" CssClass="auto-style3"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style5">
                    &nbsp;<asp:Label ID="label_add_line1" runat="server" Font-Names="Arial" 
                        Text="Address Line 1 :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="Text_addline1" runat="server" Width="401px" 
                        TextMode="MultiLine" CssClass="auto-style3"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator_addressline1" 
                        runat="server" ControlToValidate="Text_addline1" 
                        ErrorMessage="Address must required*" Font-Names="Arial" Font-Size="Small" 
                        SetFocusOnError="True" CssClass="auto-style3"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style5">
                    &nbsp;</td>
                <td class="auto-style5">
                    &nbsp;Street address, P.O. box, company name, c/o&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    &nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="label_add_line2" runat="server" Font-Names="Arial" 
                        Text="            Address Line 2 :"></asp:Label>
                    </span>
                    </span>
                </td>
                <td>
                    <asp:TextBox ID="Text_addline2" runat="server" Width="401px" 
                        TextMode="MultiLine" CssClass="auto-style3"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator_addline2" runat="server" 
                        ControlToValidate="Text_addline2" 
                        ErrorMessage="Enter your current billing address*" Font-Names="Arial" 
                        Font-Size="Small" CssClass="auto-style3" Height="20px"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style5">
                    &nbsp;</td>
                <td class="auto-style5">
                    &nbsp;Apartment, suite, unit, building, floor, etc.&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    &nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="label_city" runat="server" Font-Names="Arial" Text="City :"></asp:Label>
                    &nbsp;</span></span></td>
                <td>
                    <asp:TextBox ID="Text_city" runat="server" Width="230px" CssClass="auto-style3" OnTextChanged="Text_city_TextChanged"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator_city" runat="server" 
                        ControlToValidate="Text_city" ErrorMessage="Enter your city*" 
                        Font-Names="Arial" Font-Size="Small" CssClass="auto-style3"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="label_state" runat="server" Font-Names="Arial" 
                        Text="State/Provice/Region :" style="text-align: center"></asp:Label>
                </td>
                <td class="style15">
                    <asp:TextBox ID="Text_state" runat="server" Width="226px" CssClass="auto-style3" OnTextChanged="Text_state_TextChanged"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator_state" runat="server" 
                        ControlToValidate="Text_state" ErrorMessage="Enter your state*" 
                        Font-Names="Arial" Font-Size="Small" SetFocusOnError="True" CssClass="auto-style3"></asp:RequiredFieldValidator>
                </td>
                <td class="style15">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style5">
                    &nbsp;<asp:Label ID="label_zip" runat="server" Font-Names="Arial" 
                        Text="User Id :"></asp:Label>
                    &nbsp;</td>
                <td>
                    <asp:TextBox ID="Textuid" runat="server" Width="224px" MaxLength="6" 
                        ontextchanged="Textuid_TextChanged" CssClass="auto-style3"></asp:TextBox>
                    <span class="auto-style3">&nbsp;&nbsp;
                    </span>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ErrorMessage="Enter your Uid*" Font-Size="Small" 
                        ControlToValidate="Textuid" CssClass="auto-style3"></asp:RequiredFieldValidator>
                    <span class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="label_country" runat="server" Font-Names="Arial" 
                        Text="Country :"></asp:Label>
                    &nbsp;</span></td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="22px" Width="233px" CssClass="auto-style3">
                        <asp:ListItem>India</asp:ListItem>
                        <asp:ListItem>America</asp:ListItem>
                        <asp:ListItem>Australia</asp:ListItem>
                        <asp:ListItem>Jarmani</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style5">
                    &nbsp;<asp:Label ID="label_phno" runat="server" Font-Names="Arial" 
                        Text="Mobile Number :"></asp:Label>
                    &nbsp;</td>
                <td>
                    <asp:TextBox ID="Text_phno" runat="server" Width="228px" MaxLength="11" CssClass="auto-style3"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="Text_phno" ErrorMessage="Enter your Mobile No.*" 
                        Font-Size="Small" CssClass="auto-style3"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style5">
                    &nbsp;<asp:Label ID="label_email" runat="server" Font-Names="Arial" 
                        Text="E-Mail Address :"></asp:Label>
                    &nbsp;</td>
                <td>
                    <asp:TextBox ID="Text_email" runat="server" Width="280px" CssClass="auto-style3"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator_email" 
                        runat="server" ControlToValidate="Text_email" 
                        ErrorMessage="Enter your Correct E-Mail Address" Font-Names="Arial" 
                        Font-Size="Small" SetFocusOnError="True" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" CssClass="auto-style3"></asp:RegularExpressionValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style5">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td class="auto-style4">
                    <font color="red"><span class="auto-style3">Enter your Card Details :</span></font><span class="auto-style1"></td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    &nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="label_bank" runat="server" Font-Names="Arial" Text="Bank Name :"></asp:Label>
                    </span>
                    </span>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server" Width="230px" CssClass="auto-style3">
                        <asp:ListItem>Allahabad Bank</asp:ListItem>
                        <asp:ListItem>Bank Of Baroda</asp:ListItem>
                        <asp:ListItem>State Bank Of India</asp:ListItem>
                        <asp:ListItem>Panjab National Bank</asp:ListItem>
                        <asp:ListItem>Union Bank Of India</asp:ListItem>
                        <asp:ListItem>HDFC Bank</asp:ListItem>
                        <asp:ListItem>Axis Bank</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator_bankname" runat="server" 
                        ControlToValidate="DropDownList2" ErrorMessage="Enter your bank name*" 
                        Font-Names="Arial" Font-Size="Small" SetFocusOnError="True" CssClass="auto-style3"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="label_cardtype" runat="server" Font-Names="Arial" 
                        Text="Card Type :"></asp:Label>
                </td>
                <td bgcolor="#99CCFF">
                    <asp:RadioButton ID="Radio_credit" runat="server" Font-Names="Arial" 
                        GroupName="cardtype" Text="Credit Card " Checked="True" 
                        oncheckedchanged="Radio_credit_CheckedChanged" CssClass="auto-style3" />
                    <span class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="Radio_debit" runat="server" Font-Names="Arial" 
                        GroupName="cardtype" Text="Debit Card " OnCheckedChanged="Radio_debit_CheckedChanged" />
                </td>
                <td bgcolor="#99CCFF">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    &nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="label_card" runat="server" Font-Names="Arial" Text="Card :"></asp:Label>
                    &nbsp;</td>
                <td bgcolor="#6699FF" class="auto-style4">
                    <asp:RadioButton ID="Radio_master" runat="server" Font-Names="Arial" 
                        GroupName="card" Text="Master Card" Checked="True" />
                    <br />
                    <asp:RadioButton ID="Radio_visa" runat="server" Font-Names="Arial" 
                        GroupName="card" Text="Visa Card" />
                    <br />
                    <asp:RadioButton ID="Radio_gold" runat="server" Font-Names="Arial" 
                        GroupName="card" Text="American Gold Card" />
                </td>
                <td bgcolor="#6699FF">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    &nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="label_cardno" runat="server" Font-Names="Arial" 
                        Text="Card Number :"></asp:Label>
                    &nbsp;</span></span></td>
                <td>
                    <asp:TextBox ID="Text_cardno" runat="server" MaxLength="16" 
                        Width="305px" ontextchanged="Text_cardno_TextChanged" Height="21px" CssClass="auto-style3"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="Text_cardno" ErrorMessage="Enter your Currect Card No*" 
                        Font-Size="Small" CssClass="auto-style3"></asp:RequiredFieldValidator>
                &nbsp;<asp:Label ID="Label3" runat="server" ForeColor="Red" CssClass="auto-style3"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            </table>
        
    </p>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style8">
        <tr>
            <td class="auto-style10"></td>
            <td class="auto-style11">
            </td>
            <td class="auto-style11"></td>
        </tr>
        <tr>
            <td class="auto-style12"></td>
            <td class="auto-style13">
                <asp:Button ID="Button1" runat="server" Text="Continue" OnClick="Button_continue_Click" Height="45px" style="font-size: large" Width="140px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Text="Cancel" CausesValidation="False" OnClick="Button_cancle_Click" Height="45px" style="font-size: large" Width="140px" />
            </td>
            <td class="auto-style13"></td>
        </tr>
        <tr>
            <td class="auto-style9"></td>
            <td class="auto-style14">
            </td>
            <td class="auto-style14"></td>
        </tr>
    </table>
</asp:Content>

