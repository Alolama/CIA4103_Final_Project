<%@ Page Language="C#" MasterPageFile="~/Template.master" AutoEventWireup="true"CodeFile="Login.aspx.cs" Inherits="Login" %>


    <asp:Content ID="Content2" ContentPlaceHolderID="Content" Runat="Server">
        <div>
            
            <br />

            <asp:Label ID="Label1" runat="server" Text="Login" Font-Bold="True" Font-Size="XX-Large"></asp:Label>
            <br />
            <br />
           <asp:Label ID="Label2" runat="server" Text="Username:"></asp:Label> &nbsp;  &nbsp;<asp:TextBox ID="txtUsername" runat="server" OnTextChanged="txtUsername_TextChanged"></asp:TextBox>
           &nbsp;&nbsp;
           <asp:Label ID="lblUserName" runat="server" ForeColor="Red" Visible="False"></asp:Label> <br />
           <asp:Label ID="Label3" runat="server" Text="Password:"></asp:Label>&nbsp; &nbsp; &nbsp;<asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
           &nbsp;&nbsp;
           <asp:Label ID="lblPassword" runat="server" ForeColor="Red" Visible="False"></asp:Label> <br />
            <br />
          <asp:Button ID="Button1" runat="server" Text="Login" Height="31px" Width="181px" OnClick="Button1_Click" />
           
        </div>
        
   </asp:Content>


