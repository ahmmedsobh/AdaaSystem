<%@ Page Title="" Language="C#" MasterPageFile="~/Mas1.master" AutoEventWireup="true" CodeFile="taskset.aspx.cs" Inherits="taskset" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
        }
        .auto-style5 {
        }
        .auto-style19 {
        }
        .auto-style24 {
            width: 184px;
        }
        .auto-style25 {
            width: 161px;
        }
        .auto-style26 {
            width: 50px;
        }
        .auto-style27 {
            width: 215px;
        }
        .auto-style28 {
            width: 78px;
        }
        .auto-style29 {
            width: 50px;
            height: 23px;
        }
        .auto-style30 {
            width: 215px;
            height: 23px;
        }
        .auto-style31 {
            width: 161px;
            height: 23px;
        }
        .auto-style32 {
            width: 78px;
            height: 23px;
        }
        .auto-style33 {
            width: 184px;
            height: 23px;
        }
        .auto-style34 {
            width: 50px;
            height: 44px;
        }
        .auto-style35 {
            width: 215px;
            height: 44px;
        }
        .auto-style36 {
            height: 44px;
        }
        .auto-style37 {
            width: 78px;
            height: 44px;
        }
        .auto-style43 {
            height: 45px;
        }
        .auto-style44 {
            width: 50px;
            height: 45px;
        }
        .auto-style45 {
            width: 215px;
            height: 45px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td class="auto-style2" colspan="2">&nbsp;</td>
            <td class="auto-style25">
                Choose the Process</td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style29"></td>
            <td class="auto-style30">
                </td>
            <td class="auto-style31">
                </td>
            <td class="auto-style32">
                </td>
            <td class="auto-style33">
                </td>
        </tr>
        <tr>
            <td class="auto-style34"></td>
            <td class="auto-style35"></td>
            <td class="auto-style36">
                <asp:RadioButton ID="RadioButton1" runat="server" GroupName="1" Text="Add Task" />
            </td>
            <td class="auto-style37">
                </td>
            <td class="auto-style36">
                </td>
        </tr>
        <tr>
            <td class="auto-style44"></td>
            <td class="auto-style45"></td>
            <td class="auto-style43">
                <asp:RadioButton ID="RadioButton2" runat="server" GroupName="1" Text="Edit Task" />
            </td>
            <td class="auto-style28" rowspan="2">
                &nbsp;</td>
            <td class="auto-style5" rowspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style44"></td>
            <td class="auto-style45"></td>
            <td class="auto-style43">
                <asp:RadioButton ID="RadioButton3" runat="server" GroupName="1" Text="Delete Task" />
            </td>
        </tr>
        <tr>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style27">&nbsp;</td>
            <td class="auto-style19" colspan="3" rowspan="2">
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Go" Width="122px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button4" runat="server" PostBackUrl="~/tasks.aspx" Text="Back" Width="73px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style44"></td>
            <td class="auto-style45"></td>
        </tr>
        <tr>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style27">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

