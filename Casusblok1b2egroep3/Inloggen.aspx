<%@ Page Language="C#" MasterPageFile="~/ZuydStudieHulpNavBar.Master" Title="Inloggen" AutoEventWireup="true" CodeBehind="Inloggen.aspx.cs" Inherits="Casusblok1b2egroep3.Inloggen" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row no-gutters">
        <div class="col">
            <div class="loginBackground"></div>
            <div class="tinted-image"></div>
        </div>
        <div class="col">
            <div class="login">
                <div class="row no-gutters justify-content-center h-100">
                    <div class="row no-gutters justify-content-center my-auto">
                        <div class="card shadow">
                            <div class="card-body">
                                <h1>Inloggen</h1>
                                <br />
                                <asp:Label ID="LabelFalseLogin" runat="server" Text=""></asp:Label>
                                <br />
                                <asp:Label ID="LabelEmail" runat="server" Text="E-mailadres"></asp:Label>
                                <br />
                                <asp:TextBox ID="txtbEmail" runat="server"></asp:TextBox>
                                <br />
                                <br />
                                <asp:Label ID="LabelPassword" runat="server" Text="Wachtwoord"></asp:Label>
                                <br />
                                <asp:TextBox ID="txtbPassword" runat="server" TextMode="Password" AutoPostBack="True"></asp:TextBox>
                                <br />
                                <br />
                                <div class="UserIDList"><asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="ID" DataValueField="ID">
            </asp:DropDownList></div>
                                <br />
                                <asp:Button ID="btnLogin" runat="server" class="btn btn-danger" Text="Login" OnClick="btnLogin_Click" />
                            </div>
                        </div>
                    </div>
                </div>
                <div>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StudiehulpDBConnectionString %>" SelectCommand="SELECT [ID] FROM [tblUser] WHERE (([Email] = @Email) AND ([Password] = @Password))">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="txtbEmail" Name="Email" PropertyName="Text" />
                            <asp:ControlParameter ControlID="txtbPassword" Name="Password" PropertyName="Text" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
