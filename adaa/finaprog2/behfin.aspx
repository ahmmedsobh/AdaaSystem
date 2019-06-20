<%@ Page Title="" Language="C#" MasterPageFile="~/Mas1.master" AutoEventWireup="true" CodeFile="behfin.aspx.cs" Inherits="behfin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style5 {
            width: 245px;
            height: 32px;
        }
        .auto-style8 {
            height: 32px;
        }
        .auto-style2 {
            width: 245px;
        }
        .auto-style9 {
            width: 245px;
            height: 23px;
        }
        .auto-style12 {
            height: 23px;
        }
        .auto-style13 {
            width: 101px;
            height: 32px;
        }
        .auto-style14 {
            width: 101px;
        }
        .auto-style15 {
            width: 101px;
            height: 23px;
        }
        .auto-style24 {
            width: 350px;
            height: 32px;
        }
        .auto-style19 {
            width: 231px;
            height: 33px;
        }
        .auto-style20 {
            height: 33px;
        }
        .auto-style22 {
            width: 350px;
            height: 33px;
        }
        .auto-style16 {
            width: 231px;
            height: 48px;
        }
        .auto-style17 {
            height: 48px;
        }
        .auto-style23 {
            width: 350px;
            height: 48px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%; margin-right: 0px;">
    <tr>
        <td class="auto-style5"></td>
        <td class="auto-style13">class name</td>
        <td class="auto-style24">
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            </asp:DropDownList>
        </td>
        <td class="auto-style8"></td>
    </tr>
    <tr>
        <td class="auto-style5"></td>
        <td class="auto-style8">depertment name</td>
        <td class="auto-style24">
            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
            </asp:DropDownList>
        </td>
        <td class="auto-style8"></td>
    </tr>
    <tr>
        <td class="auto-style19"></td>
        <td class="auto-style20">course name</td>
        <td class="auto-style22">
            <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" style="margin-left: 0px" Width="78px">
                <asp:ListItem Value="0">null</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td class="auto-style20"></td>
    </tr>
    <tr>
        <td class="auto-style16"></td>
        <td class="auto-style17">choose day</td>
        <td class="auto-style23">
            <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" Height="26px" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged" Width="84px">
                <asp:ListItem>null</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td class="auto-style17"></td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style14" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Display" Width="141px" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style9"></td>
        <td class="auto-style15" colspan="2">
            <asp:Label ID="Label1" runat="server" Text="Enter Degree"></asp:Label>
            &nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            &nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Set Degree To All Student" Width="172px" />
        </td>
        <td class="auto-style12"></td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style14" colspan="2" rowspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" PageSize="1" Width="428px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField EditText="Edit Degree" ShowEditButton="True" />
                    <asp:TemplateField HeaderText="Student Name">
                        <EditItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("fullname") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("fullname") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Behavier Degree">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("beh_degree") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("beh_degree") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerSettings PageButtonCount="1" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>

