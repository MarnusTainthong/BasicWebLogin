<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="WebLoginApplication.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login page</title>
</head>
<body>
    <div>
        <form id="form1" runat="server">
            <h1>Login page</h1>
            <div style="margin-top: 20px">
                <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
                <asp:TextBox ID="TbUserId" runat="server" ></asp:TextBox>
            </div>
            <div style="margin-top: 10px">
                <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                <asp:TextBox ID="TbUserPass" runat="server" TextMode="Password"></asp:TextBox>
            </div>
            <div style="margin-top: 10px">
                <asp:Button ID="btnLogin" runat="server" Text="Login" style="width: 100px; height: 30px; margin-top: 10px" OnClick="btnLogin_Click"/>
            </div>     
    </form>
    </div>   
</body>
</html>
