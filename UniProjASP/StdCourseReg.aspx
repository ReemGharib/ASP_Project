<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StdCourseReg.aspx.cs" Inherits="UniProjASP.StdCourseReg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 254px;
        }
        .auto-style2 {
            margin-left: 74px;
        }
        .auto-style4 {
            margin-left: 75px;
        }
        .auto-style5 {
            width: 357px;
        }
        .auto-style6 {
            width: 254px;
            height: 26px;
        }
        .auto-style7 {
            width: 357px;
            height: 26px;
        }
        .auto-style9 {
            width: 53%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <table class="auto-style9">
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label1" runat="server" Text="Enter Student ID:"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox1" runat="server" Width="195px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label2" runat="server" Text="Student Name"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox2" runat="server" Width="195px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label3" runat="server" Text="Department"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox7" runat="server" Width="196px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label4" runat="server" Text="Enter Course ID:"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox3" runat="server" Width="195px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label5" runat="server" Text="Course Name"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox4" runat="server" Width="195px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label6" runat="server" Text="Course Credit"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox5" runat="server" Width="195px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label7" runat="server" Text="Semester"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox6" runat="server" Width="195px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label8" runat="server" Text="Marks"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox8" runat="server" Width="193px"></asp:TextBox>
                </td>
            </tr>
        </table>
        <asp:Button ID="saveDetbtn" runat="server" CssClass="auto-style2" Text="Save" Width="92px" OnClick="saveDetbtn_Click" />
        <asp:Button ID="cancelbtn" runat="server" CssClass="auto-style4" Text="Cancel" Width="92px" OnClick="cancelbtn_Click" />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Sid,Cid" DataSourceID="SqlDataSource1" Height="194px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="719px">
            <Columns>
                <asp:BoundField DataField="Sid" HeaderText="Sid" ReadOnly="True" SortExpression="Sid" />
                <asp:BoundField DataField="SFname" HeaderText="SFname" SortExpression="SFname" />
                <asp:BoundField DataField="Major" HeaderText="Major" SortExpression="Major" />
                <asp:BoundField DataField="Cid" HeaderText="Cid" ReadOnly="True" SortExpression="Cid" />
                <asp:BoundField DataField="Cname" HeaderText="Cname" SortExpression="Cname" />
                <asp:BoundField DataField="credits" HeaderText="credits" SortExpression="credits" />
                <asp:BoundField DataField="semester" HeaderText="semester" SortExpression="semester" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityprojConnectionString %>" SelectCommand="SELECT [Sid], [SFname], [Major], [Cid], [Cname], [credits], [semester] FROM [StudentCourse]"></asp:SqlDataSource>
    </form>
</body>
</html>
