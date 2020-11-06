<%@ Page Language="C#" MasterPageFile="~/ZuydStudieHulpNavBar.Master" AutoEventWireup="true" CodeBehind="MakeComment.aspx.cs" Inherits="Casusblok1b2egroep3.Comment" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceholder1" runat="server">

    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="ID" DataSourceID="SQLMakeCommentDV" DefaultMode="Insert" Height="50px" Width="125px">
        <Fields>
            <asp:BoundField DataField="User" HeaderText="User" SortExpression="User" Visible="False" />
            <asp:BoundField DataField="Comment" HeaderText="Comment" SortExpression="Comment" />
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" Visible="False" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SQLMakeCommentDV" runat="server" ConnectionString="<%$ ConnectionStrings:StudiehulpDBConnectionString %>" DeleteCommand="DELETE FROM [tblComment] WHERE [ID] = @ID" InsertCommand="INSERT INTO [tblComment] ([User], [Comment], [CreateDate]) VALUES (@User, @Comment, GETDATE())" SelectCommand="SELECT [User], [Comment], [ID] FROM [tblComment]" UpdateCommand="UPDATE [tblComment] SET [User] = @User, [Comment] = @Comment WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:CookieParameter CookieName="UserID" Name="User" />
            <asp:Parameter Name="Comment" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="User" Type="Int32" />
            <asp:Parameter Name="Comment" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StudiehulpDBConnectionString %>" SelectCommand="SELECT ID + 1 AS ID FROM tblComment ORDER BY ID DESC"></asp:SqlDataSource>
    <asp:Label ID="LblZeker" runat="server" Text="Als u het zeker weet Click dan hier op insert."></asp:Label>
    <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" DataKeyNames="PostID,CommentID" DataSourceID="SqlDataSource2" DefaultMode="Insert" Height="50px" Width="125px">
        <Fields>
            <asp:BoundField DataField="PostID" HeaderText="PostID" ReadOnly="True" SortExpression="PostID" Visible="False" />
            <asp:BoundField DataField="CommentID" HeaderText="CommentID" ReadOnly="True" SortExpression="CommentID" Visible="False" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:StudiehulpDBConnectionString %>" DeleteCommand="DELETE FROM [tblPostComment] WHERE [PostID] = @PostID AND [CommentID] = @CommentID" InsertCommand="INSERT INTO [tblPostComment] ([PostID], [CommentID]) VALUES (@PostID, @CommentID)" SelectCommand="SELECT * FROM [tblPostComment]">
        <DeleteParameters>
            <asp:Parameter Name="PostID" Type="Int32" />
            <asp:Parameter Name="CommentID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:QueryStringParameter Name="PostID" QueryStringField="PostID" />
            <asp:ControlParameter Name="CommentID" ControlID="DropDownList2" />
        </InsertParameters>
    </asp:SqlDataSource>
    <div class="CommentIDList">
        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="ID" DataValueField="ID"></asp:DropDownList>
    </div>
</asp:Content>
