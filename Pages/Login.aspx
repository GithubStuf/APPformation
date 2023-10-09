<%@ Page Title="" Language="C#" MasterPageFile="~/PageMaitreLogin.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Login_Eniem.Pages.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Content/LoginStyle.css" rel="stylesheet" />
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
        <div class="login-page">
            <div class="form">
                <div class="login-form">
                    <asp:RequiredFieldValidator ID="pseu" CssClass="pseu" runat="server" ErrorMessage="*" ControlToValidate="pseudo" ForeColor="Red" ValidationGroup="val" Width="100%"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="pseudo" CssClass="pseudo" runat="server" placeholder="Pseudo" />
                    <asp:RequiredFieldValidator ID="pass" CssClass="pass" runat="server" ErrorMessage="*" ControlToValidate="password" ForeColor="Red" ValidationGroup="val" Width="100%"></asp:RequiredFieldValidator><br />
                    <asp:TextBox ID="password" CssClass="password" runat="server" TextMode="Password" placeholder="Mot De Passe" />
                    <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="custom-button" OnClick="btnLogin_Click" ValidationGroup="val"></asp:Button>
                </div>
            </div>
        </div>
        <div class="message">
            <asp:Label runat="server" ID="ETAT"></asp:Label>

        </div>

         


</asp:Content>
