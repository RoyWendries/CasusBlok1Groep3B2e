<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Casusblok1b2egroep3.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-right: 820px;
            margin-bottom: 15px;
        }
        .auto-style2 {
            margin-right: 50px;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:Image ID="ImgLogo" runat="server" CssClass="auto-style1" ImageUrl="~/Files/Img/ZuydStudiehulp.PNG" />
            <asp:Button ID="BtnLogin" runat="server" CssClass="auto-style2" Height="25px" OnClick="BtnLogin_Click" Text="Inloggen" Width="150px" />
            <asp:Button ID="BtnRegister" runat="server" CssClass="auto-style2" Height="25px" Text="Registreren" Width="150px" OnClick="BtnRegister_Click" />

        </div>
        <div>
            <asp:Image ID="ImgInlogBackground" runat="server" ImageUrl="~/Files/Img/InlogBackground.PNG" />
        </div>
    </form>
</body>
</html>
