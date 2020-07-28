<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdmMenu.aspx.cs" Inherits="UniProjASP.AdmMenu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style4 {
            height: 38px;
            width: 191px;
        }
        .auto-style5 {
            width: 30%;
            margin-right: 0px;
        }
        .auto-style8 {
            height: 38px;
        }
        .auto-style9 {
            width: 30%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
    
    </div>
    <h1>Operation</h1>
    <table class="auto-style5">
        <tr>
            <td class="auto-style4">
                <asp:Button ID="stdRegistbtn" runat="server" Text="Student Registration" Width="243px" OnClick="stdRegistbtn_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Button ID="instRegistbtn" runat="server" Text="Instructor Registration" Width="242px" OnClick="instRegistbtn_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Button ID="stdCourseRegistbtn" runat="server" Text="Student Course Registration" Width="243px" OnClick="stdCourseRegistbtn_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Button ID="instCourseRegistbtn" runat="server" Text="Instructor Course Choice" Width="244px" OnClick="instCourseRegistbtn_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Button ID="stdResInsertbtn" runat="server" Text="Student Result Insertion" Width="242px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Button ID="createCoursebtn" runat="server" Text="Create Course" Width="243px" />
            </td>
        </tr>
    </table>
     <h1>Details</h1>  
        <table class="auto-style9">
            <tr>
                <td class="auto-style8">
                    <asp:Button ID="stdDetbtn" runat="server" Text="Student Details" Width="244px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:Button ID="instDetbtn" runat="server" Text="Instructor Details" Width="245px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style8">
                    &nbsp;</td>
            </tr>
        </table>
    </form>
    </body>
</html>
