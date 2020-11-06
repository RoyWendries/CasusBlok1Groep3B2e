<%@ Page Language="C#" MasterPageFile="~/ZuydStudieHulpNavBar.Master" AutoEventWireup="true" CodeBehind="PostVerwijderen.aspx.cs" Inherits="Casusblok1b2egroep3.PostVerwijderen" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceholder1" runat="server">

    <asp:ListView ID="ListView1" runat="server" DataKeyNames="ID" DataSourceID="SQLPostVerwijderenLV">
        <AlternatingItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                </td>
                <td>
                    <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                </td>
                <td>
                    <asp:Label ID="SubjectLabel" runat="server" Text='<%# Eval("Subject") %>' />
                </td>
                <td>
                    <asp:Label ID="PostLabel" runat="server" Text='<%# Eval("Post") %>' />
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
                    <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
                </td>
                <td>
                    <asp:TextBox ID="SubjectTextBox" runat="server" Text='<%# Bind("Subject") %>' />
                </td>
                <td>
                    <asp:TextBox ID="PostTextBox" runat="server" Text='<%# Bind("Post") %>' />
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
                <td>&nbsp;</td>
                <td>
                    <asp:TextBox ID="SubjectTextBox" runat="server" Text='<%# Bind("Subject") %>' />
                </td>
                <td>
                    <asp:TextBox ID="PostTextBox" runat="server" Text='<%# Bind("Post") %>' />
                </td>
            </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                </td>
                <td>
                    <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                </td>
                <td>
                    <asp:Label ID="SubjectLabel" runat="server" Text='<%# Eval("Subject") %>' />
                </td>
                <td>
                    <asp:Label ID="PostLabel" runat="server" Text='<%# Eval("Post") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                            <tr runat="server" style="">
                                <th runat="server"></th>
                                <th runat="server">ID</th>
                                <th runat="server">Subject</th>
                                <th runat="server">Post</th>
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
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                </td>
                <td>
                    <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                </td>
                <td>
                    <asp:Label ID="SubjectLabel" runat="server" Text='<%# Eval("Subject") %>' />
                </td>
                <td>
                    <asp:Label ID="PostLabel" runat="server" Text='<%# Eval("Post") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SQLPostVerwijderenLV" runat="server" ConnectionString="<%$ ConnectionStrings:StudiehulpDBConnectionString %>" DeleteCommand="DELETE FROM [tblPost] WHERE [ID] = @ID" InsertCommand="INSERT INTO [tblPost] ([Subject], [Post]) VALUES (@Subject, @Post)" SelectCommand="SELECT [ID], [Subject], [Post] FROM [tblPost]" UpdateCommand="UPDATE [tblPost] SET [Subject] = @Subject, [Post] = @Post WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Subject" Type="String" />
            <asp:Parameter Name="Post" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Subject" Type="String" />
            <asp:Parameter Name="Post" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>
