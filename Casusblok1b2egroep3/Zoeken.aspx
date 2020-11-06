<%@ Page Language="C#" MasterPageFile="~/ZuydStudieHulpMain.Master" Title="Zoeken" AutoEventWireup="true" CodeBehind="Zoeken.aspx.cs" Inherits="Casusblok1b2egroep3.Zoeken" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="ChildContent1" runat="server">
    <div class="container">
        <div class="text-center">
            <asp:ListView ID="ListView1" runat="server" DataSourceID="SQLZoekenLVTitels" DataKeyNames="ID">
                <AlternatingItemTemplate>
                    <span style="">
                        <asp:Label ID="IDLabel" runat="server" Visible="false" Text='<%# Eval("ID") %>' />
                        <br />
                        Subject:
                    <asp:HyperLink ID="hyperlink" runat="server" NavigateUrl='<%# "~/Post.aspx?ID=" + Eval("ID") %>'>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Subject") %>' />
                    </asp:HyperLink><br />HighFive: <asp:Label ID="HighFiveLabel" runat="server" Text='<%# Eval("HighFive") %>' />
                        <br />
                        <br />
                    </span>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <span style="">ID: <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
                        <br />
                        Subject: <asp:TextBox ID="SubjectTextBox" runat="server" Text='<%# Bind("Subject") %>' />
                        <br />
                        HighFive: <asp:TextBox ID="HighFiveTextBox" runat="server" Text='<%# Bind("HighFive") %>' />
                        <br />
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                        <br />
                        <br />
                    </span>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <span>No data was returned.</span></EmptyDataTemplate><InsertItemTemplate>
                    <span style="">Subject: <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Subject") %>' />
                        <br />
                        HighFive: <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("HighFive") %>' />
                        <br />
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                        <asp:Button ID="Button1" runat="server" CommandName="Cancel" Text="Clear" />
                        <br />
                        <br />
                    </span>
                </InsertItemTemplate>
                <ItemTemplate>
                    <span style="">
                        <asp:Label ID="Label2" runat="server" Visible="false" Text='<%# Eval("ID") %>' />
                        <br />
                        Subject: <asp:HyperLink ID="hyperlink1" runat="server" NavigateUrl='<%# "~/Post.aspx?ID=" + Eval("ID") %>'>
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Subject") %>' />
                        </asp:HyperLink><br />HighFive: <asp:Label ID="Label4" runat="server" Text='<%# Eval("HighFive") %>' />
                        <br />
                        <br />
                    </span>
                </ItemTemplate>
                <LayoutTemplate>
                    <div id="itemPlaceholderContainer" runat="server" style="">
                        <span runat="server" id="itemPlaceholder" />
                    </div>
                    <div style="">
                        <asp:DataPager ID="DataPager1" runat="server">
                            <Fields>
                                <asp:NextPreviousPagerField ShowFirstPageButton="true" ShowLastPageButton="true" FirstPageText="Eerste" LastPageText="Laatste" NextPageText="Volgende" PreviousPageText="Vorige" ButtonType="Button" ButtonCssClass="btn btn-danger" />
                            </Fields>
                        </asp:DataPager>
                    </div>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <span style="">
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("ID") %>' />
                        <br />

                        <asp:Label ID="SubjectLabel" runat="server" Text='<%# Eval("Subject") %>' />
                        <br />
                        HighFive: <asp:Label ID="Label6" runat="server" Text='<%# Eval("HighFive") %>' />
                        <br />
                        <br />
                    </span>
                </SelectedItemTemplate>
            </asp:ListView>
        </div>
        <asp:SqlDataSource ID="SQLZoekenLVTitels" runat="server" ConnectionString="<%$ ConnectionStrings:StudiehulpDBConnectionString %>" SelectCommand="SELECT [ID], [Subject], [HighFive] FROM [tblPost] WHERE (tblPost.Post LIKE '%' + @KeyWord + '%') OR (tblPost.Subject LIKE '%' + @KeyWord + '%') ORDER BY [CreateDate]"><SelectParameters><asp:QueryStringParameter Name="KeyWord" QueryStringField="q" /></SelectParameters></asp:SqlDataSource>
        <br />
    </div>
</asp:Content>
