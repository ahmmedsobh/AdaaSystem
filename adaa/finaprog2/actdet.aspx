<%@ Page Title="" Language="C#" MasterPageFile="~/Mas2.master" AutoEventWireup="true" CodeFile="actdet.aspx.cs" Inherits="actdet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table style="width: 100%;">
    <tr>
        <td class="auto-style4" style="width: 99px; height: 32px;">&nbsp;</td>
        <td style="height: 32px">activitey details</td>
        <td style="height: 32px"></td>
    </tr>
    <tr>
        <td style="height: 32px; width: 99px">&nbsp;</td>
        <td rowspan="2">
            <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" Width="453px">
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#330099" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                <SortedAscendingCellStyle BackColor="#FEFCEB" />
                <SortedAscendingHeaderStyle BackColor="#AF0101" />
                <SortedDescendingCellStyle BackColor="#F6F0C0" />
                <SortedDescendingHeaderStyle BackColor="#7E0000" />
            </asp:GridView>
        </td>
        <td style="height: 32px"></td>
    </tr>
    <tr>
        <td class="auto-style4" style="width: 99px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>

