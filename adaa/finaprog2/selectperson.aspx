<%@ Page Language="C#" AutoEventWireup="true" CodeFile="selectperson.aspx.cs" Inherits="selectperson" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style3 {
        }

        .im:hover {

            width:173px;
            height:202px;

        }
        h3 {
    text-shadow: 2px 1px blue;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width:100%;">
            <tr style="background-color:#1766f6">
                <td class="auto-style3" style="font-size:large; font-family:Arial;text-align:center; ">
                    <asp:Image ID="Image1" runat="server" BackColor="#1766F6" Height="300px" ImageUrl="~/images/adaa.png" Width="900px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="font-size:large; font-family:Arial;text-align:center; ">
                    <span id="result_box" class="" lang="en" tabindex="-1"><span>
                    <br />
                    <h2>Is an application to monitor the performance of students within the classroom</h2></span></span></td>
            </tr>
            <tr>
                <td class="auto-style3" style="font-size:large; font-family:Arial;text-align:center;">
                    <br />
                    <asp:ImageButton Class="im" ID="ImageButton1" runat="server" ImageUrl="~/images/ins.png" OnClick="ImageButton1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton Class="im" ID="ImageButton2" runat="server" ImageUrl="~/images/sup.png" OnClick="ImageButton2_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton Class="im" ID="ImageButton3" runat="server" ImageUrl="~/images/gua.png" OnClick="ImageButton3_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton Class="im" ID="ImageButton4" runat="server" ImageUrl="~/images/stu.png" OnClick="ImageButton4_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="font-size:large; font-family:Arial;text-align:center;">
                    <br />
                   <h3> This is a small moudle of FunEdu App </h3></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
