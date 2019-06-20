<%@ Page Title="" Language="C#" MasterPageFile="~/Mas1.master" AutoEventWireup="true" CodeFile="behsetadd.aspx.cs" Inherits="behsetadd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 123px;
        }
        .auto-style3 {
            width: 112px;
        }
        .auto-style4 {
            width: 351px;
        }
        .auto-style5 {
            width: 112px;
            height: 53px;
        }
        .auto-style6 {
            width: 123px;
            height: 53px;
        }
        .auto-style7 {
            width: 351px;
            height: 53px;
        }
        .auto-style8 {
            height: 53px;
        }
        .auto-style9 {
            width: 112px;
            height: 32px;
        }
        .auto-style10 {
            width: 123px;
            height: 32px;
        }
        .auto-style11 {
            width: 351px;
            height: 32px;
        }
        .auto-style12 {
            height: 32px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td class="auto-style9"></td>
            <td class="auto-style10">Choose The Course</td>
            <td class="auto-style11">
                                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Height="26px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="180px">
                                </asp:DropDownList>
            </td>
            <td class="auto-style12"></td>
        </tr>
        <tr>
            <td class="auto-style5"></td>
            <td class="auto-style6">Lecture Day</td>
            <td class="auto-style7">&nbsp;<asp:TextBox ID="TextBox1" runat="server" Width="180px" Height="26px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td class="auto-style8"></td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" Width="241px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">&nbsp;
                                <asp:Button ID="Button1" runat="server" Text="Add Lecture Day" OnClick="Button1_Click" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button2" runat="server" Text="Cancel" CausesValidation="false" PostBackUrl="~/behset.aspx" />
                            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

