<%@ Page Language="C#" MasterPageFile="~/Template.master" AutoEventWireup="true"CodeFile="Registration.aspx.cs" Inherits="Registration" %>


    <asp:Content ID="Content2" ContentPlaceHolderID="Content" Runat="Server">




        <div>  
            <table class="auto-style1">  
                <tr>  
                    <td>User name </td>  
                    <td>  
                        <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>  
                    </td>  
               </tr>  
                <tr>  
                    <td>First name </td>  
                    <td>  
                        <asp:TextBox ID="txtFirstname" runat="server"></asp:TextBox>  
                    </td>  
               </tr>  
                 <tr>  
                    <td>Last name </td>  
                    <td>  
                        <asp:TextBox ID="txtLastname" runat="server"></asp:TextBox>  
                    </td>  
               </tr> 
                 <tr>  
                    <td>Email </td>  
                    <td>  
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>  
                    </td>  
               </tr>  
                <tr>  
                    <td>Password</td>  
                     <td> <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox></td>  
                </tr>  
                 
                <tr>  
                    <td class="auto-style1">City</td>  
                    <td class="auto-style1">  
                        <asp:DropDownList ID="ddlCity" runat="server">  
                            <asp:ListItem Text="Select City" Value="select" Selected="True"></asp:ListItem>  
                            <asp:ListItem Text="Dubai" Value="Bangalore"></asp:ListItem>  
                            <asp:ListItem Text="Sharjah" Value="Mysore"></asp:ListItem>  
                            <asp:ListItem Text="Abu Dhabi" Value="hubli"></asp:ListItem>  
                        </asp:DropDownList>  
                    </td>  
                </tr>  
                <tr>  
                    <td>Gender</td>  
                    <td>  
                        <asp:RadioButtonList ID="rdoGender" runat="server">  
                            <asp:ListItem>M</asp:ListItem>  
                            <asp:ListItem>F</asp:ListItem>  
                        </asp:RadioButtonList>  
                    </td>  
               </tr>  
               
                <tr>  
                    <td>  
                        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />  
                    </td>  
                    <td>  
                        
                        <asp:Label ID="lblException" runat="server"></asp:Label>
                        
                    </td>  
                </tr>  
            </table>  
        </div>  
        </asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }
    </style>
</asp:Content>
