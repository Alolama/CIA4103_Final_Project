<%@ Page Title="" Language="C#" MasterPageFile="~/Template.master" AutoEventWireup="true" CodeFile="SearchBook.aspx.cs" Inherits="SearchBook" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" Runat="Server">
    <h1>Search for Books by Title<asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    </h1>
    <p>
        Book Title:
        <asp:TextBox ID="txtTitle" runat="server" Width="363px"></asp:TextBox>
&nbsp;<asp:Button ID="btnShow" runat="server" Text="Show Books" OnClick="btnShow_Click" />
    </p>
    <p>
        <asp:DataList ID="dlBooks" runat="server" Width="100%" RepeatDirection="Vertical">
            <ItemTemplate>
                <table style="width:100%;">
                    <tr>
                        <td colspan="2" class="title">
                            <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("Title") %>'></asp:Literal>
                        </td>
                    </tr>
                    <tr>
                        <td style="width:100px">
                            <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl='<%# "images/"+Eval("coverphoto") %>' Width="90px" />
                        </td>
                        <td><strong>Author:</strong>
                            <asp:Literal ID="Literal2" runat="server" Text='<%# Eval("Author") %>'></asp:Literal>
                            <br />
                            <strong>Year:</strong>
                            <asp:Literal ID="Literal3" runat="server" Text='<%# Eval("Year") %>'></asp:Literal>
                            <br />

                             
                            <strong>votes</strong>(<asp:Literal ID="Literal5" runat="server" Text='<%# Eval("votes") %>'></asp:Literal>)
                            <br />
                            <br />
                            <asp:HyperLink ID="HyperLink4" runat="server" CssClass="more" NavigateUrl='<%# "bookdetails.aspx?id=" + Eval("BookID") %>'>More Details</asp:HyperLink>
                            <br />
                            
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </p>
</asp:Content>

