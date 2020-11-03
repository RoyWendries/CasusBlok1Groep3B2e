<%@ Page Language="C#" MasterPageFile="~/ZuydStudieHulp.Master" Title="Inloggen" AutoEventWireup="true" CodeBehind="Inloggen.aspx.cs" Inherits="Casusblok1b2egroep3.Inloggen" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row no-gutters">
        <div class="col">
            <div class="loginBackground"></div>
            <div class="tinted-image"></div>
        </div>
        <div class="col">
            <div class="login">
                <div class="row no-gutters justify-content-center">

                    <div class="card">
                        <div class="card-body">
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
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1">
                                <Columns>
                                    <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                                </Columns>
                            </asp:GridView>
                            <br />
                            <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
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
</asp:Content>
