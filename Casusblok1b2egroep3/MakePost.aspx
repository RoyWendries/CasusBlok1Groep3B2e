<%@ Page Language="C#" MasterPageFile="~/ZuydStudieHulpNavBar.Master" AutoEventWireup="true" CodeBehind="MakePost.aspx.cs" Inherits="Casusblok1b2egroep3.MakePost" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceholder1" runat="server">
    <asp:SqlDataSource ID="SQLMakePostDV" runat="server" ConnectionString="<%$ ConnectionStrings:StudiehulpDBDaVinci %>" DeleteCommand="DELETE FROM [tblPost] WHERE [ID] = @ID" InsertCommand="INSERT INTO [tblPost] ([Subject], [Post], [User], [CreateDate]) VALUES (@Subject, @Post, @UserIDCookie, GETDATE())" SelectCommand="SELECT [Subject], [Post], [ID], [User] FROM [tblPost]" UpdateCommand="UPDATE [tblPost] SET [Subject] = @Subject, [Post] = @Post, [User] = @User WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Subject" Type="String" />
            <asp:Parameter Name="Post" Type="String" />
            <asp:CookieParameter CookieName="UserID" Name="UserIDCookie" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Subject" Type="String" />
            <asp:Parameter Name="Post" Type="String" />
            <asp:Parameter Name="User" Type="Int32" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="ID" DataSourceID="SQLMakePostDV" DefaultMode="Insert" Height="50px" OnPageIndexChanging="DetailsView1_PageIndexChanging" Width="125px">
        <Fields>
            <asp:BoundField DataField="Subject" HeaderText="Subject" SortExpression="Subject" />
            <asp:BoundField DataField="Post" HeaderText="Post" SortExpression="Post" />
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="User" HeaderText="User" SortExpression="User" Visible="False" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    <br />
</asp:Content>
