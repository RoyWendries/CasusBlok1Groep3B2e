<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Casusblok1b2egroep3.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }

        .auto-style2 {
            margin-top: 15px;
            margin-right: 50px;
            margin-bottom: 0px;
            margin-left: 50px;
        }

        .auto-style3 {
            margin-top: 15px;
            margin-right: 50px;
            margin-bottom: 35px;
            margin-left: 50px;
        }

        .auto-style4 {
            margin-top: 40px;
            margin-right: 50px;
            margin-bottom: 35px;
            margin-left: 100px;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <asp:Button ID="BtnVraag" runat="server" Text="Vraag" CssClass="auto-style3" Height="25px" Width="150px" OnClick="BtnVraag_Click" />

            <asp:Button ID="BtnUitleg" runat="server" Text="Uitleg" CssClass="auto-style3" Height="25px" Width="150px" OnClick="BtnUitleg_Click" />
        </div>
        <div class="auto-style1">
            <asp:Label ID="LblSearch" runat="server" Text="Zoek naar antwoorden" BorderWidth="1px" CssClass="auto-style2" Height="25px" Width="500px" BorderStyle="Groove"></asp:Label>
            <asp:Button ID="BtnStelVraag" runat="server" CssClass="auto-style2" Text="Stel een vraag" OnClick="BtnStelVraag_Click" />
        </div>
        <div>
            <asp:GridView ID="GrdVHome" runat="server" CssClass="auto-style4" OnSelectedIndexChanged="GrdVHome_SelectedIndexChanged">
            </asp:GridView>
            </div>
    </form>
</body>
</html>
