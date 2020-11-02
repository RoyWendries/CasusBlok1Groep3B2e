<%@ Page Language="C#" MasterPageFile="~/ZuydStudieHulp.Master" Title="Home" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Casusblok1b2egroep3.Home" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
</asp:Content>