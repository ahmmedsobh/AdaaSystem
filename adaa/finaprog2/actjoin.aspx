<%@ Page Title="" Language="C#" MasterPageFile="~/Mas1.master" AutoEventWireup="true" CodeFile="actjoin.aspx.cs" Inherits="actjoin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style5 {
            width: 245px;
            height: 32px;
        }
        .auto-style7 {
            width: 121px;
            height: 32px;
        }
        .auto-style8 {
            height: 32px;
        }
        .auto-style2 {
            width: 245px;
        }
        .auto-style4 {
            width: 121px;
        }
        .auto-style9 {
            width: 137px;
            height: 32px;
        }
        .auto-style10 {
            width: 137px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style9">select student
                <br />
                <asp:RadioButton ID="RadioButton1" runat="server" AutoPostBack="True" GroupName="g1" OnCheckedChanged="RadioButton1_CheckedChanged" Text="normall" />
                <br />
                <asp:RadioButton ID="RadioButton2" runat="server" AutoPostBack="True" GroupName="g1" OnCheckedChanged="RadioButton2_CheckedChanged" Text="from depertment" />
            </td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5"></td>
            <td class="auto-style9">choose depertment</td>
            <td class="auto-style7">
                <asp:DropDownList ID="DropDownList3" runat="server" Enabled="False">
                </asp:DropDownList>
            </td>
            <td class="auto-style8">optionality (select students of depertment)</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style9">select activity</td>
            <td class="auto-style7">
                <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td class="auto-style8">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5"></td>
            <td class="auto-style9">select all</td>
            <td class="auto-style7">
                <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox1_CheckedChanged" Text="true for all" />
            </td>
            <td class="auto-style8">give true to all students</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style10">custimize </td>
            <td class="auto-style4">
                <asp:CheckBoxList ID="CheckBoxList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged">
                </asp:CheckBoxList>
            </td>
            <td>select students where not jolns</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style4">&nbsp; </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

