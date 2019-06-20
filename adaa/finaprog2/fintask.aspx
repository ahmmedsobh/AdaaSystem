<%@ Page Title="" Language="C#" MasterPageFile="~/Mas1.master" AutoEventWireup="true" CodeFile="fintask.aspx.cs" Inherits="fintask" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 223px;
        }
        .auto-style4 {
            width: 121px;
        }
        .auto-style7 {
            width: 121px;
            height: 32px;
        }
        .auto-style15 {
            width: 223px;
            height: 47px;
        }
        .auto-style9 {
            height: 47px;
            width: 146px;
        }
        .auto-style16 {
            height: 47px;
        }
        .auto-style18 {
            height: 40px;
        }
        .auto-style20 {
            height: 44px;
        }
        .auto-style14 {
            height: 43px;
        }

        /*.btn {
    background-color:#9e9e9e; 
    border: none;
    color: black;
    padding: 12px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
}*/
        .auto-style21 {
            width: 316px;
            height: 32px;
        }
        .auto-style22 {
            height: 40px;
            width: 316px;
        }
        .auto-style23 {
            height: 44px;
            width: 316px;
        }
        .auto-style24 {
            height: 43px;
            width: 316px;
        }
        .auto-style25 {
            height: 40px;
            width: 223px;
        }
        .auto-style26 {
            height: 44px;
            width: 223px;
        }
        .auto-style27 {
            height: 43px;
            width: 223px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td class="auto-style15"></td>
            <td class="auto-style7">Class name</td>
            <td class="auto-style21">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td class="auto-style9"></td>
            <td class="auto-style16"></td>
        </tr>
        <tr>
            <td class="auto-style25"></td>
            <td class="auto-style18">Depertment name</td>
            <td class="auto-style22">
                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td class="auto-style18" colspan="2"></td>
        </tr>
        <tr>
            <td class="auto-style26"></td>
            <td class="auto-style20">Course name</td>
            <td class="auto-style23">
                <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" Height="16px" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" Width="74px">
                    <asp:ListItem Value="0">null</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style20"></td>
            <td class="auto-style20"></td>
        </tr>
        <tr>
            <td class="auto-style27"></td>
            <td class="auto-style14">Task</td>
            <td class="auto-style24">
                <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged" Width="78px">
                    <asp:ListItem Value="0">null</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style14"></td>
            <td class="auto-style14"></td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button class="btn" ID="Button1" runat="server" OnClick="Button1_Click" Text="Display" Width="90px" />
            &nbsp;<asp:Button class="btn" ID="Button2" runat="server" OnClick="Button2_Click" Text="Refresh" />
            </td>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4" colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                <asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" Text="Select All Taske State Equals True" Visible="False" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4" colspan="3" rowspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" PageSize="1" Width="397px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField EditText="Edit State" ShowEditButton="True" />
                        <asp:TemplateField HeaderText="Student Name">
                            <EditItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("fullname") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("fullname") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Task State">
                            <EditItemTemplate>
                                <asp:CheckBox ID="CheckBox2" runat="server" Checked='<%# Bind("task_state") %>' />
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label_taskstate" runat="server" Text='<%# Bind("task_state") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
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

