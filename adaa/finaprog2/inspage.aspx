<%@ Page Title="" Language="C#" MasterPageFile="~/Mas1.master" AutoEventWireup="true" CodeFile="inspage.aspx.cs" Inherits="inputpage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 337px;
        }
        .auto-style3 {
            height: 32px;

            
        }
        #HyperLink1{

            text-decoration:none;
        }
        #HyperLink2{

            text-decoration:none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%;">
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style2" rowspan="3" style="background-color:lightgreen; font-size:xx-large; color:white; text-align:center; width:20%; border:6px; font-family:Arial;">
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/tasks.aspx" ForeColor="White">Taskes</asp:HyperLink>
        <br /><p style="font-size:medium;">hoose this to add or edit or delete course </p>
        </td>
        <td class="auto-style2" rowspan="3" style="background-color:gray; font-size:xx-large; color:white; text-align:center; width:20%; border:6px; font-family:Arial;">
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/behaviors.aspx" ForeColor="White">Behavior</asp:HyperLink>
       <br /><p style="font-size:medium;">choose this to add or edit or delete behavior</p>
        </td>
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

