<%@ Page Language="C#" MasterPageFile="~/ZuydStudieHulpMain.Master" Title="Post" AutoEventWireup="true" CodeBehind="Post.aspx.cs" Inherits="Casusblok1b2egroep3.Post" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="ChildContent1" runat="server">
    <div class="text-center">
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SQLPostLV">
            <AlternatingItemTemplate>
                <td runat="server" style="">Name:
                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                    <br />
                    Subject:
                    <asp:Label ID="SubjectLabel" runat="server" Text='<%# Eval("Subject") %>' />
                    <br />
                    Post:
                    <asp:Label ID="PostLabel" runat="server" Text='<%# Eval("Post") %>' />
                    <br />
                    HighFive:
                    <asp:Label ID="HighFiveLabel" runat="server" Text='<%# Eval("HighFive") %>' />
                    <br />
                    Link:
                    <asp:Label ID="LinkLabel" runat="server" Text='<%# Eval("Link") %>' />
                    <br />
                </td>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <td runat="server" style="">Name:
                    <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                    <br />
                    Subject:
                    <asp:TextBox ID="SubjectTextBox" runat="server" Text='<%# Bind("Subject") %>' />
                    <br />
                    Post:
                    <asp:TextBox ID="PostTextBox" runat="server" Text='<%# Bind("Post") %>' />
                    <br />
                    HighFive:
                    <asp:TextBox ID="HighFiveTextBox" runat="server" Text='<%# Bind("HighFive") %>' />
                    <br />
                    Link:
                    <asp:TextBox ID="LinkTextBox" runat="server" Text='<%# Bind("Link") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                </td>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table style="">
                    <tr>
                        <td></td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <td runat="server" style="">Name:
                    <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                    <br />
                    Subject:
                    <asp:TextBox ID="SubjectTextBox" runat="server" Text='<%# Bind("Subject") %>' />
                    <br />
                    Post:
                    <asp:TextBox ID="PostTextBox" runat="server" Text='<%# Bind("Post") %>' />
                    <br />
                    HighFive:
                    <asp:TextBox ID="HighFiveTextBox" runat="server" Text='<%# Bind("HighFive") %>' />
                    <br />
                    Link:
                    <asp:TextBox ID="LinkTextBox" runat="server" Text='<%# Bind("Link") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                </td>
            </InsertItemTemplate>
            <ItemTemplate>
                <td runat="server" style="">Name:
                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                    <br />
                    Subject:
                    <asp:Label ID="SubjectLabel" runat="server" Text='<%# Eval("Subject") %>' />
                    <br />
                    Post:
                    <asp:Label ID="PostLabel" runat="server" Text='<%# Eval("Post") %>' />
                    <br />
                    HighFive:
                    <asp:Label ID="HighFiveLabel" runat="server" Text='<%# Eval("HighFive") %>' />
                    <br />
                    Link:
                    <asp:Label ID="LinkLabel" runat="server" Text='<%# Eval("Link") %>' />
                    <br />
                </td>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server" border="0" style="">
                    <tr id="itemPlaceholderContainer" runat="server">
                        <td id="itemPlaceholder" runat="server"></td>
                    </tr>
                </table>
                <div style="">
                </div>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <td runat="server" style="">Name:
                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                    <br />
                    Subject:
                    <asp:Label ID="SubjectLabel" runat="server" Text='<%# Eval("Subject") %>' />
                    <br />
                    Post:
                    <asp:Label ID="PostLabel" runat="server" Text='<%# Eval("Post") %>' />
                    <br />
                    HighFive:
                    <asp:Label ID="HighFiveLabel" runat="server" Text='<%# Eval("HighFive") %>' />
                    <br />
                    Link:
                    <asp:Label ID="LinkLabel" runat="server" Text='<%# Eval("Link") %>' />
                    <br />
                </td>
            </SelectedItemTemplate>
        </asp:ListView>
    </div>
        <asp:SqlDataSource ID="SQLPostLV" runat="server" ConnectionString="<%$ ConnectionStrings:StudiehulpDBDaVinci %>" SelectCommand="SELECT tblUser.Name, tblPost.Subject, tblPost.Post, tblPost.HighFive, tblPost.Link FROM tblPost INNER JOIN tblUser ON tblPost.[User] = tblUser.ID WHERE (tblPost.ID = @ID)">
            <SelectParameters>
                <asp:QueryStringParameter Name="ID" QueryStringField="ID" />
            </SelectParameters>
        </asp:SqlDataSource>
    <div class="text-center">
        <asp:ListView ID="ListView2" runat="server" DataSourceID="SQLPostLVComment">
            <AlternatingItemTemplate>
                <td runat="server" style="">Comment:
                    <asp:Label ID="CommentLabel" runat="server" Text='<%# Eval("Comment") %>' />
                    <br />
                    HighFive:
                    <asp:Label ID="HighFiveLabel" runat="server" Text='<%# Eval("HighFive") %>' />
                    <br />
                    Reaction:
                    <asp:Label ID="ReactionLabel" runat="server" Text='<%# Eval("Reaction") %>' />
                    <br />
                    Highfives:
                    <asp:Label ID="HighfivesLabel" runat="server" Text='<%# Eval("Highfives") %>' />
                    <br />
                </td>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <td runat="server" style="">Comment:
                    <asp:TextBox ID="CommentTextBox" runat="server" Text='<%# Bind("Comment") %>' />
                    <br />
                    HighFive:
                    <asp:TextBox ID="HighFiveTextBox" runat="server" Text='<%# Bind("HighFive") %>' />
                    <br />
                    Reaction:
                    <asp:TextBox ID="ReactionTextBox" runat="server" Text='<%# Bind("Reaction") %>' />
                    <br />
                    Highfives:
                    <asp:TextBox ID="HighfivesTextBox" runat="server" Text='<%# Bind("Highfives") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                </td>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table style="">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <td runat="server" style="">Comment:
                    <asp:TextBox ID="CommentTextBox" runat="server" Text='<%# Bind("Comment") %>' />
                    <br />
                    HighFive:
                    <asp:TextBox ID="HighFiveTextBox" runat="server" Text='<%# Bind("HighFive") %>' />
                    <br />
                    Reaction:
                    <asp:TextBox ID="ReactionTextBox" runat="server" Text='<%# Bind("Reaction") %>' />
                    <br />
                    Highfives:
                    <asp:TextBox ID="HighfivesTextBox" runat="server" Text='<%# Bind("Highfives") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                </td>
            </InsertItemTemplate>
            <ItemTemplate>
                <td runat="server" style="">Comment:
                    <asp:Label ID="CommentLabel" runat="server" Text='<%# Eval("Comment") %>' />
                    <br />
                    HighFive:
                    <asp:Label ID="HighFiveLabel" runat="server" Text='<%# Eval("HighFive") %>' />
                    <br />
                    Reaction:
                    <asp:Label ID="ReactionLabel" runat="server" Text='<%# Eval("Reaction") %>' />
                    <br />
                    Highfives:
                    <asp:Label ID="HighfivesLabel" runat="server" Text='<%# Eval("Highfives") %>' />
                    <br />
                </td>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server" border="0" style="">
                    <tr id="itemPlaceholderContainer" runat="server">
                        <td id="itemPlaceholder" runat="server"></td>
                    </tr>
                </table>
                <div style="">
                </div>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <td runat="server" style="">Comment:
                    <asp:Label ID="CommentLabel" runat="server" Text='<%# Eval("Comment") %>' />
                    <br />
                    HighFive:
                    <asp:Label ID="HighFiveLabel" runat="server" Text='<%# Eval("HighFive") %>' />
                    <br />
                    Reaction:
                    <asp:Label ID="ReactionLabel" runat="server" Text='<%# Eval("Reaction") %>' />
                    <br />
                    Highfives:
                    <asp:Label ID="HighfivesLabel" runat="server" Text='<%# Eval("Highfives") %>' />
                    <br />
                </td>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SQLPostLVComment" runat="server" ConnectionString="<%$ ConnectionStrings:StudiehulpDBDaVinci %>" SelectCommand="SELECT tblComment.Comment, tblComment.HighFive, tblReaction.Reaction, tblReaction.HighFive AS Highfives FROM tblPost FULL OUTER JOIN tblPostComment ON tblPost.ID = tblPostComment.PostID FULL OUTER JOIN tblComment ON tblPostComment.CommentID = tblComment.ID FULL OUTER JOIN tblCommentReaction ON tblComment.ID = tblCommentReaction.CommentID FULL OUTER JOIN tblReaction ON tblCommentReaction.ReactionID = tblReaction.ID WHERE (tblPost.ID = @ID)">
            <SelectParameters>
                <asp:QueryStringParameter Name="ID" QueryStringField="ID" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    <div class="row mt-4 mb-4">
        <div class="col text-center">
            <asp:Button runat="server" class="cbtn btn btn-danger" ID="BtnComment" OnClick="BtnComment_Click" Text="Stuur een Comment" />
            <asp:Button runat="server" class="cbtn btn btn-danger" ID="BtnReaction" OnClick="BtnReaction_Click" Text="Stuur een Reactie op een Comment" />
        </div>
    </div>
    <br />

</asp:Content>
