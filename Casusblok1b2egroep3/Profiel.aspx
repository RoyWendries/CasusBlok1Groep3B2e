<%@ Page Title="Profiel" Language="C#" MasterPageFile="~/ZuydStudieHulpNavBar.Master" AutoEventWireup="true" CodeBehind="Profiel.aspx.cs" Inherits="Casusblok1b2egroep3.Profiel" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:ListView ID="ListView1" runat="server" DataSourceID="SQLProfielLV">
        <AlternatingItemTemplate>
            <span style="">Name:
            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                <br />
                Password:
            <asp:Label ID="PasswordLabel" runat="server" Text='<%# Eval("Password") %>' />
                <br />
                Email:
            <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                <br />
                Opleiding:
            <asp:Label ID="OpleidingLabel" runat="server" Text='<%# Eval("Opleiding") %>' />
                <br />
                Leerjaar:
            <asp:Label ID="LeerjaarLabel" runat="server" Text='<%# Eval("Leerjaar") %>' />
                <br />
                Klas:
            <asp:Label ID="KlasLabel" runat="server" Text='<%# Eval("Klas") %>' />
                <br />
                <br />
            </span>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <span style="">Name:
            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                <br />
                Password:
            <asp:TextBox ID="PasswordTextBox" runat="server" Text='<%# Bind("Password") %>' />
                <br />
                Email:
            <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                <br />
                Opleiding:
            <asp:TextBox ID="OpleidingTextBox" runat="server" Text='<%# Bind("Opleiding") %>' />
                <br />
                Leerjaar:
            <asp:TextBox ID="LeerjaarTextBox" runat="server" Text='<%# Bind("Leerjaar") %>' />
                <br />
                Klas:
            <asp:TextBox ID="KlasTextBox" runat="server" Text='<%# Bind("Klas") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                <br />
                <br />
            </span>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <span>No data was returned.</span>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <span style="">Name:
            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                <br />
                Password:
            <asp:TextBox ID="PasswordTextBox" runat="server" Text='<%# Bind("Password") %>' />
                <br />
                Email:
            <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                <br />
                Opleiding:
            <asp:TextBox ID="OpleidingTextBox" runat="server" Text='<%# Bind("Opleiding") %>' />
                <br />
                Leerjaar:
            <asp:TextBox ID="LeerjaarTextBox" runat="server" Text='<%# Bind("Leerjaar") %>' />
                <br />
                Klas:
            <asp:TextBox ID="KlasTextBox" runat="server" Text='<%# Bind("Klas") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                <br />
                <br />
            </span>
        </InsertItemTemplate>
        <ItemTemplate>
            <span style="">Name:
            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                <br />
                Password:
            <asp:Label ID="PasswordLabel" runat="server" Text='<%# Eval("Password") %>' />
                <br />
                Email:
            <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                <br />
                Opleiding:
            <asp:Label ID="OpleidingLabel" runat="server" Text='<%# Eval("Opleiding") %>' />
                <br />
                Leerjaar:
            <asp:Label ID="LeerjaarLabel" runat="server" Text='<%# Eval("Leerjaar") %>' />
                <br />
                Klas:
            <asp:Label ID="KlasLabel" runat="server" Text='<%# Eval("Klas") %>' />
                <br />
                <br />
            </span>
        </ItemTemplate>
        <LayoutTemplate>
            <div id="itemPlaceholderContainer" runat="server" style="">
                <span runat="server" id="itemPlaceholder" />
            </div>
            <div style="">
            </div>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <span style="">Name:
            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                <br />
                Password:
            <asp:Label ID="PasswordLabel" runat="server" Text='<%# Eval("Password") %>' />
                <br />
                Email:
            <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                <br />
                Opleiding:
            <asp:Label ID="OpleidingLabel" runat="server" Text='<%# Eval("Opleiding") %>' />
                <br />
                Leerjaar:
            <asp:Label ID="LeerjaarLabel" runat="server" Text='<%# Eval("Leerjaar") %>' />
                <br />
                Klas:
            <asp:Label ID="KlasLabel" runat="server" Text='<%# Eval("Klas") %>' />
                <br />
                <br />
            </span>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SQLProfielLV" runat="server" ConnectionString="<%$ ConnectionStrings:StudiehulpDBConnectionString %>" SelectCommand="SELECT tblUser.Name, tblUser.Password, tblUser.Email, tblStudyProgram.Program AS Opleiding, tblYear.Year AS Leerjaar, tblClass.Class AS Klas FROM tblClass FULL OUTER JOIN tblUser ON tblClass.ID = tblUser.Class FULL OUTER JOIN tblYear ON tblClass.Year = tblYear.ID FULL OUTER JOIN tblStudyProgram ON tblClass.Program = tblStudyProgram.ID WHERE (tblUser.ID = @UserID)">
        <SelectParameters>
            <asp:CookieParameter CookieName="UserID" Name="UserID" />
        </SelectParameters>
    </asp:SqlDataSource>


<asp:ListView ID="ListView2" runat="server" DataSourceID="SQLProfielLVOnderwijseenheden">
    <AlternatingItemTemplate>
        <tr style="">
            <td>
                <asp:Label ID="NaamLabel" runat="server" Text='<%# Eval("Naam") %>' />
            </td>
            <td>
                <asp:Label ID="OnderwijseenheidLabel" runat="server" Text='<%# Eval("Onderwijseenheid") %>' />
            </td>
        </tr>
    </AlternatingItemTemplate>
    <EditItemTemplate>
        <tr style="">
            <td>
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
            </td>
            <td>
                <asp:TextBox ID="NaamTextBox" runat="server" Text='<%# Bind("Naam") %>' />
            </td>
            <td>
                <asp:TextBox ID="OnderwijseenheidTextBox" runat="server" Text='<%# Bind("Onderwijseenheid") %>' />
            </td>
        </tr>
    </EditItemTemplate>
    <EmptyDataTemplate>
        <table runat="server" style="">
            <tr>
                <td>No data was returned.</td>
            </tr>
        </table>
    </EmptyDataTemplate>
    <InsertItemTemplate>
        <tr style="">
            <td>
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
            </td>
            <td>
                <asp:TextBox ID="NaamTextBox" runat="server" Text='<%# Bind("Naam") %>' />
            </td>
            <td>
                <asp:TextBox ID="OnderwijseenheidTextBox" runat="server" Text='<%# Bind("Onderwijseenheid") %>' />
            </td>
        </tr>
    </InsertItemTemplate>
    <ItemTemplate>
        <tr style="">
            <td>
                <asp:Label ID="NaamLabel" runat="server" Text='<%# Eval("Naam") %>' />
            </td>
            <td>
                <asp:Label ID="OnderwijseenheidLabel" runat="server" Text='<%# Eval("Onderwijseenheid") %>' />
            </td>
        </tr>
    </ItemTemplate>
    <LayoutTemplate>
        <table runat="server">
            <tr runat="server">
                <td runat="server">
                    <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                        <tr runat="server" style="">
                            <th runat="server">Naam</th>
                            <th runat="server">Onderwijseenheid</th>
                        </tr>
                        <tr id="itemPlaceholder" runat="server">
                        </tr>
                    </table>
                </td>
            </tr>
            <tr runat="server">
                <td runat="server" style=""></td>
            </tr>
        </table>
    </LayoutTemplate>
    <SelectedItemTemplate>
        <tr style="">
            <td>
                <asp:Label ID="NaamLabel" runat="server" Text='<%# Eval("Naam") %>' />
            </td>
            <td>
                <asp:Label ID="OnderwijseenheidLabel" runat="server" Text='<%# Eval("Onderwijseenheid") %>' />
            </td>
        </tr>
    </SelectedItemTemplate>
</asp:ListView>
<asp:SqlDataSource ID="SQLProfielLVOnderwijseenheden" runat="server" ConnectionString="<%$ ConnectionStrings:StudiehulpDBConnectionString %>" SelectCommand="SELECT tblUser.Name AS Naam, tblLesson.Lesson AS Onderwijseenheid FROM tblUser INNER JOIN tblUserLesson ON tblUser.ID = tblUserLesson.UserID INNER JOIN tblLesson ON tblUserLesson.LessonID = tblLesson.ID WHERE (tblUser.ID = @UserID)">
    <SelectParameters>
        <asp:CookieParameter CookieName="UserID" Name="UserID" />
    </SelectParameters>
</asp:SqlDataSource>


</asp:Content>
