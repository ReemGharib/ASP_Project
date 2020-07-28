<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentReg.aspx.cs" Inherits="UniProjASP.Administrator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 602px;
        }
        .auto-style3 {
            width: 602px;
            height: 23px;
        }
        .auto-style6 {
            width: 258px;
        }
        .auto-style7 {
            height: 26px;
            width: 258px;
        }
        .auto-style8 {
            width: 20%;
            height: 125px;
            margin-top: 7px;
        }
        .auto-style9 {
            height: 38px;
            width: 972px;
            margin-top: 39px;
        }
        .auto-style10 {
            width: 34%;
            margin-right: 236px;
        }
        .auto-style11 {
            height: 25px;
            width: 258px;
        }
        .auto-style12 {
            margin-left: 213px;
            margin-top: 0px;
        }
        .auto-style13 {
            width: 602px;
            height: 47px;
        }
        .auto-style14 {
            height: 42px;
            width: 602px;
        }
        .auto-style15 {
            margin-left: 216px;
        }
        .auto-style18 {
            margin-left: 212px;
            margin-top: 1px;
        }
        .auto-style23 {
            width: 602px;
            height: 26px;
        }
        .auto-style24 {
            height: 27px;
            width: 602px;
        }
        .auto-style25 {
            margin-left: 217px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        
        <h2>Student Creation/Update</h2>

        <table class="auto-style10">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Text="Student Code"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="First Name"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Text="Last Name"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label4" runat="server" Text="Address"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label5" runat="server" Text="E-mail"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label6" runat="server" Text="Phone"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style23">
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label7" runat="server" Text="Department"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">
                    <asp:DropDownList ID="ddlDep" runat="server">
                        <asp:ListItem>Select Department</asp:ListItem>
                        <asp:ListItem>Computer Science and engineering</asp:ListItem>
                        <asp:ListItem>Electrical and Electronic Enginnering</asp:ListItem>
                        <asp:ListItem>Bachelor of Business Administration</asp:ListItem>
                        <asp:ListItem>Pure Math</asp:ListItem>
                        <asp:ListItem>Electronics and telecommunication</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style23">
                    <asp:Label ID="Label14" runat="server" Text="Credits"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">
                    <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style24">
                    <asp:Label ID="Label15" runat="server" Text="Password"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">
                    <asp:TextBox ID="TextBox16" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">
                    <asp:Label ID="Label16" runat="server" Text="Gender:                        "></asp:Label>
                    <asp:CheckBox ID="male" runat="server" Text="Male     " />
                    <asp:CheckBox ID="female" runat="server" Text="Female" />
                </td>
            </tr>
            <tr>
                <td class="auto-style14">
                    <asp:Button ID="updateStdbtn" runat="server" CssClass="auto-style18" Text="Update Student" Width="128px" />
        <asp:Button ID="createStdbtn" runat="server" Text="Add Student" CssClass="auto-style12" OnClick="createStdtxt_Click" Width="126px" />
                    <br />
                    <asp:Button ID="cancelbtn" runat="server" CssClass="auto-style25" OnClick="cancelbtn_Click" Text="Cancel" Width="124px" />
                </td>
            </tr>
            
        </table>
        <h2 class="auto-style9">Student Drop</h2>
        <table class="auto-style8">
            <tr>
                <td class="auto-style11">
                    <asp:Label ID="Label8" runat="server" Text="Student Code"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label9" runat="server" Text="Student Name"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
        <p>
        <asp:Button ID="dropStdbtn" runat="server" CssClass="auto-style15" Text="Drop Student" Width="137px" OnClick="dropStdbtn_Click" />
        </p>
        <br/>
        
 
    </form>
    </body>
</html>
