<%@ Page Title="" Language="C#" MasterPageFile="~/Mas1.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        width: 94px;
    }
    .auto-style2 {
        height: 32px;
    }
        .auto-style6 {
            height: 44px;
        }
        .auto-style9 {
            height: 28px;
        }
        .auto-style12 {
            width: 77px;
            height: 100px;
        }
        .auto-style13 {
            width: 479px;
        }
        .auto-style14 {
            height: 32px;
            width: 479px;
        }
        .auto-style15 {
            height: 28px;
            width: 479px;
        }
        .auto-style16 {
            height: 44px;
            width: 479px;
        }
        .auto-style17 {
            width: 239px;
        }
        .auto-style21 {
            height: 32px;
            width: 77px;
        }
        .auto-style22 {
            height: 28px;
            width: 77px;
        }
        .auto-style23 {
            height: 44px;
            width: 77px;
        }
        .auto-style24 {
            height: 32px;
            width: 239px;
        }
        .auto-style25 {
            height: 28px;
            width: 239px;
        }
        .auto-style26 {
            height: 44px;
            width: 239px;
        }

        .roundCorner
{
    border-radius: 25px;
    background-color:#6300a5;
    color:#FFFFFF;
    text-align :center;
    font-family:arial, helvetica, sans-serif;
    padding: 5px 10px 10px 10px;
    font-weight:bold;
    width:100px;
    height:30px;
} 
        .txt{
            border-radius:5px;
        }
        a {
    text-shadow: 0 0 3px #FF0000;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
    <tr>
        <td class="auto-style13">&nbsp;</td>
        <td class="auto-style12">&nbsp;</td>
        <td class="auto-style17">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
        
    <tr>
        <td class="auto-style14"></td>
        <td class="auto-style21"><a>UserName</a></td>
        <td class="auto-style24">
            &nbsp;<asp:TextBox ID="TextBox1" class="txt" runat="server" Width="215px"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Pelase Enter UserName" ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
        <td class="auto-style2"></td>
    </tr>
    <tr>
        <td class="auto-style15"></td>
        <td class="auto-style22"><a>Passwrod</a></td>
        <td class="auto-style25">
            &nbsp;<asp:TextBox ID="TextBox2" class="txt" runat="server" Width="215px"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Pelase Enter Password" ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
        <td class="auto-style9"></td>
    </tr>
    <tr>
        <td class="auto-style16"></td>
        <td class="auto-style23"></td>
        <td class="auto-style26">
            &nbsp; &nbsp;<asp:Button ID="Button1" class="roundCorner" runat="server" Text="Login" OnClick="Button1_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button2" class="roundCorner" runat="server" OnClick="Button2_Click" Text="Cancel" CausesValidation="False">
            </asp:Button>
            &nbsp;&nbsp;&nbsp;&nbsp;<asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" Width="193px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
        
        <td class="auto-style6"></td>
    </tr>
</table>
</asp:Content>

