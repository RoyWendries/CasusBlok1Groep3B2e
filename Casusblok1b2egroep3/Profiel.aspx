<%@ Page Title="Profiel" Language="C#" MasterPageFile="~/ZuydStudieHulpNavBar.Master" AutoEventWireup="true" CodeBehind="Profiel.aspx.cs" Inherits="Casusblok1b2egroep3.Profiel" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SQLProfielDataL">
    </asp:DataList>
    <asp:SqlDataSource ID="SQLProfielDataL" runat="server"></asp:SqlDataSource>
    
</asp:Content>
