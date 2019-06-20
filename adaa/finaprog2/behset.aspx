<%@ Page Title="" Language="C#" MasterPageFile="~/Mas1.master" AutoEventWireup="true" CodeFile="behset.aspx.cs" Inherits="behset" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 307px;
        }
        .auto-style5 {
            width: 82px;
        }
        .auto-style4 {
            width: 206px;
        }
        .auto-style6 {
            width: 307px;
            height: 38px;
        }
        .auto-style8 {
            width: 82px;
            height: 38px;
        }
        .auto-style9 {
            width: 206px;
            height: 38px;
        }
        .auto-style10 {
            height: 38px;
        }
        .auto-style11 {
            width: 331px;
        }
        .auto-style12 {
            width: 331px;
            height: 38px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style12">
                Choose Proccess:</td>
            <td class="auto-style8"></td>
            <td class="auto-style9"></td>
            <td class="auto-style10"></td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style11">
                &nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style12">
                <asp:RadioButton ID="RadioButton1" runat="server" Text="Add lecture Day" />
            </td>
            <td class="auto-style8">
            </td>
            <td class="auto-style9">
            </td>
            <td class="auto-style10"></td>
        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style12">
                <asp:RadioButton ID="RadioButton2" runat="server" Text="Edit lecture Day" />
            </td>
            <td class="auto-style8"></td>
            <td class="auto-style9">
            </td>
            <td class="auto-style10"></td>
        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style12">
                <asp:RadioButton ID="RadioButton3" runat="server" Text="Delete lecture Day" />
            </td>
            <td class="auto-style8"></td>
            <td class="auto-style9">&nbsp;
                &nbsp;&nbsp;
                </td>
            <td class="auto-style10"></td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style12">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Text="Go" OnClick="Button1_Click" Width="83px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Text="Back" PostBackUrl="~/behaviors.aspx" Width="91px" />
            </td>
            <td class="auto-style8"></td>
            <td class="auto-style9"></td>
            <td class="auto-style10"></td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

