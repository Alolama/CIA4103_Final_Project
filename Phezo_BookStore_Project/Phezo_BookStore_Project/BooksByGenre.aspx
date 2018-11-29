<%@ Page Title="" Language="C#" MasterPageFile="~/Template.master" AutoEventWireup="true" CodeFile="BooksByGenre.aspx.cs" Inherits="BooksByGenre" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            width: 392px;
        }
        .auto-style2 {
            height: 20px;
            width: 123px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" Runat="Server">
    <h1>Browse Books by Category<asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    </h1>
    <table class="auto-style3">
        <tr>
            <td class="auto-style4"> 
 Choose a category:<asp:DropDownList ID="ddlGenres" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
        </asp:DropDownList>
  
 
            </td>
            <td>Sort Result By:</td>
            <td> <asp:RadioButtonList ID="rdoSort" runat="server" RepeatDirection="Horizontal" AutoPostBack="True">
            <asp:ListItem Selected="True">Title</asp:ListItem>
            <asp:ListItem Value="avgRating">Rating</asp:ListItem>
        </asp:RadioButtonList> </td>
        </tr>
    </table>
      <p style="float:right;">&nbsp;</p> 
 
   
    <br />
        
        <asp:DataList ID="dlBooks" runat="server" Width="100%">
            <ItemTemplate>
                <table style="width:100%;">
                    <tr>
                        <td class="auto-style1 title" colspan="2">
                            <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("Title") %>'></asp:Literal>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl='<%# "images/thumb/" + Eval("coverphoto") %>' Width="100px" />
                        </td>
                        <td><strong>Author:</strong>
                            <asp:Literal ID="Literal2" runat="server" Text='<%# Eval("Author") %>'></asp:Literal>
                            <br />
                            <strong>Year:</strong>
                            <asp:Literal ID="Literal3" runat="server" Text='<%# Eval("Year") %>'></asp:Literal>
                            <br />
                            
                           
                            &nbsp;Votes (<asp:Literal ID="Literal5" runat="server" Text='<%# Eval("votes") %>'></asp:Literal>
                            )<br />
                            <br />
                            <asp:HyperLink ID="HyperLink4" runat="server" CssClass="more" NavigateUrl='<%# "bookdetails.aspx?id="+Eval("BookID") %>'>More Details...</asp:HyperLink>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
          
            <SeparatorTemplate>
                --------------------------------------------------------------------------------------------------
            </SeparatorTemplate>
          
        </asp:DataList>
        
    <p>
        &nbsp;</p>
</asp:Content>

