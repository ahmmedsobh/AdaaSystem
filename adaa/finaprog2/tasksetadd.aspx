<%@ Page Title="" Language="C#" MasterPageFile="~/Mas1.master" AutoEventWireup="true" CodeFile="tasksetadd.aspx.cs" Inherits="tasksetadd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style5 {
            width: 191px;
        }
        .auto-style6 {
        }
        .auto-style7 {
            width: 167px;
        }
        .auto-style8 {
            width: 138px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 99%;">
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style8">
                <asp:Label ID="Label4" runat="server" Text="Choose The Course"></asp:Label>
                            </td>
            <td class="auto-style5">
                                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Height="17px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="180px">
                                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style8">
                                &nbsp;<asp:Label ID="Label2" runat="server" Text=" Task Name"></asp:Label>
                            </td>
            <td class="auto-style5">
                                <asp:TextBox ID="TextBox1" runat="server" Width="175px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Pelase Enter Task Name" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
            </td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style8">
                                <asp:Button ID="Button1" runat="server" Text="Add Task " OnClick="Button1_Click" />
                            </td>
            <td class="auto-style5">
                                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Back" Width="133px" CausesValidation="False" PostBackUrl="~/taskset.aspx">
                                </asp:Button>
                                 </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style6" colspan="2">
                <asp:Label ID="Label3" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

