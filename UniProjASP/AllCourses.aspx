<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AllCourses.aspx.cs" Inherits="UniProjASP.AllCourses" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Cid" DataSourceID="SqlDataSource1" Height="202px" Width="827px">
            <Columns>
                <asp:BoundField DataField="Cid" HeaderText="Cid" ReadOnly="True" SortExpression="Cid" />
                <asp:BoundField DataField="Cname" HeaderText="Cname" SortExpression="Cname" />
                <asp:BoundField DataField="credits" HeaderText="credits" SortExpression="credits" />
                <asp:BoundField DataField="Semester" HeaderText="Semester" SortExpression="Semester" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityprojConnectionString %>" SelectCommand="SELECT [Cid], [Cname], [credits], [Semester] FROM [Course]"></asp:SqlDataSource>
        <asp:Button ID="Button1" runat="server" Height="34px" OnClick="Button1_Click" Text="Back" Width="60px" />
    </form>
</body>
</html>
