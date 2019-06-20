<%@ Page Title="" Language="C#" MasterPageFile="~/Mas1.master" AutoEventWireup="true" CodeFile="behedit.aspx.cs" Inherits="behedit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            width: 132px;
        }
        .auto-style2 {
            width: 265px;
        }
        .auto-style4 {
            width: 205px;
        }
        .auto-style9 {
            width: 132px;
            height: 34px;
        }
        .auto-style10 {
            width: 265px;
            height: 34px;
        }
        .auto-style11 {
            width: 205px;
            height: 34px;
        }
        .auto-style12 {
            height: 34px;
        }
        .auto-style5 {
            width: 132px;
            height: 30px;
        }
        .auto-style6 {
            width: 265px;
            height: 30px;
        }
        .auto-style7 {
            width: 205px;
            height: 30px;
        }
        .auto-style8 {
            height: 30px;
        }
        .auto-style13 {
            width: 132px;
            height: 33px;
        }
        .auto-style14 {
            width: 265px;
            height: 33px;
        }
        .auto-style15 {
            width: 205px;
            height: 33px;
        }
        .auto-style16 {
            height: 33px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td class="auto-style9"></td>
            <td class="auto-style10">Choose The Course</td>
            <td class="auto-style11">
                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" Width="131px">
                </asp:DropDownList>
            </td>
            <td class="auto-style12"></td>
        </tr>
        <tr>
            <td class="auto-style5"></td>
            <td class="auto-style6">Choose Lecture Day To Edit</td>
            <td class="auto-style7">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="19px" Width="131px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td class="auto-style8"></td>
        </tr>
        <tr>
            <td class="auto-style13"></td>
            <td class="auto-style14">Type The New Name </td>
            <td class="auto-style15">
                <asp:TextBox ID="TextBox1" runat="server" Width="121px" Height="19px"></asp:TextBox>
            </td>
            <td class="auto-style16"></td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">
                <asp:Button ID="Button1" runat="server" Text="save changed" OnClick="Button1_Click" />
&nbsp;
                <asp:Button ID="Button2" runat="server" Text="cancel" PostBackUrl="~/taskset.aspx" CausesValidation="false"/>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

