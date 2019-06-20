<%@ Page Title="" Language="C#" MasterPageFile="~/Mas2.master" AutoEventWireup="true" CodeFile="mainpage.aspx.cs" Inherits="mainpage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table style="width: 100%;">
    <tr>
        <td colspan="3" style="height: 150px; background-color:#01b27c; width:100%; text-align:center; font-family:Arial; font-size:xx-large;margin:50px; padding:65px; color:white;">performance<br />
&nbsp;<asp:Label ID="Label4" runat="server" style="text-align:center; font-size:70px; font-family:Arial; color:white; "></asp:Label><span style="color:white; font-size:50px;">%</span>
            </td>
    </tr>
    <tr>
        <td style="height: 150px; background-color:#d94c52; width:30%; text-align:center; font-family:Arial; font-size:xx-large;margin:50px; padding:65px; color:white;">tasks 
            <br />
            <asp:Label ID="Label5" runat="server" style="text-align:center; font-size:50px; font-family:Arial; color:white;" ></asp:Label><span style="color:white; font-size:30px;">%</span>
            &nbsp;<br />
            <br />
            <asp:HyperLink style="text-decoration:none; color:white" ID="HyperLink1" runat="server" NavigateUrl="~/taskdet.aspx">more details</asp:HyperLink>
        </td>
        <td style="height: 150px; background-color:#a477c8; width:30%; text-align:center; font-family:Arial; font-size:xx-large;margin:50px; padding:65px; color:white;">activities<br />
            <asp:Label ID="Label6" runat="server" style="text-align:center; font-size:50px; font-family:Arial; color:white;"></asp:Label><span style="color:white; font-size:30px;">%</span>
            <br />
            &nbsp;<br />
            <asp:HyperLink style="text-decoration:none; color:white" ID="HyperLink2" runat="server" NavigateUrl="~/actdet.aspx">more details</asp:HyperLink>
        </td>
        <td style="height: 150px; background-color:#41a3ec; width:30%; text-align:center; font-family:Arial; font-size:xx-large;margin:50px; padding:65px; color:white;">behavior 
            <br />
            <asp:Label ID="label7" runat="server" style="text-align:center; font-size:50px; font-family:Arial; color:white;"></asp:Label><span style="color:white; font-size:30px;">%</span>
            &nbsp;<br />
            <br />
            <asp:HyperLink  style="text-decoration:none; color:white" ID="HyperLink3" runat="server" NavigateUrl="~/behdet.aspx">more details</asp:HyperLink>
        </td>
    </tr>
</table>
</asp:Content>

