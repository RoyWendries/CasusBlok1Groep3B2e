<%@ Page Language="C#" MasterPageFile="~/ZuydStudieHulpNavBar.Master" AutoEventWireup="true" CodeBehind="MakeReaction.aspx.cs" Inherits="Casusblok1b2egroep3.MakeReaction" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceholder1" runat="server">

    <asp:DropDownList ID="DDLSelectComment" runat="server" AutoPostBack="True" DataSourceID="SQLMakeReactionDDLSelectComment" DataTextField="Comment" DataValueField="ID">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SQLMakeReactionDDLSelectComment" runat="server" ConnectionString="<%$ ConnectionStrings:StudiehulpDBConnectionString %>" SelectCommand="SELECT tblComment.Comment, tblComment.ID FROM tblComment INNER JOIN tblPostComment ON tblComment.ID = tblPostComment.CommentID INNER JOIN tblPost ON tblPostComment.PostID = tblPost.ID WHERE (tblPost.ID = @ID)">
        <SelectParameters>
            <asp:QueryStringParameter Name="ID" QueryStringField="PostID" />
        </SelectParameters>
    </asp:SqlDataSource>

    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="ID" DataSourceID="SQLMakeReactionDV" DefaultMode="Insert" Height="50px" Width="125px">
        <Fields>
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" Visible="False" />
            <asp:BoundField DataField="User" HeaderText="User" SortExpression="User" Visible="False" />
            <asp:BoundField DataField="Reaction" HeaderText="Reaction" SortExpression="Reaction" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SQLMakeReactionDV" runat="server" ConnectionString="<%$ ConnectionStrings:StudiehulpDBConnectionString %>" DeleteCommand="DELETE FROM [tblReaction] WHERE [ID] = @ID" InsertCommand="INSERT INTO [tblReaction] ([User], [Reaction], [CreateDate]) VALUES (@User, @Reaction, GETDATE())" SelectCommand="SELECT [ID], [User], [Reaction] FROM [tblReaction]" UpdateCommand="UPDATE [tblReaction] SET [User] = @User, [Reaction] = @Reaction WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:CookieParameter CookieName="UserID" Name="User" />
            <asp:Parameter Name="Reaction" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="User" Type="Int32" />
            <asp:Parameter Name="Reaction" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StudiehulpDBConnectionString %>" SelectCommand="SELECT ID + 1 AS ID FROM tblReaction ORDER BY ID DESC"></asp:SqlDataSource>
    <asp:Label ID="LblZeker" runat="server" Text="Als u het zeker weet Click dan hier op insert."></asp:Label>
    <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" DataKeyNames="CommentID,ReactionID" DataSourceID="SqlDataSource2" DefaultMode="Insert" Height="50px" Width="125px">
        <Fields>
            <asp:BoundField DataField="CommentID" HeaderText="CommentID" ReadOnly="True" SortExpression="CommentID" Visible="False" />
            <asp:BoundField DataField="ReactionID" HeaderText="ReactionID" ReadOnly="True" SortExpression="ReactionID" Visible="False" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:StudiehulpDBConnectionString %>" DeleteCommand="DELETE FROM [tblCommentReaction] WHERE [CommentID] = @CommentID AND [ReactionID] = @ReactionID" InsertCommand="INSERT INTO [tblCommentReaction] ([CommentID], [ReactionID]) VALUES (@CommentID, @ReactionID)" SelectCommand="SELECT * FROM [tblCommentReaction]">
        <DeleteParameters>
            <asp:Parameter Name="CommentID" Type="Int32" />
            <asp:Parameter Name="ReactionID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter Name="CommentID" ControlID="DDLSelectComment" />
            <asp:ControlParameter Name="ReactionID" ControlID="DropDownList2" />
        </InsertParameters>
    </asp:SqlDataSource>
    <div class="CommentIDList">
        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="ID" DataValueField="ID"></asp:DropDownList>
    </div>
</asp:Content>
