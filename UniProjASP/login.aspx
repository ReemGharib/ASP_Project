<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="UniProjASP.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 70%;
            margin-left: 201px;
            margin-top: 136px;
            margin-bottom: 41px;
        }
        .auto-style2 {
            height: 26px;
            width: 280px;
        }
        .auto-style3 {
            margin-left: 203px;
            margin-top: 22px;
        }
        .auto-style4 {
            width: 280px;
        }
        .auto-style5 {
            margin-left: 55px;
            margin-top: 0px;
        }
        .auto-style6 {
            width: 280px;
            height: 23px;
        }
        .auto-style7 {
            width: 280px;
            height: 14px;
        }
    </style>
</head>
<body style="width: 710px; height: 22px">
    <form id="form1" runat="server">
    <div>
    
        <asp:Button ID="Button1" runat="server" Text="Home" OnClick="Button1_Click" />
        <asp:Button ID="Button3" runat="server" Text="Register" OnClick="Button3_Click" />
        <asp:Button ID="Button2" runat="server" Text="Help" />
        <asp:Button ID="Button4" runat="server" Text="Contact Us" />
        <br />
    
    </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:TextBox ID="Usernametxt" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:TextBox ID="Passwordtxt" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
        <asp:Button ID="loginbtn" runat="server" CssClass="auto-style3" Height="29px" OnClick="loginbtn_Click" Text="Login" Width="63px" />
        <asp:Button ID="Exitbtn" runat="server" CssClass="auto-style5" Height="29px" OnClick="Exitbtn_Click" Text="Exit" Width="62px" />
    </form>
</body>
</html>
