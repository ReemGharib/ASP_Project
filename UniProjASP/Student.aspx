<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Student.aspx.cs" Inherits="UniProjASP.Student" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 195px">
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:Button ID="coursesbtn" runat="server" Text="Registration of a Course" Width="275px" OnClick="coursesbtn_Click" />
        <p>
            <asp:Button ID="marksbtn" runat="server" Height="26px" Text="Marks" Width="275px" OnClick="marksbtn_Click" />
        </p>
        <p>
            <asp:Button ID="creditsbtn" runat="server" Text="Credits" Width="275px" OnClick="creditsbtn_Click1" />
        </p>
        <asp:Button ID="languagesbtn" runat="server" Text="Languages" Width="275px" />
        <p>
            <asp:Button ID="RegCourses" runat="server" OnClick="RegCourses_Click" Text="Registered Courses" Width="275px" />
        </p>
        <br />
        <asp:Button ID="AllCoursesbtn" runat="server" OnClick="AllCoursesbtn_Click" Text="All Courses" Width="275px" />
    </form>
</body>
</html>
