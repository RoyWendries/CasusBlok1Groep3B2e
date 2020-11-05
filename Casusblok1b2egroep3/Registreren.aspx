<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registreren.aspx.cs" Inherits="Casusblok1b2egroep3.Registreren" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:CompareValidator ID="CompareValidatorPassword" runat="server" ControlToCompare="txtbPassword2" ControlToValidate="txtbPassword" ErrorMessage="Het bevestigingswachtwoord komt niet overeen met het wachtwoord." Display="None"></asp:CompareValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" ControlToValidate="txtbEmail" ErrorMessage="Er is geen e-mailadres ingevuld." Display="None"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server" ControlToValidate="txtbPassword" ErrorMessage="Er is geen wachtwoord ingevuld." Display="None"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword2" runat="server" ControlToValidate="txtbPassword2" ErrorMessage="Er is geen bevestigingswachtwoord ingevuld." Display="None"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorUserRoll" runat="server" ControlToValidate="DropDownUserRoll" ErrorMessage="Er is geen account type geselecteerd." Display="None"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ControlToValidate="txtbEmail" Display="None" ErrorMessage="Er is geen geldig e-mailadres ingevuld. Controleer of het e-mailadres een @ en een punt bevat. En of er geen spaties in staan." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="CustomValidator" ControlToValidate="DropDownUserRoll"></asp:CustomValidator>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            <br />
            <asp:Label ID="LabelEmail" runat="server" Text="E-mailadres"></asp:Label>
            <br />
            <asp:TextBox ID="txtbEmail" runat="server" CausesValidation="True"></asp:TextBox>
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
            Account type<br />
            <asp:DropDownList ID="DropDownUserRoll" runat="server">
            </asp:DropDownList>
            <br />
            <br />
            <asp:CheckBox ID="CheckBoxPrivacyPolicy" runat="server" Text="Ik ga akkoord met privacy voorwaarden." />
            <br />
            <br />
            <asp:Button ID="btnSignUp" runat="server" OnClick="BtnSignUp_Click" Text="Registreren" />
        </div>
    </form>
</body>
</html>
