<%@ Page Language="C#" MasterPageFile="~/ZuydStudieHulpNavBar.Master" Title="Registreren" AutoEventWireup="true" CodeBehind="Registreren.aspx.cs" Inherits="Casusblok1b2egroep3.Registreren" %>

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
                                <h1>Registreren</h1>
                                <br />
                                <asp:CompareValidator ID="CompareValidatorPassword" runat="server" ControlToCompare="txtbPassword2" ControlToValidate="txtbPassword" ErrorMessage="Het bevestigingswachtwoord komt niet overeen met het wachtwoord." Display="None"></asp:CompareValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" ControlToValidate="txtbEmail" ErrorMessage="Er is geen e-mailadres ingevuld." Display="None"></asp:RequiredFieldValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" ControlToValidate="txtbName" ErrorMessage="Er is geen naam ingevuld." Display="None"></asp:RequiredFieldValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server" ControlToValidate="txtbPassword" ErrorMessage="Er is geen wachtwoord ingevuld." Display="None"></asp:RequiredFieldValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword2" runat="server" ControlToValidate="txtbPassword2" ErrorMessage="Er is geen bevestigingswachtwoord ingevuld." Display="None"></asp:RequiredFieldValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidatorUserRoll" runat="server" ControlToValidate="RadioButtonListUserRole" ErrorMessage="Er is geen gebruikersrol geselecteerd." Display="None"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ControlToValidate="txtbEmail" Display="None" ErrorMessage="Er is geen geldig e-mailadres ingevuld. Controleer of het e-mailadres een @ en een punt bevat. En of er geen spaties in staan." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                <asp:CustomValidator ID="CustomValidatorPrivacyPolicy" runat="server" OnServerValidate="CheckCheckBoxPrivacyPolicy" Display="None" ErrorMessage="U dient akkoord te gaan met de privacy voorwaarden alvorens de webapplicatie te kunnen gebruiken."></asp:CustomValidator>
                                <asp:ValidationSummary ID="ValidationSummary" runat="server" class="alert alert-warning" role="alert" DisplayMode="List" />
                                <asp:Label ID="LabelEmail" runat="server" Text="E-mailadres"></asp:Label>
                                <br />
                                <asp:TextBox ID="txtbEmail" runat="server" CausesValidation="True"></asp:TextBox>
                                <br />
                                <br />
                                <asp:Label ID="LabelName" runat="server" Text="Naam"></asp:Label>
                                <br />
                                <asp:TextBox ID="txtbName" runat="server"></asp:TextBox>
                                <br />
                                <br />
                                <asp:Label ID="LabelPassword" runat="server" Text="Wachtwoord"></asp:Label>
                                <br />
                                <asp:TextBox ID="txtbPassword" runat="server" TextMode="Password"></asp:TextBox>
                                <br />
                                <br />
                                <asp:Label ID="LabelPassword2" runat="server" Text="Wachtwoord bevestigen"></asp:Label>
                                <br />
                                <asp:TextBox ID="txtbPassword2" runat="server" TextMode="Password"></asp:TextBox>
                                <br />
                                <br />
                                <asp:Label ID="LabelUserRole" runat="server" Text="Ik wil registreren als een"></asp:Label>
                                <br />
                                <asp:RadioButtonList ID="RadioButtonListUserRole" runat="server">
                                    <asp:ListItem Value="2">Docent</asp:ListItem>
                                    <asp:ListItem Value="3">Tutor</asp:ListItem>
                                    <asp:ListItem Value="4">Student</asp:ListItem>
                                </asp:RadioButtonList>
                                <br />
                                <asp:CheckBox ID="CheckBoxPrivacyPolicy" runat="server" Text=" Ik ga akkoord met privacy voorwaarden." />
                                <br />
                                <br />
                                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" Width="281px" BorderStyle="None" CellPadding="0" GridLines="None">
                                    <AlternatingRowStyle Wrap="False" />
                                    <Fields>
                                        <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" Visible="False" />
                                        <asp:BoundField DataField="Email" HeaderText="E-mailadres" SortExpression="Email" Visible="False" />
                                        <asp:BoundField DataField="Password" HeaderText="Wachtwoord" SortExpression="Password" Visible="False" />
                                        <asp:BoundField DataField="Name" HeaderText="Naam" SortExpression="Name" Visible="False" />
                                        <asp:BoundField DataField="Role" HeaderText="Account type" SortExpression="Role" Visible="False" />
                                        <asp:CommandField ButtonType="Button" CancelText="" DeleteText="" EditText="" InsertText="Registreren" NewText="" SelectText="" ShowCancelButton="False" ShowInsertButton="True" UpdateText="">
                                            <ControlStyle CssClass="btn btn-danger" />
                                        </asp:CommandField>
                                    </Fields>
                                    <InsertRowStyle Wrap="False" />
                                </asp:DetailsView>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StudiehulpDBConnectionString %>" DeleteCommand="DELETE FROM [tblUser] WHERE [ID] = @ID" InsertCommand="INSERT INTO [tblUser] ([Email], [Password], [Name], [Role]) VALUES (@Email, @Password, @Name, @Role)" SelectCommand="SELECT [ID], [Email], [Password], [Name], [Role] FROM [tblUser]" UpdateCommand="UPDATE [tblUser] SET [Email] = @Email, [Password] = @Password, [Name] = @Name, [Role] = @Role WHERE [ID] = @ID">
                                    <DeleteParameters>
                                    </DeleteParameters>
                                    <InsertParameters>
                                        <asp:ControlParameter ControlID="txtbEmail" Name="Email" />
                                        <asp:ControlParameter ControlID="txtbPassword2" Name="Password" />
                                        <asp:ControlParameter ControlID="txtbName" Name="Name" />
                                        <asp:ControlParameter ControlID="RadioButtonListUserRole" Name="Role" />
                                    </InsertParameters>
                                    <UpdateParameters>
                                    </UpdateParameters>
                                </asp:SqlDataSource>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
