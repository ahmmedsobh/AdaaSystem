<%@ Page Title="" Language="C#" MasterPageFile="~/Mas1.master" AutoEventWireup="true" CodeFile="actset.aspx.cs" Inherits="actset" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 108px;
        }
        .auto-style5 {
        }
        .auto-style19 {
            width: 134px;
            height: 30px;
        }
        .auto-style24 {
            width: 184px;
        }
        .auto-style33 {
            width: 184px;
            height: 33px;
        }
        .auto-style36 {
            height: 38px;
        }
        .auto-style37 {
            width: 284px;
            height: 38px;
        }
        .auto-style49 {
            width: 284px;
        }
        .auto-style52 {
            width: 250px;
            height: 38px;
        }
        .auto-style54 {
            width: 250px;
            height: 40px;
        }
        .auto-style55 {
            width: 250px;
        }
        .auto-style56 {
            width: 250px;
            height: 30px;
        }
        .auto-style61 {
            width: 266px;
            height: 38px;
        }
        .auto-style63 {
            width: 266px;
            height: 40px;
        }
        .auto-style64 {
            width: 266px;
        }
        .auto-style65 {
            width: 266px;
            height: 30px;
        }
        .auto-style66 {
            height: 30px;
        }
        .auto-style67 {
            width: 326px;
        }
        .auto-style69 {
            width: 326px;
            height: 38px;
        }
        .auto-style71 {
            width: 326px;
            height: 40px;
        }
        .auto-style74 {
            width: 103px;
            height: 30px;
        }
        .auto-style75 {
            width: 124px;
            height: 30px;
        }
        .auto-style76 {
            width: 250px;
            height: 45px;
        }
        .auto-style77 {
            width: 266px;
            height: 45px;
        }
        .auto-style78 {
            width: 326px;
            height: 45px;
        }
        .auto-style79 {
            width: 250px;
            height: 33px;
        }
        .auto-style80 {
            width: 266px;
            height: 33px;
        }
        .auto-style81 {
            width: 326px;
            height: 33px;
        }
        .auto-style82 {
            width: 284px;
            height: 33px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td class="auto-style2" colspan="2">&nbsp;</td>
            <td class="auto-style67" colspan="2">
                Choose the Process</td>
            <td class="auto-style49" colspan="2">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style79"></td>
            <td class="auto-style80">
                </td>
            <td class="auto-style81" colspan="2">
                </td>
            <td class="auto-style82" colspan="2">
                </td>
            <td class="auto-style33">
                </td>
        </tr>
        <tr>
            <td class="auto-style52"></td>
            <td class="auto-style61"></td>
            <td class="auto-style69" colspan="2">
                <asp:RadioButton ID="RadioButton1" runat="server" GroupName="1" Text="Add Activitey" />
            </td>
            <td class="auto-style37" colspan="2">
                </td>
            <td class="auto-style36">
                </td>
        </tr>
        <tr>
            <td class="auto-style76"></td>
            <td class="auto-style77"></td>
            <td class="auto-style78" colspan="2">
                <asp:RadioButton ID="RadioButton2" runat="server" GroupName="1" Text="Edit Activitey" />
            </td>
            <td class="auto-style49" rowspan="2" colspan="2">
                &nbsp;</td>
            <td class="auto-style5" rowspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style54"></td>
            <td class="auto-style63"></td>
            <td class="auto-style71" colspan="2">
                <asp:RadioButton ID="RadioButton3" runat="server" GroupName="1" Text="Delete Activitey" />
            </td>
        </tr>
        <tr>
            <td class="auto-style55">&nbsp;</td>
            <td class="auto-style64">&nbsp;</td>
            <td class="auto-style75" rowspan="2">
                &nbsp;
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Go" Width="122px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            <td class="auto-style74" rowspan="2">
                &nbsp;<asp:Button ID="Button4" runat="server" PostBackUrl="~/tasks.aspx" Text="Back" Width="73px" style="margin-left: 0px" />
            </td>
            <td class="auto-style66" rowspan="2">
                &nbsp;</td>
            <td class="auto-style19" colspan="2" rowspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style56"></td>
            <td class="auto-style65"></td>
        </tr>
        <tr>
            <td class="auto-style55">&nbsp;</td>
            <td class="auto-style64">&nbsp;</td>
            <td class="auto-style67" colspan="2">&nbsp;</td>
            <td class="auto-style49" colspan="2">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

