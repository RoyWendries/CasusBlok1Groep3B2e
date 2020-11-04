<%@ Page Language="C#" MasterPageFile="~/ZuydStudieHulpMain.Master" Title="Home" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Casusblok1b2egroep3.Home" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="ChildContent1" runat="server">
    <div>
        <div class="text-center">
            <asp:ListView ID="ListView1" runat="server" DataSourceID="SQLHomeLVTitels" DataKeyNames="ID">
                <AlternatingItemTemplate>
                    <span style="">
                    <asp:Label ID="IDLabel" runat="server" visible="false" Text='<%# Eval("ID") %>' />
                        <br />
                        Subject:
                    <asp:HyperLink ID="hyperlink" runat="server" NavigateUrl='<%# "~/Post.aspx?ID=" + Eval("ID") %>'>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Subject") %>' />
                        </asp:HyperLink><br />
                        HighFive:
                        <asp:Label ID="HighFiveLabel" runat="server" Text='<%# Eval("HighFive") %>' />
                        <br />
                        <br />
                    </span>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <span style="">ID:
                        <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
                        <br />
                        Subject:
                        <asp:TextBox ID="SubjectTextBox" runat="server" Text='<%# Bind("Subject") %>' />
                        <br />
                        HighFive:
                        <asp:TextBox ID="HighFiveTextBox" runat="server" Text='<%# Bind("HighFive") %>' />
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
                    <span style="">Subject:
                        <asp:TextBox ID="SubjectTextBox" runat="server" Text='<%# Bind("Subject") %>' />
                        <br />
                        HighFive:
                        <asp:TextBox ID="HighFiveTextBox" runat="server" Text='<%# Bind("HighFive") %>' />
                        <br />
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                        <br />
                        <br />
                    </span>
                </InsertItemTemplate>
                <ItemTemplate>
                    <span style="">
                        <asp:Label ID="IDLabel" runat="server" visible="false" Text='<%# Eval("ID") %>' />
                        <br />
                        Subject:
                        <asp:HyperLink ID="hyperlink" runat="server" NavigateUrl='<%# "~/Post.aspx?ID=" + Eval("ID") %>'>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Subject") %>' />
                        </asp:HyperLink><br />
                        HighFive:
                        <asp:Label ID="HighFiveLabel" runat="server" Text='<%# Eval("HighFive") %>' />
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
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                            </Fields>
                        </asp:DataPager>
                    </div>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <span style="">
                        <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                        <br />
                        
                        <asp:Label ID="SubjectLabel" runat="server" Text='<%# Eval("Subject") %>' />
                        <br />
                        HighFive:
                        <asp:Label ID="HighFiveLabel" runat="server" Text='<%# Eval("HighFive") %>' />
                        <br />
                        <br />
                    </span>
                </SelectedItemTemplate>
            </asp:ListView>
        </div>
        <asp:SqlDataSource ID="SQLHomeLVTitels" runat="server" ConnectionString="<%$ ConnectionStrings:StudiehulpDBDaVinci %>" SelectCommand="SELECT [ID], [Subject], [HighFive] FROM [tblPost] ORDER BY [CreateDate]" OnSelecting="SQLHomeLVTitels_Selecting"></asp:SqlDataSource>
        <br />
    </div>
</asp:Content>
