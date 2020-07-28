<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InstructorReg.aspx.cs" Inherits="UniProjASP.InstructorReg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 260px;
        }
        .auto-style2 {
            width: 260px;
            height: 26px;
        }
        .auto-style3 {
            height: 26px;
        }
        .auto-style4 {
            width: 418px;
        }
        .auto-style5 {
            height: 26px;
            width: 418px;
        }
    </style>
</head>
<body style="width: 699px">
    <form id="form1" runat="server">
    <h1>Instructor Information </h1>
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label1" runat="server" Text="Instructor Id"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox1" runat="server" Width="263px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label2" runat="server" Text="Instructor FirstName"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox2" runat="server" Width="264px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label3" runat="server" Text="Instructor Last Name"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox3" runat="server" Height="20px" Width="263px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label4" runat="server" Text="Mobile No"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox4" runat="server" Width="262px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label5" runat="server" Text="Password"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox5" runat="server" Width="263px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label6" runat="server" Text="Department"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:DropDownList ID="ddlDepIns" runat="server">
                        <asp:ListItem>Select Department</asp:ListItem>
                        <asp:ListItem>Computer Science and Engineering </asp:ListItem>
                        <asp:ListItem>Electrical and Electronic Engineering</asp:ListItem>
                        <asp:ListItem>Bachelorof Business Administration</asp:ListItem>
                        <asp:ListItem>Pure Math</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    &nbsp;</td>
                <td class="auto-style4">
                    &nbsp;</td>
            </tr>
        </table>
    
        <asp:Button ID="savebtn" runat="server" OnClick="savebtn_Click" Text="Save " />
        <asp:Button ID="cancelbtn" runat="server" OnClick="cancelbtn_Click" Text="Cancel" />
        <asp:Button ID="deleteInsbtn" runat="server" OnClick="deleteInsbtn_Click" Text="Delete" />
    
    </form>
</body>
</html>
