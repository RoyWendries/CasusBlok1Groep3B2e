<%@ Page Language="C#" MasterPageFile="~/ZuydStudieHulpMain.Master" Title="Post" AutoEventWireup="true" CodeBehind="Post.aspx.cs" Inherits="Casusblok1b2egroep3.Post" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="ChildContent1" runat="server">
    <div class="text-center">
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SQLPostLV">
            <AlternatingItemTemplate>
                <span style="">Name:
                <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                    <br />
                    Subject:
                <asp:Label ID="SubjectLabel" runat="server" Text='<%# Eval("Subject") %>' />
                    <br />
                    Post:
                <asp:Label ID="PostLabel" runat="server" Text='<%# Eval("Post") %>' />
                    <br />
                    HighFives:
                <asp:Label ID="HighFiveLabel" runat="server" Text='<%# Eval("HighFive") %>' />
                    <br />
                    Link:
                <asp:Label ID="LinkLabel" runat="server" Text='<%# Eval("Link") %>' />
                    <br />
                    <br />
                </span>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <span style="">Name:
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
                    <br />
                    <br />
                </span>
            </InsertItemTemplate>
            <ItemTemplate>
                <span style="">Name:
                <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                    <br />
                    Subject:
                <asp:Label ID="SubjectLabel" runat="server" Text='<%# Eval("Subject") %>' />
                    <br />
                    Post:
                <asp:Label ID="PostLabel" runat="server" Text='<%# Eval("Post") %>' />
                    <br />
                    HighFives:
                <asp:Label ID="HighFiveLabel" runat="server" Text='<%# Eval("HighFive") %>' />
                    <br />
                    Link:
                <asp:Label ID="LinkLabel" runat="server" Text='<%# Eval("Link") %>' />
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
                    <br />
                </span>
            </SelectedItemTemplate>
        </asp:ListView>
    </div>
    <asp:SqlDataSource ID="SQLPostLV" runat="server" ConnectionString="<%$ ConnectionStrings:StudiehulpDBDaVinci %>" SelectCommand="SELECT tblUser.Name, tblPost.Subject, tblPost.Post, tblPost.HighFive, tblPost.Link FROM tblUser INNER JOIN tblPost ON tblUser.ID = tblPost.[User] WHERE (tblPost.ID = @ID)">
        <SelectParameters>
            <asp:QueryStringParameter Name="ID" QueryStringField="ID" />
        </SelectParameters>
    </asp:SqlDataSource>
    <div class="text-center">
        <asp:ListView ID="ListView2" runat="server" DataSourceID="SQLPostLVReacties">
            <AlternatingItemTemplate>
                <span style="">Name:
                <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                    <br />
                    Comment:
                <asp:Label ID="CommentLabel" runat="server" Text='<%# Eval("Comment") %>' />
                    <br />
                    HighFives:
                <asp:Label ID="HighFiveLabel" runat="server" Text='<%# Eval("HighFive") %>' />
                    <br />
                    Reactie:
                <asp:Label ID="SubCommentLabel" runat="server" Text='<%# Eval("SubComment") %>' />
                    <br />
                    HighFives:
                <asp:Label ID="Expr1Label" runat="server" Text='<%# Eval("Expr1") %>' />
                    <br />
                    <br />
                </span>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <span style="">Name:
                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                    <br />
                    Comment:
                <asp:TextBox ID="CommentTextBox" runat="server" Text='<%# Bind("Comment") %>' />
                    <br />
                    HighFive:
                <asp:TextBox ID="HighFiveTextBox" runat="server" Text='<%# Bind("HighFive") %>' />
                    <br />
                    SubComment:
                <asp:TextBox ID="SubCommentTextBox" runat="server" Text='<%# Bind("SubComment") %>' />
                    <br />
                    Expr1:
                <asp:TextBox ID="Expr1TextBox" runat="server" Text='<%# Bind("Expr1") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    <br />
                    <br />
                </span>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <span></span>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <span style="">Name:
                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                    <br />
                    Comment:
                <asp:TextBox ID="CommentTextBox" runat="server" Text='<%# Bind("Comment") %>' />
                    <br />
                    HighFive:
                <asp:TextBox ID="HighFiveTextBox" runat="server" Text='<%# Bind("HighFive") %>' />
                    <br />
                    SubComment:
                <asp:TextBox ID="SubCommentTextBox" runat="server" Text='<%# Bind("SubComment") %>' />
                    <br />
                    Expr1:
                <asp:TextBox ID="Expr1TextBox" runat="server" Text='<%# Bind("Expr1") %>' />
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
                    Reactie:
                <asp:Label ID="CommentLabel" runat="server" Text='<%# Eval("Comment") %>' />
                    <br />
                    HighFives:
                <asp:Label ID="HighFiveLabel" runat="server" Text='<%# Eval("HighFive") %>' />
                    <br />
                    <br />
                    <br />
                    Reactie:
                <asp:Label ID="SubCommentLabel" runat="server" Text='<%# Eval("SubComment") %>' />
                    <br />
                    HighFives:
                <asp:Label ID="Expr1Label" runat="server" Text='<%# Eval("Expr1") %>' />
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
                <span style="">:
                <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                    <br />
                    Comment:
                <asp:Label ID="CommentLabel" runat="server" Text='<%# Eval("Comment") %>' />
                    <br />
                    HighFives:
                <asp:Label ID="HighFiveLabel" runat="server" Text='<%# Eval("HighFive") %>' />
                    <br />
                    Reactie:
                <asp:Label ID="SubCommentLabel" runat="server" Text='<%# Eval("SubComment") %>' />
                    <br />
                    HighFives:
                <asp:Label ID="Expr1Label" runat="server" Text='<%# Eval("Expr1") %>' />
                    <br />
                    <br />
                </span>
            </SelectedItemTemplate>
        </asp:ListView>
    </div>
    <asp:SqlDataSource ID="SQLPostLVReacties" runat="server" ConnectionString="<%$ ConnectionStrings:StudiehulpDBDaVinci %>" SelectCommand="SELECT tblUser.Name, tblComment.Comment, tblComment.HighFive, tblSubComment.SubComment, tblSubComment.HighFive AS Expr1 FROM tblComment INNER JOIN tblUser ON tblComment.[User] = tblUser.ID INNER JOIN tblSubComment ON tblComment.ID = tblSubComment.Comment WHERE (tblComment.Post = @ID)">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="" Name="ID" QueryStringField="ID" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
