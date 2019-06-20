<%@ Page Title="" Language="C#" MasterPageFile="~/Mas1.master" AutoEventWireup="true" CodeFile="activities.aspx.cs" Inherits="employee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 337px;
        }
        .auto-style3 {
            height: 32px;
        }
        .h1{

            text-decoration:none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style2" rowspan="3" style="background-color:lightgreen; font-size:xx-large; color:white; text-align:center; width:20%; border:6px; font-family:Arial;">
                <asp:HyperLink CssClass="h1" ID="HyperLink1" runat="server" ForeColor="White" NavigateUrl="~/actjoin.aspx" >Activities joins</asp:HyperLink>
                <p style="font-size:medium;">choose this to managment activities </p>
            </td>
            <td rowspan="3" style="background-color:gray; font-size:xx-large; color:white; text-align:center; width:20%; border:6px; font-family:Arial">
                <asp:HyperLink CssClass="h1" ID="HyperLink2" runat="server" ForeColor="White" NavigateUrl="~/actset.aspx">Activities Setting</asp:HyperLink>
                <p style="font-size:medium;">choose this to add , edit and delete activities</p></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3"></td>
            <td class="auto-style3"></td>
        </tr>
    </table>
</asp:Content>

