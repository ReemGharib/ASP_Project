<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Markss.aspx.cs" Inherits="UniProjASP.Markss" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Height="278px" Width="683px">
            <Columns>
                <asp:BoundField DataField="Marks" HeaderText="Marks" SortExpression="Marks" />
                <asp:BoundField DataField="semester" HeaderText="semester" SortExpression="semester" />
                <asp:BoundField DataField="credits" HeaderText="credits" SortExpression="credits" />
                <asp:BoundField DataField="Cid" HeaderText="Cid" SortExpression="Cid" />
                <asp:BoundField DataField="Cname" HeaderText="Cname" SortExpression="Cname" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityprojConnectionString %>" SelectCommand="SELECT [Marks], [semester], [credits], [Cid], [Cname] FROM [StudentCourse] WHERE ([Sid] = @Sid)">
            <SelectParameters>
                <asp:ControlParameter ControlID="Label1" Name="Sid" PropertyName="Text" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    
    </div>
        <p>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </p>
    </form>
</body>
</html>
